#include "mips.h"


FILE *f; // 输出文件位置
Register_ regs[REG_NUM];
Var varList = NULL;
int curReg = 0;
int spOffset = 0;
int curParam = 0;
int curArg = 0;
const int stackSize = 3000;
char* regName[] = {
	"$zero",
	"$at",
	"$v0","$v1",
	"$a0","$a1","$a2","$a3",
	"$t0","$t1","$t2","$t3","$t4","$t5","$t6","$t7",
	"$s0","$s1","$s2","$s3","$s4","$s5","$s6","$s7",
	"$t8","$t9",
	"$k0","$k1",
	"$gp",
	"$sp",
	"$fp",
	"$ra"
};


void printMips(char *fileName){
    
    if(fileName != NULL){
        f = fopen(fileName, "w");
    }else {
        f = fopen("output.ir", "w");
    }
    // f = stderr;
    fprintf(f,".data\n");
	fprintf(f,"_prompt: .asciiz \"Enter an integer:\"\n");
	fprintf(f,"_ret: .asciiz \"\\n\"\n");
	fprintf(f,".globl main\n");
	fprintf(f,".text\n");
	// FUNCTION read
	fprintf(f,"\nread:\n");
	fprintf(f,"\tli $v0, 4\n");
	fprintf(f,"\tla $a0, _prompt\n");
	fprintf(f,"\tsyscall\n");
	fprintf(f,"\tli $v0, 5\n");
	fprintf(f,"\tsyscall\n");
	fprintf(f,"\tjr $ra\n");
	// FUNCTION write
	fprintf(f,"\nwrite:\n");
	fprintf(f,"\tli $v0, 1\n");
	fprintf(f,"\tsyscall\n");
	fprintf(f,"\tli $v0, 4\n");
	fprintf(f,"\tla $a0, _ret\n");
	fprintf(f,"\tsyscall\n");
	fprintf(f,"\tmove $v0, $0\n");
	fprintf(f,"\tjr $ra\n\n");

    CodeList codes = code_head;
    initRegs();
    while (codes!=NULL)
    {
        printMipsCode(codes->code);
        if(codes->code->kind==IR_ARG&&(codes->next==NULL||codes->next->code->kind!=IR_ARG)){
            fprintf(f, "\tli $v1,%d\n\tsubu $sp, $sp, 4\n\tsw $v1, 0($sp)\n",curArg*4);
            curArg = 0;
        }
        codes = codes->next;
        
    }

    fclose(f);
}


void printMipsCode(InterCode code){
    if(code->kind == IR_LABEL){
        fprintf(f,"label%d:\n",code->u.op->u.label_no);
    }
    else if(code->kind == IR_FUNC){
        fprintf(f, "%s:\n\tsubu $sp, $sp, 4\n\tsw $fp, 0($sp)\n\tmove $fp, $sp\n\tsubu $sp, $sp, %d\n",code->u.func,stackSize);
        spOffset = 0;
        curParam = 0;
    }
    else if(code->kind == IR_ASSIGN){
        Operand left = code->u.assign.left;
        Operand right = code->u.assign.right;
        int x,y;
        if(code->u.assign.left != NULL){
            if(left->kind==OP_ADDRESS && right->kind!=OP_ADDRESS){
                // x := &y
                x = getReg(left);
                y = getReg(right);
                fprintf(f, "\tmove %s, %s\n", printReg(x), printReg(y));
                // TODO
            }else if(left->kind!=OP_ADDRESS && right->kind==OP_ADDRESS){
                // x := *y
                x = getReg(left);
                y = getReg(right);
                fprintf(f, "\tlw %s, 0(%s)\n", printReg(x), printReg(y));
            }else{
                if(right->kind==OP_CONSTANT){
                    // x := #y
                    x = getReg(left);
				    fprintf(f, "\tli %s, %d\n", printReg(x), right->u.val);
                }else{
                    // x:= := y
                    x = getReg(left);
                    y = getReg(right);
                    fprintf(f, "\tmove %s, %s\n", printReg(x), printReg(y));
                }
            }
        }
        swReg(x);
    }
    else if(code->kind == IR_CHANGE_ADDR){
        Operand left = code->u.assign.left;
        Operand right = code->u.assign.right;
        int x,y;
        // *x := y
        if(code->u.assign.left != NULL){
            if(right->kind==OP_CONSTANT){
                x = getReg(left);
				fprintf(f, "\tli $s3, %d\n\tsw $s3, 0(%s)\n", right->u.val, printReg(x));
            }else{
                x = getReg(left);
                y = getReg(right);
                fprintf(f, "\tsw %s, 0(%s)\n", printReg(y), printReg(x));
            }
        }
        swReg(x);
    }
    else if(code->kind == IR_PLUS || code->kind == IR_MINUS || code->kind == IR_MUL || code->kind == IR_DIV){
        if(code->u.binop.result != NULL){
            Operand result = code->u.binop.result;
            Operand leftOp = code->u.binop.op1;
            Operand rightOp = code->u.binop.op2;
            int x,y,z;
            if(leftOp->kind==OP_CONSTANT&&rightOp->kind!=OP_CONSTANT){
                // z := #x + y                
                x = getReg(result);
		        z = getReg(rightOp);
                fprintf(f,"\tli $s2, %d\n", leftOp->u.val);
                y = 18;
                // switch (code->kind)
                // {
                // case IR_PLUS:
                //     fprintf(f,"\taddi %s, %s, %d\n", printReg(x), printReg(y), leftOp->u.val);
                //     break;
                // case IR_MINUS:
                //     fprintf(f,"\taddi %s, %s, %d\n", printReg(x), printReg(y), leftOp->u.val);
                //     break;
                // default:
                //     break;
                // }
            }else if(leftOp->kind!=OP_CONSTANT&&rightOp->kind==OP_CONSTANT){
                // z := x + #y
                x = getReg(result);
		        y = getReg(leftOp);
                fprintf(f,"\tli $s2, %d\n", rightOp->u.val);
                z = 18;
                // switch (code->kind)
                // {
                // case IR_PLUS:
                //     fprintf(f,"\taddi %s, %s, %d\n", printReg(x), printReg(y), rightOp->u.val);
                //     break;
                // case IR_MINUS:
                //     fprintf(f,"\taddi %s, %s, %d\n", printReg(x), printReg(y), rightOp->u.val);
                //     break;
                // default:
                //     break;
                // }
            }else{
                // z := x + y
                x = getReg(result);
                y = getReg(leftOp);
                z = getReg(rightOp);
                // switch (code->kind)
                // {
                // case IR_PLUS:
                //     fprintf(f,"\tadd %s, %s, %s\n", printReg(x), printReg(y), printReg(z));
                //     break;
                // case IR_MINUS:
                //     fprintf(f,"\tsub %s, %s, %s\n", printReg(x), printReg(y), printReg(z));
                //     break;
                // case IR_DIV:
                //     fprintf(f,"\tdiv %s, %s\n\tmflo %s\n", printReg(x), printReg(y), printReg(z));
                //     break;
                // case IR_MUL:
                //     fprintf(f,"\tmul %s, %s, %s\n", printReg(x), printReg(y), printReg(z));
                //     break;
                // default:
                //     break;
                // }
            }
            switch (code->kind){
                case IR_PLUS:
                    fprintf(f,"\tadd %s, %s, %s\n", printReg(x), printReg(y), printReg(z));
                    break;
                case IR_MINUS:
                    fprintf(f,"\tsub %s, %s, %s\n", printReg(x), printReg(y), printReg(z));
                    break;
                case IR_DIV:
                    fprintf(f,"\tdiv %s, %s\n\tmflo %s\n", printReg(y), printReg(z), printReg(x));
                    break;
                case IR_MUL:
                    fprintf(f,"\tmul %s, %s, %s\n", printReg(x), printReg(y), printReg(z));
                    break;
                default:
                    break;
            }
            swReg(x);
        }
    }
    else if(code->kind == IR_GOTO){
        char *x = Operand_toString(code->u.op);
        fprintf(f, "\tj %s\n", x);
    }
    else if(code->kind == IR_IFGOTO){
        mipsIFGOTO(code);
    }
    else if(code->kind == IR_RETURN){
        mipsRETURN(code);
    }
    else if(code->kind == IR_DEC){
        mipsDEC(code);
    }
    else if(code->kind == IR_ARG){
        mipsARG(code);
    }
    else if(code->kind == IR_CALL){
        mipsCALL(code);
    }
    else if(code->kind == IR_PARAM){
        mipsPARAM(code);
    }
    else if(code->kind == IR_READ){
        fprintf(f,"\taddi $sp, $sp, -4\n");
        fprintf(f,"\tsw $ra, 0($sp)\n");
        int x = getReg(code->u.op);
        fprintf(f, "\tjal read\n\tmove %s, $v0\n", printReg(x));
        swReg(x);
        fprintf(f,"\tlw $ra, 0($sp)\n");
        fprintf(f,"\taddi $sp, $sp, 4\n");
    }
    else if(code->kind == IR_WRITE){
        fprintf(f,"\taddi $sp, $sp, -4\n");
        fprintf(f,"\tsw $ra, 0($sp)\n");
        int x = getReg(code->u.op);
        if(code->u.op->kind==OP_VARIABLE || code->u.op->kind ==OP_TEMP){
            fprintf(f,"\tmove $a0, %s\n\tjal write\n", printReg(x));
        }else if(code->u.op->kind ==OP_ADDRESS || code->u.op->kind == OP_ARR_STRU){
            fprintf(f, "\tlw $a0, 0(%s)\n\tjal write\n", printReg(x));
        }
        swReg(x);
        fprintf(f,"\tlw $ra, 0($sp)\n");
        fprintf(f,"\taddi $sp, $sp, 4\n");
    }else if(code->kind == IR_GET_ADDR){
        // TODO
        Operand left = code->u.assign.left;
        Operand right = code->u.assign.right;
        int x,y;
        x = getReg(left);
        y = getReg(right);
        fprintf(f, "\tmove %s, %s\n", printReg(x), printReg(y));
        swReg(x);
    }
}


void mipsIFGOTO(InterCode code){
	Operand leftOp = code->u.if_goto.x;
	Operand rightOp = code->u.if_goto.y;
    char* op =code->u.if_goto.relop;
    char *z = Operand_toString(code->u.if_goto.z);
    if(leftOp->kind != OP_CONSTANT && rightOp->kind != OP_CONSTANT){
		int x = getReg(leftOp);
		int y = getReg(rightOp);
		// bxx reg(x), reg(y), z
		if(strcmp(op, "==")==0){
			fprintf(f, "\tbeq %s, %s, %s\n",printReg(x), printReg(y), z);
		} else if(strcmp(op, "!=")==0){
			fprintf(f, "\tbne %s, %s, %s\n",printReg(x), printReg(y), z);
		} else if(strcmp(op, ">")==0){
			fprintf(f, "\tbgt %s, %s, %s\n",printReg(x), printReg(y), z);
		} else if(strcmp(op, "<")==0){
			fprintf(f, "\tblt %s, %s, %s\n",printReg(x), printReg(y), z);
		} else if(strcmp(op, ">=")==0){
			fprintf(f, "\tbge %s, %s, %s\n",printReg(x), printReg(y), z);
		} else if(strcmp(op, "<=")==0){
			fprintf(f, "\tble %s, %s, %s\n",printReg(x), printReg(y), z);
		}
	} else if(leftOp->kind == OP_CONSTANT && rightOp->kind != OP_CONSTANT){
		int y = getReg(rightOp);
		// bxx reg(x), reg(y), z
		if(strcmp(op, "==")==0){
			fprintf(f, "\tbeq %s, %d, %s\n", printReg(y), leftOp->u.val, z);
		} else if(strcmp(op, "!=")==0){
			fprintf(f, "\tbne %s, %d, %s\n", printReg(y), leftOp->u.val, z);
		} else if(strcmp(op, ">")==0){
			fprintf(f, "\tblt %s, %d, %s\n", printReg(y), leftOp->u.val, z);
		} else if(strcmp(op, "<")==0){
			fprintf(f, "\tbgt %s, %d, %s\n", printReg(y), leftOp->u.val, z);
		} else if(strcmp(op, ">=")==0){
			fprintf(f, "\tble %s, %d, %s\n", printReg(y), leftOp->u.val, z);
		} else if(strcmp(op, "<=")==0){
			fprintf(f, "\tbge %s, %d, %s\n", printReg(y), leftOp->u.val, z);
		}
	} else if(rightOp->kind == OP_CONSTANT && leftOp->kind != OP_CONSTANT){
		int x = getReg(leftOp);
		// bxx reg(x), reg(y), z
		if(strcmp(op, "==")==0){
			fprintf(f, "\tbeq %s, %d, %s\n",printReg(x), rightOp->u.val, z);
		} else if(strcmp(op, "!=")==0){
			fprintf(f, "\tbne %s, %d, %s\n",printReg(x), rightOp->u.val, z);
		} else if(strcmp(op, ">")==0){
			fprintf(f, "\tbgt %s, %d, %s\n",printReg(x), rightOp->u.val, z);
		} else if(strcmp(op, "<")==0){
			fprintf(f, "\tblt %s, %d, %s\n",printReg(x), rightOp->u.val, z);
		} else if(strcmp(op, ">=")==0){
			fprintf(f, "\tbge %s, %d, %s\n",printReg(x), rightOp->u.val, z);
		} else if(strcmp(op, "<=")==0){
			fprintf(f, "\tble %s, %d, %s\n",printReg(x), rightOp->u.val, z);
		}
	}
}

void mipsRETURN(InterCode code){
    Operand op = code->u.op;
    if(op->kind==OP_CONSTANT){
        fprintf(f,"\tli $v0, %d\n\taddi $sp, $sp, %d\n\tlw $fp, 0($sp)\n\taddi $sp, $sp, 4\n\tjr $ra\n", op->u.val, stackSize);
    }else{
        int x = getReg(op);
        fprintf(f,"\tmove $v0, %s\n\taddi $sp, $sp, %d\n\tlw $fp, 0($sp)\n\taddi $sp, $sp, 4\n\tjr $ra\n", printReg(x), stackSize);
        swReg(x);
    }
}

void mipsDEC(InterCode code){
    // 数组声明 DEC v1 8 
    char *x = Operand_toString(code->u.dec.x);
        // sprintf(msg, "DEC %s %d", x, code->u.dec.size);
    Var arrayHead = malloc(sizeof(struct Var_t));
    spOffset -= 4;
    arrayHead->offset = spOffset;
    arrayHead->next =NULL;
    spOffset -= code->u.dec.size;
    arrayHead->name = x;
    addVar(arrayHead);
    fprintf(f,"\taddi $s1, $fp, %d\n\tsw $s1, %d($fp)\n", spOffset, arrayHead->offset);
}

void mipsARG(InterCode code){
    Operand op = code->u.op;
    char *x = Operand_toString(op);
    // sprintf(msg, "ARG %s", x);
    Var arg = findVar(x);
    if(arg==NULL){
        exit(-1);
    }
    // 简单一点，全用栈来传参
    fprintf(f, "\tlw $s0, %d($fp)\n\tsubu $sp, $sp, 4\n\tsw $s0, 0($sp)\n", arg->offset);
    curArg++;
}

void mipsPARAM(InterCode code){
    Operand op = code->u.op;
    char *x = Operand_toString(op);
    spOffset-=4;
    Var param = malloc(sizeof(struct Var_t));
	param->name = x;
	spOffset -= 4;
    param->offset = spOffset;
    param->next = NULL;
    addVar(param);
    fprintf(f, "\tlw $a0, %d($fp)\n\tsw $a0, %d($fp)\n", (curParam+3)*4, param->offset);
	++curParam;
}

void mipsCALL(InterCode code){
        // char *x = Operand_toString(code->u.call.result);
    char *fun = code->u.call.func;
        // sprintf(msg, "%s := CALL %s", x, f);
    
	fprintf(f,"\tsubu $sp, $sp, 4\n");
	fprintf(f,"\tsw $ra, 0($sp)\n");

	Operand res = code->u.call.result;
	int x = getReg(res);
	fprintf(f, "\tjal %s\n\tmove %s, $v0\n", fun, printReg(x));
	swReg(x);
	fprintf(f,"\tlw $ra, 0($sp)\n");
	fprintf(f,"\taddi $sp, $sp, 4\n");
	fprintf(f,"\tlw $v1, 0($sp)\n"); // 参数个数
	fprintf(f,"\taddi $sp, $sp, 4\n");
	fprintf(f,"\tadd $sp, $sp, $v1\n");
	curArg = 0;
}

void initRegs(){ // 初始化寄存器
    int i;
    for(i=0;i<REG_NUM;++i){
        regs[i].name = regName[i];
        regs[i].var = NULL;
        
    // fprintf(stderr,"%s %s\n",regs[i].name,regName[i]);
    }
}

int getReg(Operand op){
    char *name = Operand_toString(op);
    // fprintf(stderr,"%s\n",name);
    Var var = findVar(name);
	int i = curReg + REG_T_START;
	curReg = (++curReg)%(REG_T_END - REG_T_START);
    if(var==NULL){ // no found 
        var = malloc(sizeof(struct Var_t));
        var->next=NULL;
        var->name = name;
        spOffset-=4; // 分配内存
        var->offset = spOffset;
        addVar(var);
        allocReg(i,var);
    }else{
        allocReg(i,var);
        lwReg(i,var);
    }
    return i;
}

char* printReg(int regIndex){
    // fprintf(stderr,"%s %s\n",regs[regIndex].name,regName[regIndex]);
    return regs[regIndex].name;
}

void allocReg(int regIndex,Var var){
    var->reg = regIndex;
    regs[regIndex].var = var;
}

void lwReg(int regIndex,Var var){
    if(var==NULL){
        return;
    }
    fprintf(f, "\tlw %s, %d($fp)\n", printReg(regIndex), var->offset);
}

void swReg(int regIndex){
	Var var = regs[regIndex].var;
    if(var==NULL){
        return;
    }
	fprintf(f, "\tsw %s, %d($fp)\n", printReg(regIndex), var->offset);
}

Var findVar(char *name){
    Var ptr = varList;
    while (ptr!=NULL)
    {
        if(strcmp(ptr->name,name)==0){
            break;
        }else{
            ptr = ptr->next;
        }
    }
    return ptr;
}

void addVar(Var var){
    if(var==NULL){
        return;
    }
    Var ptr = varList;
    if(ptr==NULL){
        varList = var;
    }else{
        while (ptr->next!=NULL)
        {
            ptr = ptr->next;
        }
        ptr->next = var;
    }
}
