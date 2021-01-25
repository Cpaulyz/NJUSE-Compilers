#include "intercode.h"
#include "hashtable.h"
#include "semantic.h"
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>


InterCode new_InterCode(int kind){

    InterCode tmp = (InterCode)malloc(sizeof(struct _InterCode));
    tmp->kind = kind;
    return tmp;
}
CodeList new_CodeList(InterCode code){
    CodeList res =(CodeList)malloc(sizeof(struct _CodeList));
    res->code = code;
    res->next = res->prev = NULL;
    return res;
}

CodeList join(CodeList head, CodeList body){
    if(head == NULL){
        return body;
    }
    CodeList tmp = head;
    while(tmp->next != NULL){
        tmp = tmp->next;
    }
    tmp->next = body;
    if(body != NULL){
        body->prev = tmp;
    }
    return head;
}

CodeList translate_Operand(Operand op,int IR_KIND){
    InterCode tmp = new_InterCode(IR_KIND);
    tmp->u.op = op;
    CodeList res =new_CodeList(tmp);
    return res;
}

void tranlate_InterCode(Node*root, char*file){
    FILE *f;
    if(file != NULL){
        f = fopen(file, "w");
    }else {
        f = fopen("output.ir", "w");
    }
    label_num = var_num =  temp_num=1;
    code_head = code_tail = NULL;
    var_tail = var_head = NULL;
    start_translate(root);
    CodeList code = code_head;
    while (code!=NULL)
    {
        fprintf(f,"%s\n",InterCode_toString(code->code));
        code = code->next;
        /* code */
    }
    fclose(f);
    
}


void start_translate(Node* root){
    if(root==NULL){
        return;
    }
    if(strcmp(root->identifier, "ExtDef") == 0){ // 从ExtDef开始
        // fprintf(stderr,"start");
        insert_code(translate_ExtDef(root));
    }
    int index = 0;
    while (root->child[index]!=NULL)
    {
        start_translate(root->child[index]);
        index++;
    }
}


void insert_code(CodeList code){
    if(code==NULL){
        return;
    }
    if(code_head==NULL){ // 如果为NULL 直接替换
        code_head = code;
        CodeList tmp = code;
        while (tmp->next!=NULL)
        {
            tmp=tmp->next;
        }
        code_tail = tmp;
    }else{ // 往尾部加入
        code->prev = code_tail;
        code_tail->next = code;
        while (code_tail->next!=NULL)
        {
            code_tail=code_tail->next;
        }
    }
}

Operand new_constant(int val){
    Operand tmp = malloc(sizeof(struct _Operand));
    tmp->kind = OP_CONSTANT;
    tmp->u.val = val;
    return tmp;
}
Operand new_temp(){
    Operand tmp = malloc(sizeof(struct _Operand));
    tmp->kind = OP_TEMP;
    tmp->u.temp_no = temp_num;
    temp_num++;
    return tmp;
}

Operand new_label(){
    Operand tmp = (Operand)malloc(sizeof(struct _Operand));
    tmp->kind = OP_LABEL;
    tmp->u.temp_no = label_num;
    label_num++;
    return tmp;
}

Operand op_from_var(char* var){
    // fprintf(stderr,"op from var\n");
    if(var_head == NULL){ // 若为空 直接加
        var_head = malloc(sizeof(struct _Variable));
        var_head->name = var;
        Operand tmp = malloc(sizeof(struct _Operand));
        tmp->kind = OP_VARIABLE;
        tmp->u.var_no = var_num;
        var_num++;
        var_head->op = tmp;
        var_tail = var_head;
        return tmp;
    }else{ // 暴力遍历，找
        Variable vtmp = var_head;
        while (vtmp!=NULL){
            if(strcmp(vtmp->name,var)==0){
                return vtmp->op;
            }
            vtmp = vtmp->next;
        } // 如果找不到，加
        Operand tmp = malloc(sizeof(struct _Operand));
        tmp->kind = OP_VARIABLE;
        tmp->u.var_no = var_num;
        var_num++;
        Variable newVar = malloc(sizeof(struct _Variable));
        newVar->name = var;
        newVar->op = tmp;
        var_tail->next = newVar;
        var_tail = newVar;
        return tmp;
    }
}

CodeList translate_ExtDef(Node *ExtDef){ // 只翻译 Specifier FunDec CompSt
    if(ExtDef==NULL){
        return NULL;
    }
    // fprintf(stderr,"ExtDef\n");
    if(ExtDef->child[2]!=NULL&&strcmp(ExtDef->child[2]->identifier,"CompSt")==0){
        CodeList code1 = translate_FunDec(ExtDef->child[1]);
        CodeList code2 = translate_CompSt(ExtDef->child[2]);
        return join(code1,code2);
    }
}


// ID LP VarList RP |  ID LP RP
CodeList translate_FunDec(Node *FunDec){ 
    // fprintf(stderr,"FunDec\n");
    if(FunDec==NULL){
        return NULL;
    }
    InterCode ic = new_InterCode(IR_FUNC);
    ic->u.func = FunDec->child[0]->value; // function name
    CodeList code1 = new_CodeList(ic);
    if(strcmp(FunDec->child[2]->identifier,"VarList")==0){ // ID LP VarList RP
         // 只有简单类型
         FieldList params = getType(FunDec->child[0]->value)->u.function->param;
         while (params!=NULL)
         {
            InterCode paramCode = new_InterCode(IR_PARAM);
            Operand op;
            if(params->type->kind==BASIC){
                op = op_from_var(params->name); // 反正变量不重名，就直接拿名字来用了
            }else{
                op = op_from_var(params->name); // 反正变量不重名，就直接拿名字来用了
                op->kind=OP_ADDRESS;
            }
            paramCode->u.op = op;
            CodeList tmp =new_CodeList(paramCode);
            join(code1,tmp);
            params = params->tail;
         }
    }else{ // ID LP RP
        // nothing 
    }
    return code1;
}

//LC DefList StmtList RC 
CodeList translate_CompSt(Node *CompSt){
    if(CompSt==NULL){
        return NULL;
    }
    // fprintf(stderr,"ComSt\n");
    CodeList code1 = translate_DefList(CompSt->child[1]);
    CodeList code2 = translate_StmtList(CompSt->child[2]);
    return join(code1,code2);
}


// Stmt StmtList | empty
CodeList translate_StmtList(Node *StmtList){
    if(StmtList==NULL){
        return NULL;
    }
    // fprintf(stderr,"StmtList\n");
    if(StmtList==NULL){
        return NULL;
    }
    CodeList code1 = translate_Stmt(StmtList->child[0]);
    CodeList code2 = translate_StmtList(StmtList->child[1]);
    return join(code1,code2);
}

CodeList translate_Stmt(Node *Stmt){
    if(Stmt==NULL){
        return NULL;
    }
    // fprintf(stderr,"Stmt\n");
    if(Stmt==NULL){
        return NULL;
    }
    if(strcmp(Stmt->child[0]->identifier,"CompSt")==0){ // CompSt
        return translate_CompSt(Stmt->child[0]);
    }else if(strcmp(Stmt->child[0]->identifier,"Exp")==0){  // Exp SEMI
        return translate_Exp(Stmt->child[0],NULL);
    }else if(strcmp(Stmt->child[0]->identifier,"RETURN")==0){ // RETURN Exp SEMI
        Operand t1 = new_temp();
        CodeList code1 = translate_Exp(Stmt->child[1],t1);
        CodeList code2 = translate_Operand(t1,IR_RETURN);
        return join(code1,code2);
    }else if(strcmp(Stmt->child[0]->identifier,"IF")==0){ //  IF LP Exp RP Stmt (ELSE Stmt)
        if(Stmt->child[5]==NULL){ // IF
            Operand label1 = new_label();
            Operand label2 = new_label();
            CodeList code1 = translate_Cond(Stmt->child[2],label1,label2);
            CodeList code2 = translate_Stmt(Stmt->child[4]);
            CodeList clabel1 = translate_Operand(label1,IR_LABEL);
            CodeList clabel2 = translate_Operand(label2,IR_LABEL);
            return join(join(join(code1,clabel1),code2),clabel2);
        }else{ // IF ELSE
            Operand label1 = new_label();
            Operand label2 = new_label();
            Operand label3 = new_label();
            CodeList code1 = translate_Cond(Stmt->child[2],label1,label2);
            CodeList code2 = translate_Stmt(Stmt->child[4]);
            CodeList code3 = translate_Stmt(Stmt->child[6]);
            CodeList clabel1 = translate_Operand(label1,IR_LABEL);
            CodeList clabel2 = translate_Operand(label2,IR_LABEL);
            CodeList clabel3 = translate_Operand(label3,IR_LABEL);
            CodeList goto3 = translate_Operand(label3,IR_GOTO);
            CodeList tmp = join(code1,translate_Operand(label1,IR_LABEL));
            tmp = join(tmp,code2);
            tmp = join(tmp,goto3);
            tmp = join(tmp,translate_Operand(label2,IR_LABEL));
            tmp = join(tmp,code3);
            tmp = join(tmp,translate_Operand(label3,IR_LABEL));
            return tmp;
        }

    }else if(strcmp(Stmt->child[0]->identifier,"WHILE")==0){ // WHILE LP Exp RP Stmt
        Operand label1 = new_label();
        Operand label2 = new_label();
        Operand label3 = new_label();
        CodeList code1 = translate_Cond(Stmt->child[2],label2,label3);
        CodeList code2 = translate_Stmt(Stmt->child[4]);
        CodeList goto1 = translate_Operand(label1,IR_GOTO);
        CodeList tmp = join(translate_Operand(label1,IR_LABEL),code1);
        tmp = join(tmp,translate_Operand(label2,IR_LABEL));
        tmp = join(tmp,code2);
        tmp = join(tmp,goto1);
        tmp = join(tmp,translate_Operand(label3,IR_LABEL));
        return tmp;
    }
}
//Def DefList | empty
CodeList translate_DefList(Node *DefList){
    if(DefList==NULL){
        return NULL;
    }
    // fprintf(stderr,"DefList\n");
    CodeList res = NULL;
    while(DefList!=NULL){
        Node* Def = DefList->child[0]; // Def ：Specifier DecList SEMI
        DefList = DefList->child[1];
        Node* DecList= Def->child[1];
        Node* Dec;
        while (1)
        {
           Dec = DecList->child[0];
           res = join(res,translate_Dec(Dec));
           if(DecList->child[2]!=NULL){
               DecList = DecList->child[2];
           }else{
               break;
           }
        }
        
    }
    return res;
}

// VarDec | VarDec ASSIGNOP Exp
CodeList translate_Dec(Node *Dec){
    if(Dec==NULL){
        return NULL;
    }
    // fprintf(stderr,"Dec\n");
    //不会出现类型为结构体或高维数组（高于1维的数组）的变量
    // 那就先只翻译 VarDec ASSIGNOP Exp
    if(Dec->child[2]!=NULL){
        Node* VarDec = Dec->child[0]; // VarDec: VarDec LB INT RB | ID
        if(strcmp(VarDec->child[0]->identifier,"ID")==0){
           Operand op = op_from_var(VarDec->child[0]->value);
           return translate_Exp(Dec->child[2],op);
        }
    }else{
        Node* VarDec = Dec->child[0]; // VarDec: VarDec LB INT RB | ID
        if(strcmp(VarDec->child[0]->identifier,"VarDec")==0){
        // 数组初始化
            Operand var = op_from_var(VarDec->child[0]->child[0]->value); // 只可能是一维数组
            var->kind= OP_ARR_STRU;
            InterCode ic = new_InterCode(IR_DEC);
            ic->u.dec.x = var;
            ic->u.dec.size =  (int)strtol(VarDec->child[2]->value,NULL,10)*4;
            return new_CodeList(ic);
        }
    }
    return NULL;
}

CodeList translate_Cond(Node *Exp, Operand label_true, Operand label_false){
    // fprintf(stderr,"Cond\n");
    if(strcmp(Exp->child[0]->identifier,"NOT")==0){ // NOT EXP
        return translate_Cond(Exp->child[1],label_false,label_true);
    }else if(Exp->child[1]==NULL){ // other
        Operand t1 = new_temp();
        CodeList code1 = translate_Exp(Exp,t1);
        InterCode ic = new_InterCode(IR_IFGOTO);
        ic->u.if_goto.x = t1;
        ic->u.if_goto.y = new_constant(0);
        ic->u.if_goto.z = label_true;
        ic->u.if_goto.relop = malloc(3);
        strcpy(ic->u.if_goto.relop, "!=");
        CodeList code2 = new_CodeList(ic);
        CodeList gotofalse = translate_Operand(label_false,IR_GOTO);
        return join(join(code1,code2),gotofalse);
    } else{
        if(strcmp(Exp->child[1]->identifier,"RELOP")==0){ // EXP RELOP EXP
            Operand t1 = new_temp();
            Operand t2 = new_temp();
            CodeList code1 = translate_Exp(Exp->child[0],t1);
            CodeList code2 = translate_Exp(Exp->child[2],t2);
            InterCode ic = new_InterCode(IR_IFGOTO);
            ic->u.if_goto.x = t1;
            ic->u.if_goto.y = t2;
            ic->u.if_goto.z = label_true;
            ic->u.if_goto.relop = Exp->child[1]->value;
            CodeList code3 = new_CodeList(ic);
            CodeList gotofalse = translate_Operand(label_false,IR_GOTO);
            return join(join(join(code1,code2),code3),gotofalse);
        }else if(strcmp(Exp->child[1]->identifier,"AND")==0){ // EXP AND EXP
            Operand label1 = new_label();
            CodeList code1 = translate_Cond(Exp->child[0],label1,label_false);
            CodeList code2 = translate_Cond(Exp->child[2],label_true,label_false);
            CodeList clabel1 = translate_Operand(label1,IR_LABEL);
            return join(join(code1,clabel1),code2);
        }else if(strcmp(Exp->child[1]->identifier,"OR")==0){ // EXP OR EXP
            Operand label1 = new_label();
            CodeList code1 = translate_Cond(Exp->child[0],label_true,label1);
            CodeList code2 = translate_Cond(Exp->child[2],label_true,label_false);
            CodeList clabel1 = translate_Operand(label1,IR_LABEL);
            return join(join(code1,clabel1),code2);
        }else{ // other
            Operand t1 = new_temp();
            CodeList code1 = translate_Exp(Exp,t1);
            InterCode ic = new_InterCode(IR_IFGOTO);
            ic->u.if_goto.x = t1;
            ic->u.if_goto.y = new_constant(0);
            ic->u.if_goto.z = label_true;
            ic->u.if_goto.relop = malloc(3);
            strcpy(ic->u.if_goto.relop, "!=");
            CodeList code2 = new_CodeList(ic);
            CodeList gotofalse = translate_Operand(label_false,IR_GOTO);
            return join(join(code1,code2),gotofalse);
        }
    }
}


CodeList translate_Exp(Node *Exp, Operand place){
    if(Exp==NULL){
        return NULL;
    }
    // fprintf(stderr,"Exp %d\n",Exp->line);
    if(strcmp(Exp->child[0]->identifier,"INT")==0){ //INT
        int val = (int)strtol(Exp->child[0]->value,NULL,10);
        InterCode ic = new_InterCode(IR_ASSIGN);
        ic->u.assign.left = place;
        ic->u.assign.right = new_constant(val);
        return new_CodeList(ic);
    }else if(strcmp(Exp->child[0]->identifier,"ID")==0){
        if(Exp->child[1]==NULL){ // ID
            Operand op = op_from_var(Exp->child[0]->value);
            if(op->kind==OP_ARR_STRU){
                InterCode ic = new_InterCode(IR_GET_ADDR);
                ic->u.assign.left = place;
                ic->u.assign.right = op;
                return new_CodeList(ic);
            }else{
                InterCode ic = new_InterCode(IR_ASSIGN);
                ic->u.assign.left = place;
                ic->u.assign.right = op;
                return new_CodeList(ic);
            }
        }else if(strcmp(Exp->child[2]->identifier,"Args")==0){ //ID LP Args RP
            Function fun = getType(Exp->child[0]->value)->u.function;
            ArgList argList = NULL;
            CodeList code1 = translate_Args(Exp->child[2],&argList);
            if(strcmp(fun->name,"write")==0){
                InterCode ic = new_InterCode(IR_WRITE);
                ic->u.op = argList->args;
                return join(code1,new_CodeList(ic));
            }else{
                CodeList code2 = NULL;
                while (argList!=NULL)
                {
                    InterCode ic = new_InterCode(IR_ARG);
                    ic->u.op = argList->args;
                    code2 = join(code2,new_CodeList(ic));
                    argList = argList->next;
                }
                InterCode ic = new_InterCode(IR_CALL);
                if(place!=NULL){
                    ic->u.call.result = place;
                }else{
                    ic->u.call.result = new_temp();
                }
                ic->u.call.func = fun->name;
                CodeList code3 = new_CodeList(ic);
                return join(join(code1,code2),code3);
            }
        }else{ //ID LP RP
            Function fun = getType(Exp->child[0]->value)->u.function;
            if(strcmp(fun->name,"read")==0){
                InterCode ic = new_InterCode(IR_READ);
                ic->u.op = place;
                return new_CodeList(ic);
            }else{
                InterCode ic = new_InterCode(IR_CALL);
                if(place!=NULL){
                    ic->u.call.result = place;
                }else{
                    ic->u.call.result = new_temp();
                }
                ic->u.call.func = fun->name;
                return new_CodeList(ic); 
            }
        }
    }else if(strcmp(Exp->child[0]->identifier,"MINUS")==0){ // MINUS Exp
        Operand t1 = new_temp();
        CodeList code1 = translate_Exp(Exp->child[1],t1);
        InterCode ic = new_InterCode(IR_MINUS);
        ic->u.binop.op1 = new_constant(0);
        ic->u.binop.op2 = t1;
        ic->u.binop.result = place;
        CodeList code2 = new_CodeList(ic);
        return join(code1,code2);
    }else if(strcmp(Exp->child[0]->identifier,"LP")==0){ // LP Exp RP
        return translate_Exp(Exp->child[1],place);
    }else if(strcmp(Exp->child[1]->identifier,"ASSIGNOP")==0){ // Exp1 ASSIGNOP Exp2 
        // fprintf(stderr,"Exp assignop %d\n",Exp->line);
        if(strcmp(Exp->child[0]->child[0]->identifier,"ID")==0){ // (Exp1 → ID)
            Operand var = op_from_var(Exp->child[0]->child[0]->value);
            Operand t1 = new_temp();
            CodeList code1 = translate_Exp(Exp->child[2],t1);
            InterCode ic = new_InterCode(IR_ASSIGN);
            ic->u.assign.left = var;
            ic->u.assign.right = t1;
            CodeList code2 = new_CodeList(ic);
            if(place!=NULL){
                InterCode ic2 = new_InterCode(IR_ASSIGN);
                ic2->u.assign.left = place;
                ic2->u.assign.right = var;
                code2 = join(code2,new_CodeList(ic2));
            }
            return join(code1,code2);
        }else{
            Operand var = new_temp();
            var->kind = OP_ADDRESS;
            CodeList code0 = translate_Exp(Exp->child[0],var);
            // Operand var = op_from_var(Exp->child[0]->child[0]->value);
            Operand t1 = new_temp();
            CodeList code1 = translate_Exp(Exp->child[2],t1);
            InterCode ic = new_InterCode(IR_CHANGE_ADDR);
            ic->u.assign.left = var;
            ic->u.assign.right = t1;
            CodeList code2 = new_CodeList(ic);
            if(place!=NULL){
                InterCode ic2 = new_InterCode(IR_ASSIGN);
                ic2->u.assign.left = place;
                ic2->u.assign.right = var;
                code2 = join(code2,new_CodeList(ic2));
            }
            // return join(code1,code2);
            return join(join(code0,code1),code2);
        }
    }else if(strcmp(Exp->child[0]->identifier,"NOT")==0|| // NOT Exp
             strcmp(Exp->child[1]->identifier,"AND")==0||
             strcmp(Exp->child[1]->identifier,"OR")==0 ||
             strcmp(Exp->child[1]->identifier,"RELOP")==0){ // Exp RELOP\AND\OR Exp
        Operand label1 = new_label();
        Operand label2 = new_label();
        InterCode ic = new_InterCode(IR_ASSIGN);
        ic->u.assign.left = place;
        ic->u.assign.right = new_constant(0);
        CodeList code0 = new_CodeList(ic);
        CodeList code1 = translate_Cond(Exp,label1,label2);
        CodeList code2 = translate_Operand(label1,IR_LABEL);
        ic = new_InterCode(IR_ASSIGN);
        ic->u.assign.left = place;
        ic->u.assign.right = new_constant(1);
        code2 = join(code2,new_CodeList(ic));
        CodeList code3 = translate_Operand(label2,IR_LABEL);
        return join(join(code0,code1),join(code2,code3));
    }else if(strcmp(Exp->child[1]->identifier,"PLUS")==0 ||
             strcmp(Exp->child[1]->identifier,"MINUS")==0 ||
             strcmp(Exp->child[1]->identifier,"STAR")==0 ||
             strcmp(Exp->child[1]->identifier,"DIV")==0 ){  // Exp 加减乘除 Exp
        Operand t1 = new_temp();
        Operand t2 = new_temp();
        CodeList code1 = translate_Exp(Exp->child[0],t1);
        CodeList code2 = translate_Exp(Exp->child[2],t2);
        InterCode ic =malloc(sizeof(struct _InterCode));
        if(strcmp(Exp->child[1]->identifier,"PLUS")==0){
            ic->kind = IR_PLUS;
        }else if(strcmp(Exp->child[1]->identifier,"MINUS")==0){
            ic->kind = IR_MINUS;
        }else if(strcmp(Exp->child[1]->identifier,"STAR")==0){
            ic->kind = IR_MUL;
        }else if(strcmp(Exp->child[1]->identifier,"DIV")==0){
            ic->kind = IR_DIV;
        }
        ic->u.binop.op1 = t1;
        ic->u.binop.op2 = t2;
        ic->u.binop.result = place;
        CodeList code3 = new_CodeList(ic);
        return join(join(code1,code2),code3);
    }else if(strcmp(Exp->child[1]->identifier,"DOT")==0) { // Exp DOT ID
    }else if(strcmp(Exp->child[1]->identifier,"LB")==0){ // Exp LB Exp RB
        // 根据假设，必是一维数组
        Operand v1 = op_from_var(Exp->child[0]->child[0]->value);
        Operand baseAddr = new_temp();
        baseAddr->kind = OP_ADDRESS;
        InterCode ic;
        if(v1->kind==OP_ADDRESS){
             ic = new_InterCode(IR_ASSIGN);
        }else{
             ic = new_InterCode(IR_GET_ADDR);
        }
        ic->u.assign.left = baseAddr;
        ic->u.assign.right = v1;
        CodeList code0 = new_CodeList(ic);
        Operand t1 = new_temp(); // t1是偏移量
        Operand t2 = new_temp(); // t2是最终结果，是地址
        t2->kind=OP_ADDRESS;
        CodeList code1 = translate_Exp(Exp->child[2],t1);
        ic = new_InterCode(IR_MUL);
        ic->u.binop.result = t1;
        ic->u.binop.op1 = t1;
        ic->u.binop.op2 = new_constant(4);
        CodeList code2 = new_CodeList(ic);
        CodeList code3 = NULL;
        if(place!=NULL){
            ic = new_InterCode(IR_PLUS);
            ic->u.binop.result = t2;
            ic->u.binop.op1 = baseAddr;
            ic->u.binop.op2 = t1;
            code3 = new_CodeList(ic);
            ic = new_InterCode(IR_ASSIGN);
            ic->u.assign.left = place;
            ic->u.assign.right = t2;
            code3 = join(code3,new_CodeList(ic));
        }
        return join(join(code0,code1),join(code2,code3));
    }
}

// Exp COMMA Args | Exp
CodeList translate_Args(Node *Args, ArgList *arg_list){
    if(Args==NULL){
        return NULL;
    }
    Operand t1 = new_temp();
    CodeList code1 = translate_Exp(Args->child[0],t1);
    ArgList newArgList = malloc(sizeof(struct _ArgList));
    newArgList->args = t1;
    newArgList->next = *arg_list;
    *arg_list = newArgList;
    if(Args->child[1]==NULL){ // Exp
        return code1;
    }else{ // Exp COMMA Args
        CodeList code2 = translate_Args(Args->child[2],arg_list);
        return join(code1,code2);
    }
}


char *Operand_toString(Operand op){
    char msg[64] = "";
    if(op->kind == OP_CONSTANT){
        sprintf(msg, "#%d", op->u.val);
    }else if(op->kind == OP_LABEL){
        sprintf(msg, "label%d", op->u.label_no);
    }else if(op->kind==OP_VARIABLE||op->kind==OP_ARR_STRU){
        sprintf(msg, "v%d", op->u.var_no);
    }else if(op->kind==OP_TEMP||op->kind==OP_ADDRESS){
        sprintf(msg, "t%d", op->u.temp_no);
    }
    char *ans = malloc(strlen(msg) + 1);
    strcpy(ans, msg);
    return ans;
}

char* InterCode_toString(InterCode code){
    int max_size = 64;
    char *msg = malloc(max_size);
    memset(msg, 0, max_size);
    if(code->kind == IR_LABEL){
        char *x = Operand_toString(code->u.op);
        sprintf(msg, "LABEL %s :", x);
    }
    else if(code->kind == IR_FUNC){
        char *f = code->u.func;
        sprintf(msg, "FUNCTION %s :", f);
    }
    else if(code->kind == IR_ASSIGN){
        Operand left = code->u.assign.left;
        Operand right = code->u.assign.right;
        if(code->u.assign.left != NULL){
            char *x = Operand_toString(left);
            char *y = Operand_toString(right);
            if(left->kind==OP_ADDRESS && right->kind!=OP_ADDRESS){
                sprintf(msg, "%s := &%s", x, y);
            }else if(left->kind!=OP_ADDRESS && right->kind==OP_ADDRESS){
                sprintf(msg, "%s := *%s", x, y);
            }else{
                sprintf(msg, "%s := %s", x, y);
            }
        }
    }
    else if(code->kind == IR_CHANGE_ADDR){
        //TODO
        if(code->u.assign.left != NULL){
            char *x = Operand_toString(code->u.assign.left);
            char *y = Operand_toString(code->u.assign.right);
            sprintf(msg, "*%s := %s", x, y);
        }
    }
    else if(code->kind == IR_PLUS){
        if(code->u.binop.result != NULL){
            char *x = Operand_toString(code->u.binop.result);
            char *y = Operand_toString(code->u.binop.op1);
            char *z = Operand_toString(code->u.binop.op2);
            sprintf(msg, "%s := %s + %s",x, y, z);
        }
    }
    else if(code->kind == IR_MINUS){
        if(code->u.binop.result != NULL){
            char *x = Operand_toString(code->u.binop.result);
            char *y = Operand_toString(code->u.binop.op1);
            char *z = Operand_toString(code->u.binop.op2);
            sprintf(msg, "%s := %s - %s",x, y, z);
        }
    }
    else if(code->kind == IR_MUL){
        if(code->u.binop.result != NULL){
            char *x = Operand_toString(code->u.binop.result);
            char *y = Operand_toString(code->u.binop.op1);
            char *z = Operand_toString(code->u.binop.op2);
            sprintf(msg, "%s := %s * %s",x, y, z);
        }
    }
    else if(code->kind == IR_DIV){
        if(code->u.binop.result != NULL){
            char *x = Operand_toString(code->u.binop.result);
            char *y = Operand_toString(code->u.binop.op1);
            char *z = Operand_toString(code->u.binop.op2);
            sprintf(msg, "%s := %s / %s",x, y, z);
        }
    }
    else if(code->kind == IR_GOTO){
        char *x = Operand_toString(code->u.op);
        sprintf(msg, "GOTO %s", x);
    }
    else if(code->kind == IR_IFGOTO){
        char *x = Operand_toString(code->u.if_goto.x);
        char *y = Operand_toString(code->u.if_goto.y);
        char *z = Operand_toString(code->u.if_goto.z);
        sprintf(msg, "IF %s %s %s GOTO %s", x, code->u.if_goto.relop, y, z);
    }
    else if(code->kind == IR_RETURN){
        char *x = Operand_toString(code->u.op);
        sprintf(msg, "RETURN %s", x);
    }
    else if(code->kind == IR_DEC){
        char *x = Operand_toString(code->u.dec.x);
        sprintf(msg, "DEC %s %d", x, code->u.dec.size);
    }
    else if(code->kind == IR_ARG){
        char *x = Operand_toString(code->u.op);
        // if(code->u.op->kind == ADDRESS)
        //     sprintf(msg, "ARG %s", x);
        sprintf(msg, "ARG %s", x);
    }
    else if(code->kind == IR_CALL){
        char *x = Operand_toString(code->u.call.result);
        char *f = code->u.call.func;
        sprintf(msg, "%s := CALL %s", x, f);
    }
    else if(code->kind == IR_PARAM){
        char *x = Operand_toString(code->u.op);
        sprintf(msg, "PARAM %s", x);
    }
    else if(code->kind == IR_READ){
        char *x = Operand_toString(code->u.op);
        sprintf(msg, "READ %s", x);
    }
    else if(code->kind == IR_WRITE){
        char *x = Operand_toString(code->u.op);
        sprintf(msg, "WRITE %s", x);
    }else if(code->kind == IR_GET_ADDR){
        char *x = Operand_toString(code->u.assign.left);
        char *y = Operand_toString(code->u.assign.right);
        sprintf(msg, "%s := &%s", x, y);
    }
    char *ans = malloc(strlen(msg) + 1);
    strcpy(ans, msg);
    return ans;
}