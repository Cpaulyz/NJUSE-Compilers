#ifndef INTERCODE
#define INTERCODE

#include "Node.h"

typedef struct _Operand* Operand;
typedef struct _InterCode* InterCode;
typedef struct _CodeList* CodeList;
typedef struct _ArgList* ArgList;
typedef struct _Variable* Variable;

struct _Operand{
    enum{
        OP_VARIABLE, 
        OP_CONSTANT, 
        OP_ADDRESS, 
        OP_LABEL, 
        OP_ARR_STRU,
        OP_TEMP
    } kind;
    union{
        int var_no;
        int label_no;
        int val;
        int temp_no;
    }u;
};

struct _InterCode{
    enum{
        IR_ASSIGN, 
        IR_LABEL, 
        IR_PLUS, 
        IR_MINUS, 
        IR_MUL, 
        IR_DIV, 
        IR_FUNC, 
        IR_GOTO, 
        IR_IFGOTO, 
        IR_RET, 
        IR_DEC, 
        IR_ARG, 
        IR_CALL, 
        IR_PARAM, 
        IR_READ, 
        IR_WRITE, 
        IR_RETURN, 
        IR_CHANGE_ADDR,
        IR_GET_ADDR} kind;
    union{
        Operand op;
        char *func;
        struct{Operand right, left; } assign;
        struct{Operand result, op1, op2; } binop;
        struct{Operand x, y, z; char *relop;} if_goto;
        struct{Operand x; int size;} dec;
        struct{Operand result; char *func;} call;
    }u;
};
struct _CodeList{
    InterCode code;
    CodeList prev, next;
};

struct _ArgList{
    Operand args;
    ArgList next;
};

struct _Variable{
    char* name;
    Operand op;
    Variable next;
};

int var_num,label_num,temp_num;

InterCode new_InterCode(int kind);
CodeList new_CodeList(InterCode code);
// 合并两个CodeList
CodeList join(CodeList head, CodeList body);
CodeList translate_Operand(Operand op,int IR_KIND); // Operand

void tranlate_InterCode(Node*root, char*file);
void start_translate(Node* root); // 递归翻译
void insert_code(CodeList code); // 插入到总代码中
Operand new_constant();
Operand new_temp();
Operand new_label();
Operand op_from_var(char* var);

CodeList translate_ExtDef(Node *ExtDef);
CodeList translate_FunDec(Node *FunDec);
CodeList translate_CompSt(Node *CompSt);
CodeList translate_StmtList(Node *StmtList);
CodeList translate_Stmt(Node *Stmt);
CodeList translate_DefList(Node *DefList);
CodeList translate_Dec(Node *Dec);
CodeList translate_Cond(Node *Exp, Operand label_true, Operand label_false);
CodeList translate_Exp(Node *Exp, Operand place);
CodeList translate_Args(Node *Args, ArgList *arg_list);


char *Operand_toString(Operand op);
char* InterCode_toString(InterCode code);

CodeList code_head, code_tail;
Variable var_head,var_tail;

#endif