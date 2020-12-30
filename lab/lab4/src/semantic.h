#ifndef SEMANTIC
#define SEMANTIC

#include "Node.h"
// #include "hashtable.h"

#define ERROR_VAR_NODEF 1
#define ERROR_FUN_NODEF 2
#define ERROR_VAR_REDEF 3
#define ERROR_FUN_REDEF 4
#define ERROR_ASSIGN_UNMATCH 5
#define ERROR_LEFT_VALUE 6
#define ERROR_OPRAND_UNMATCH 7
#define ERROR_RETURN_UNMATCH 8
#define ERROR_FUN_PARAM_UNMATCH 9
#define ERROR_NOT_ARRAY 10
#define ERROR_NOT_FUN 11
#define ERROR_INDEX_NOT_INT 12
#define ERROR_NOT_STRUCT 13
#define ERROR_NOT_EXIST_IN_STURCT 14
#define ERROR_REDEF_IN_STRUCT 15
#define ERROR_INIT_IN_STRUCT 18
#define ERROR_STURCT_REDEF 16
#define ERROR_STURCT_NODEF 17

typedef struct Type_* Type;
typedef struct Structure_* Structure;
typedef struct FieldList_* FieldList;
typedef struct Function_* Function;

struct Type_{
	enum { BASIC,ARRAY,STRUCTURE,FUNCTION } kind;
	union{
		// basic type
		int basic;
		
		// array information
		struct { Type elem; int size;} array;
		
		// structure information
		Structure structure;	
		
		// function information
		Function function;
	} u;
	enum { LEFT,RIGHT,BOTH } assign;
};


struct Structure_{
	char *name;
	FieldList domain;
};


struct Function_{
	char *name;
	int line;
	Type type;
	FieldList param;
};

struct FieldList_{
	// Field name
	char *name;
	// Field type
	Type type;
	// next field
	FieldList tail;
};
Type getFromField(FieldList flist, char* name);
int isMatchType(Type left,Type right);
int isMatchParam(FieldList left,FieldList right);
int equalStruct(Structure left,Structure right); // 结构等价

void Program(Node* root);
void ExtDefList(Node *n);
void ExtDef(Node *n);
void ExtDecList(Node *n, Type type);

Type Specifier(Node *n);
Type StructSpecifier(Node *n);

FieldList VarDec(Node *n, Type type,int inStruct);
Function FunDec(Node *n, Type type);
FieldList VarList(Node *n);
FieldList ParamDec(Node *n);

void CompSt(Node *n, Type retype);
void StmtList(Node *n, Type retype);
void Stmt(Node *n, Type retype);

// inSturct ==1 说明是来自结构体的def，不应该加入符号表，而且重复类型可能是15
FieldList DefList(Node *n,int inStruct);
FieldList Def(Node *n,int inStruct);
FieldList DecList(Node *n, Type type,int inStruct);
FieldList Dec(Node *n, Type type,int inStruct);

Type Exp(Node *n);
FieldList Args(Node *n);

void printError(int errorType,int line, char* str);
#endif