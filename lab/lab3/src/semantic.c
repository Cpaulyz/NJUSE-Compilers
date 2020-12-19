#include "semantic.h"
#include "Node.h"
#include "hashtable.h"
#include <string.h>
Type getFromField(FieldList flist, char* name){
    while(flist!=NULL){
        if(strcmp(flist->name,name)==0){
            return flist->type;
        }
        flist = flist->tail;
    }
    return NULL;
}

int isMatchType(Type left,Type right){    
    if(left==NULL&&right==NULL){ // 如果都是NULL，认为类型相等，有待商榷
        return 1;
    }
    if(left==NULL||right==NULL||left->kind!=right->kind){ // 如果有空或者类型不一样，就认为不匹配
        return 0;
    }
    if(left->kind == BASIC){
		if(left->u.basic == right->u.basic)
			return 1;
		else
			return 0;
	}
	else if(left->kind == ARRAY){
		return isMatchType(left->u.array.elem, right->u.array.elem);
	}
	else if(left->kind == STRUCTURE){
        if(right->kind!=STRUCTURE){
            return 0;
        }else{
            return equalStruct(left->u.structure,right->u.structure);
        }
	}
}

int equalStruct(Structure left,Structure right){
    FieldList lDomain = left->domain;
    FieldList rDomain = right->domain;
    while (lDomain!=NULL&&rDomain!=NULL)
    {
        if(isMatchType(lDomain->type,rDomain->type)==0){
            return 0;
        }else{
            lDomain = lDomain->tail;
            rDomain = rDomain->tail;
        }
    }
    if(lDomain==NULL&&rDomain==NULL){
        return 1;
    }else{
        return 0;
    }
}

// 参数类型和数量是否匹配
int isMatchParam(FieldList left,FieldList right){
    while (left!=NULL&&right!=NULL)
    {
        if(!isMatchType(left->type,right->type)){
            return 0;
        }
        left = left->tail;
        right = right->tail;
    }
    
    if(left==NULL&&right==NULL){
        return 1;
    }else{
        return 0;
    }
    
}

void Program(Node* root){
    // fprintf(stderr,"program\n");
    ExtDefList(root->child[0]);
}


void ExtDefList(Node *n){
    // fprintf(stderr,"extdeflist\n");
    if(n==NULL)
		return;
    if(n->child==NULL){
        return;
    }else{
        ExtDef(n->child[0]);
        ExtDefList(n->child[1]);
    }
}


void ExtDef(Node *n){
    // fprintf(stderr,"extdef\n");
    if(n==NULL)
		return;
    Type t = Specifier(n->child[0]);
    Node *tmp = n->child[1];
    if(strcmp(tmp->identifier,"ExtDecList")==0){ // Specifier ExtDecList SEMI
        ExtDecList(n->child[1],t);
    }else if(strcmp(tmp->identifier,"SEMI")==0){ //Specifier SEMI

    }else if(strcmp(tmp->identifier,"FunDec")==0){
        Function func = FunDec(tmp,t);
        if(func==NULL){ // 有错误，比如重复定义了
            return;
        }
        if(strcmp(n->child[2]->identifier,"SEMI")==0){ // Specifier FunDec SEMI
            insertFunc(func);
        }else if(strcmp(n->child[2]->identifier,"CompSt")==0){ // Specifier FunDec CompSt
            insertFunc(func);
            CompSt(n->child[2],t);
        }
    }
}

// VarDec | VarDec COMMA ExtDecList
void ExtDecList(Node *n, Type type){
	if(n==NULL)
		return;
    VarDec(n->child[0],type,0);
    if(n->child[1]!=NULL){ // VarDec COMMA ExtDecList
        ExtDecList(n->child[2],type);
    }
}

Type Specifier(Node *n){
    if(n==NULL)
		return NULL;
    // fprintf(stderr,"specifier %d\n",n->line);
    Type type;
    if(strcmp(n->child[0]->identifier,"TYPE")==0){ //TYPE
		type = (Type)malloc(sizeof(struct Type_));
        type->kind = BASIC;
        if(strcmp(n->child[0]->value,"int")==0){
			type->u.basic = TYPE_INT;
		}
		else if(strcmp(n->child[0]->value, "float")==0){
			type->u.basic = TYPE_FLOAT;
		}
    }else if(strcmp(n->child[0]->identifier,"StructSpecifier")==0) { // StructSpecifier
        type = StructSpecifier(n->child[0]);
    }
    return type;
}

// STRUCT OptTag LC DefList RC | STRUCT Tag
Type StructSpecifier(Node *n){
    if(n==NULL){
		return NULL;
    }
    // fprintf(stderr,"struct specifier %d\n",n->line);
    if(n->child[1]==NULL||strcmp(n->child[1]->identifier,"OptTag")==0){ // STRUCT OptTag LC DefList RC 声明
        // 提取type
        Type type = (Type)malloc(sizeof(struct Type_));
		type->kind = STRUCTURE;
		Structure structure = (Structure)malloc(sizeof(struct Structure_));
		type->u.structure = structure;
        if(n->child[1]==NULL){ // OptTag 可能为NULL
            structure->name = NULL; 
        }else{
            structure->name = n->child[1]->child[0]->value;
        }
        // 备份并初始化
        HashNode *backup[HASH_SIZE]; 
        copyTable(localTable,backup);
        initLocalTable();
        // 初始化完毕
        structure->domain = DefList(n->child[3],1);
        // 恢复原来的局部表
        copyTable(backup,localTable);
        // 恢复完毕
        type->assign = BOTH;
        // 插入符号表
        if(structure->name!=NULL){
            if(check(structure->name)==1){
                printError(ERROR_STURCT_REDEF,n->child[0]->line,structure->name);
                return NULL;
            }else{
                insert(structure->name,type);
            }
        }
        return type;
    }else{ //  STRUCT Tag
        Type type = getType(n->child[1]->child[0]->value);
        if(type==NULL){
            printError(ERROR_STURCT_NODEF,n->child[1]->child[0]->line,n->child[1]->child[0]->value);
            return NULL;
        }else{
            return type;
        }

    }
}
// ID | VarDec LB INT RB
FieldList VarDec(Node *n, Type type,int inStruct){
    if(n==NULL)
		return NULL; 
    // fprintf(stderr,"vardec %d\n",n->line);
    
    if(strcmp(n->child[0]->identifier,"ID")==0){ // ID 
        if(inStruct == 0&&check(n->child[0]->value)==1){// 重复定义，报错
            // if(type->kind==BASIC||type->kind==ARRAY){
            printError(ERROR_VAR_REDEF,n->child[0]->line,n->child[0]->value);
            // }else if(type->kind==FUNCTION){
            //     printError(ERROR_FUN_REDEF,n->child[0]->line,n->child[0]->value);
            // }else if(type->kind==STRUCTURE){
            //     printError(ERROR_STURCT_REDEF,n->child[0]->line,n->child[0]->value);
            // }
            
	        FieldList flist = (FieldList)malloc(sizeof(struct FieldList_));
            flist->name = n->child[0]->value;
            flist->type = type;
            flist->tail = NULL;
            return flist; // 修改，不插入，但是要返回
            // return NULL;
        }else if(inStruct==1&&(check(n->child[0]->value)==1||localCheck(n->child[0]->value)==1)){
            printError(ERROR_REDEF_IN_STRUCT,n->child[0]->line,n->child[0]->value);
            // return NULL;
            FieldList flist = (FieldList)malloc(sizeof(struct FieldList_));
            flist->name = n->child[0]->value;
            flist->type = type;
            flist->tail = NULL;
            return flist;
        }else{
	        FieldList flist = (FieldList)malloc(sizeof(struct FieldList_));
            if(inStruct==0){
                // fprintf(stderr,"insert %s %d\n",n->child[0]->value,n->line);
                insert(n->child[0]->value,type);
            }else{
                // fprintf(stderr,"local insert %s %d\n",n->child[0]->value,n->line);
                localInsert(n->child[0]->value,type);
            }
            flist->name = n->child[0]->value;
            flist->type = type;
            flist->tail = NULL;
            return flist;
        }
    }else{ // VarDec LB INT RB
        Type varDec = (Type)malloc(sizeof(struct Type_));
		varDec->kind = ARRAY;
		varDec->u.array.size = (int)strtol(n->child[2]->value,NULL,10);
		varDec->u.array.elem = type; 
        return VarDec(n->child[0],varDec,inStruct);
    }
}

// ID LP VarList RP |  ID LP RP
Function FunDec(Node *n, Type type){
    // fprintf(stderr,"fundec\n");
    if(n==NULL)
		return NULL;
    // ID在第一位
    // 先检查是否重复了，重复就不加入
    if(check(n->child[0]->value)==1){
        printError(ERROR_FUN_REDEF,n->child[0]->line,n->child[0]->value);
        return NULL;
    }
    Function func = (Function)malloc(sizeof(struct Function_));
    func->name = n->child[0]->value;
    func->line = n->child[0]->line;
    func->type = type;
    
    if(strcmp(n->child[2]->identifier,"VarList")==0){ // ID LP VarList RP
        FieldList f = VarList(n->child[2]);
        // printf("%s",f->name);
        func->param = f;
    }else{
        func->param = NULL;
    }
    
    // printf("%d",func->param->type->kind);
    return func;

}

// ParamDec COMMA VarList | ParamDec
FieldList VarList(Node *n){
    // fprintf(stderr,"valist\n");
	if(n==NULL)
		return NULL;
    FieldList flist = ParamDec(n->child[0]);
    if(n->child[2]!=NULL){ // ParamDec COMMA VarList
        if(flist==NULL){
            return flist = VarList(n->child[2]);
        }else{
            flist->tail = VarList(n->child[2]);
        }
    }
    // printf("%s",flist->name);
    return flist;
}

// Specifier VarDec
FieldList ParamDec(Node *n){
    // fprintf(stderr,"paramdec\n");
	if(n==NULL)
		return NULL;
    Type t = Specifier(n->child[0]);
    return VarDec(n->child[1],t,0);
}

// LC DefList StmtList RC
void CompSt(Node *n, Type retype){
    // fprintf(stderr,"compst\n");
    if(n==NULL)
		return;
    DefList(n->child[1],0);
    StmtList(n->child[2],retype);
}

// Stmt StmtList | empty
void StmtList(Node *n, Type retype){
    // fprintf(stderr,"stmtlist\n");
    if(n==NULL)
		return;
    if(n->child[0]==NULL){
        return;
    }else{ // Stmt StmtList
        Stmt(n->child[0],retype);
        StmtList(n->child[1],retype);
    }
}


void Stmt(Node *n, Type retype){
    // fprintf(stderr,"stmt\n");
    if(n==NULL)
		return;
    if(strcmp(n->child[0]->identifier,"Exp")==0){ // Exp SEMI
        Exp(n->child[0]);
    }else if(strcmp(n->child[0]->identifier,"CompSt")==0){ // CompSt
        CompSt(n->child[0],retype);
    }else if(strcmp(n->child[0]->identifier,"RETURN")==0){ // RETURN Exp SEMI
        Type expType = Exp(n->child[1]);
		if(expType==NULL) return; // 可能有问题？但是没用这个会多报错
        if(!isMatchType(retype,expType)){
            printError(ERROR_RETURN_UNMATCH,n->child[0]->line,"");
        }
    }else if(strcmp(n->child[0]->identifier,"WHILE")==0){ // WHILE LP Exp RP Stmt
        Exp(n->child[2]);
        Stmt(n->child[4],retype);
    }else if(strcmp(n->child[0]->identifier,"IF")==0){ // IF LP Exp RP Stmt (ELSE Stmt) 
        Exp(n->child[2]);
        Stmt(n->child[4],retype);
        if(n->child[6]!=NULL){
            Stmt(n->child[6],retype);
        }
    }
}


// Def DefList | empty
FieldList DefList(Node *n,int inStruct){
    if(n==NULL)
		return NULL;
    // fprintf(stderr,"deflist %d\n",n->line);
    if(n->child[0]==NULL){ // empty
        return NULL;
    }else{ //Def DefList
        FieldList flist = Def(n->child[0],inStruct);
        if(flist == NULL){
            flist = DefList(n->child[1],inStruct);
        }else{
            FieldList tmp = flist;
            FieldList deflist  = DefList(n->child[1],inStruct);
            while (tmp->tail!=NULL)
            {
                tmp = tmp->tail;
            }
            tmp->tail = deflist;
        }
        return flist;
    }
}

// Specifier DecList SEMI
FieldList Def(Node *n,int inStruct){
	if(n==NULL)
		return NULL;
    // fprintf(stderr,"def %d\n",n->line);
    Type t = Specifier(n->child[0]);
    return DecList(n->child[1],t,inStruct);
}

// Dec | Dec COMMA DecList
FieldList DecList(Node *n, Type type,int inStruct){
	if(n==NULL)
		return NULL;
    // fprintf(stderr,"declist %d\n",n->line);
    FieldList flist = Dec(n->child[0],type,inStruct);
    if(flist == NULL){
        return NULL; // 一旦有错就不要了
    }
    if(n->child[1]!=NULL){ // Dec COMMA DecList
        FieldList tmp = flist;
        FieldList declist  = DecList(n->child[2],type,inStruct);
        while (tmp->tail!=NULL)
        {
            tmp = tmp->tail;
        }
        tmp->tail = declist;
    }
    return flist;
}

// VarDec | VarDec ASSIGNOP Exp
FieldList Dec(Node *n, Type type,int inStruct){
	if(n==NULL)
		return NULL;
    // fprintf(stderr,"dec %d\n",n->line);
    FieldList flist = VarDec(n->child[0],type,inStruct);
    if(n->child[1]!=NULL){ // VarDec ASSIGNOP Exp
        if(inStruct==1){
            printError(ERROR_INIT_IN_STRUCT,n->child[0]->line,"");
            return NULL;
        }
        Type expType = Exp(n->child[2]);
        if(!isMatchType(type,expType)){
            printError(ERROR_ASSIGN_UNMATCH,n->child[1]->line,NULL);
            return NULL;
        }
    }
    return flist;
}


Type Exp(Node *n){
	if(n==NULL)
		return NULL;
    // fprintf(stderr,"exp %d\n",n->line);
    if(strcmp(n->child[0]->identifier,"INT")==0){ //INT
        Type type = (Type)malloc(sizeof(struct Type_));
		type->kind = BASIC;
		type->u.basic = TYPE_INT;
		type->assign = RIGHT;
		return type;
    }else if(strcmp(n->child[0]->identifier,"FLOAT")==0){ //FLOAT
		Type type = (Type)malloc(sizeof(struct Type_));
		type->kind = BASIC;
		type->u.basic = TYPE_FLOAT;
		type->assign = RIGHT;
		return type;
    }else if( strcmp(n->child[0]->identifier,"ID")==0 ){
        // 先只做ID
        if(n->child[1]==NULL){ // ID
            if(check(n->child[0]->value)==0){
                printError(ERROR_VAR_NODEF,n->child[0]->line,n->child[0]->value);
                return NULL;
            }else{
                Type type =getType(n->child[0]->value);
                return type;
            }
        }else if(strcmp(n->child[2]->identifier,"Args")==0){ //ID LP Args RP
            Type funType = getType(n->child[0]->value);
            if(funType==NULL){
                printError(ERROR_FUN_NODEF,n->child[0]->line,n->child[0]->value);
                return NULL;
            }else if(funType->kind!=FUNCTION){
                printError(ERROR_NOT_FUN,n->child[0]->line,"");
                return NULL;
            }else{
                // 检查参数类型
                FieldList param = Args(n->child[2]);
                // printf("%s",funType->u.function->param->name);
                // fprintf(stderr,"%d ",funType->u.function->param->type->kind);
                // fprintf(stderr,"%d \n",param->type->kind);

                if(!isMatchParam(param,funType->u.function->param)){
                    printError(ERROR_FUN_PARAM_UNMATCH,n->child[0]->line,n->child[0]->value);
                    return NULL;
                }
                Type res = (Type)malloc(sizeof(struct Type_));
                memcpy(res, funType->u.function->type, sizeof(struct Type_));
                res->assign = RIGHT; // 返回值是右值
                return res;
            }
        }else{ //ID LP RP
            Type funType = getType(n->child[0]->value);
            if(funType==NULL){
                printError(ERROR_FUN_NODEF,n->child[0]->line,n->child[0]->value);
                return NULL;
            }else if(funType->kind!=FUNCTION){
                printError(ERROR_NOT_FUN,n->child[0]->line,"");
                return NULL;
            }else if(funType->u.function->param!=NULL){
                // 参数不应该为空
                printError(ERROR_FUN_PARAM_UNMATCH,n->child[0]->line,n->child[0]->value);
                return NULL;
            }
            
            Type res = (Type)malloc(sizeof(struct Type_));
            memcpy(res, funType->u.function->type, sizeof(struct Type_));
            res->assign = RIGHT;  // 返回值是右值
            return res;
        }
     }else if(strcmp(n->child[0]->identifier,"MINUS")==0){ // MINUS Exp
        Type type = Exp(n->child[1]);
        if(type==NULL){
            return NULL;
        }
        if(type->kind!=BASIC){
            printError(ERROR_OPRAND_UNMATCH,n->child[1]->line,"");
            return NULL;
        }
        Type res = (Type)malloc(sizeof(struct Type_));
        memcpy(res, type, sizeof(struct Type_));
        res->assign = RIGHT;
        return res;
     }else if(strcmp(n->child[0]->identifier,"NOT")==0){ // NOT Exp
        Type type =  Exp(n->child[1]);
        if(type==NULL){
            return NULL;
        }
        Type res = (Type)malloc(sizeof(struct Type_));
        memcpy(res, type, sizeof(struct Type_));
        res->assign = RIGHT;
        return res;
     }else if(strcmp(n->child[0]->identifier,"LP")==0){ // LP Exp RP
        Type type =  Exp(n->child[1]);
        if(type==NULL){
            return NULL;
        }
        Type res = (Type)malloc(sizeof(struct Type_));
        memcpy(res, type, sizeof(struct Type_));
        res->assign = RIGHT;
        return res;
     }else if(strcmp(n->child[1]->identifier,"ASSIGNOP")==0){ // Exp ASSIGNOP Exp
        // fprintf(stderr,"= %d\n",n->line);
        Type left = Exp(n->child[0]);
        Type right = Exp(n->child[2]);
        // fprintf(stderr,"l= %d\n",left->kind);
        // fprintf(stderr,"r= %d\n",right->kind);
        if(left==NULL||right==NULL){ // 可能是NULL，不处理的话下面会报错
            return NULL;
        }
        if(left->assign==RIGHT){
            printError(ERROR_LEFT_VALUE,n->child[0]->line,"");
		    return NULL;
		}
        if(!isMatchType(left,right)){
           printError(ERROR_ASSIGN_UNMATCH,n->child[1]->line,"");
           return NULL;
        }
        return left;
    }else if(strcmp(n->child[1]->identifier,"AND")==0||
             strcmp(n->child[1]->identifier,"OR")==0 ||
             strcmp(n->child[1]->identifier,"RELOP")==0 ||
             strcmp(n->child[1]->identifier,"PLUS")==0 ||
             strcmp(n->child[1]->identifier,"MINUS")==0 ||
             strcmp(n->child[1]->identifier,"STAR")==0 ||
             strcmp(n->child[1]->identifier,"DIV")==0 ){  // Exp 操作 Exp
    // fprintf(stderr,"operand %d\n",n->line);
        Type left = Exp(n->child[0]);
        Type right = Exp(n->child[2]);
        if(left==NULL||right==NULL){
            return NULL;
        }
        if(isMatchType(left,right)==0){
           printError(ERROR_OPRAND_UNMATCH,n->child[0]->line,"");
           return NULL;
        }
        if(strcmp(n->child[1]->identifier,"RELOP")==0){
            // fprintf(stderr,"operand %d\n",n->line);
			Type res = (Type)malloc(sizeof(struct Type_));
            res->kind = BASIC;
            res->assign = RIGHT;
            res->u.basic = TYPE_INT;
            return res;
        }else{
            Type res = (Type)malloc(sizeof(struct Type_));
            memcpy(res, left, sizeof(struct Type_));
            res->assign = RIGHT;
            return res;
        }
    }else if(strcmp(n->child[1]->identifier,"DOT")==0) { // Exp DOT ID
        Type left = Exp(n->child[0]);
        if(left==NULL){ // 可能是NULL，不处理的话下面会报错
            return NULL;
        }
        if(left->kind!=STRUCTURE){ // 非结构体，报错
            printError(ERROR_NOT_STRUCT,n->child[0]->line,"");
            return NULL;
        }else{ // 结构体，进行检查
            Type type = getFromField(left->u.structure->domain,n->child[2]->value);
            
            // 从结构体的定义域里面拿出type，如果是NULL说明未定义
            if(type==NULL){
                printError(ERROR_NOT_EXIST_IN_STURCT,n->child[2]->line,n->child[2]->value);
                return NULL;
            }
            return type;
        }
    }else if(strcmp(n->child[1]->identifier,"LB")==0){ // Exp LB Exp RB
        Type left = Exp(n->child[0]);
        Type right = Exp(n->child[2]);
        if(left==NULL||right==NULL){ // 可能是NULL，不处理的话下面会报错
            return NULL;
        }
        if(left->kind!=ARRAY){
            printError(ERROR_NOT_ARRAY,n->child[0]->line,n->child[0]->child[0]->value); // 可能会报错啊
            return NULL;
            // printError(ERROR_NOT_ARRAY,n->child[0]->line,"");
        }else if(right->kind!=BASIC||right->u.basic!=TYPE_INT){
            printError(ERROR_INDEX_NOT_INT,n->child[2]->line,n->child[2]->child[0]->value); 
            return NULL;
            // printError(ERROR_INDEX_NOT_INT,n->child[0]->line,n->child[0]->value); 
        }else{
            Type res = (Type)malloc(sizeof(struct Type_));
			memcpy(res, left->u.array.elem, sizeof(struct Type_));
			res->assign = BOTH;
			return res;
        }
    }
}

// Exp COMMA Args | Exp
FieldList Args(Node *n){
	if(n==NULL)
		return NULL;

	Type t = Exp(n->child[0]);
    if(t==NULL){
        return NULL; // 如果直接拿不出类型，就返回了
    }
    FieldList flist = (FieldList)malloc(sizeof(struct FieldList_));
	flist->name = n->child[0]->value;
    flist->type = t;
    if(n->child[2]!=NULL){ // Exp COMMA Args
        flist->tail = Args(n->child[2]);
    }
    return flist;
}

void printError(int errorType,int line, char* str){
    if(errorType==ERROR_INIT_IN_STRUCT){
        fprintf(stderr,"Error type %d at Line %d: ",15,line);
    }else{
        fprintf(stderr,"Error type %d at Line %d: ",errorType,line);
    }
    switch (errorType)
    {
    case ERROR_VAR_NODEF:
        fprintf(stderr,"Undefined variable \"%s\"\n",str);
        break;
    case ERROR_FUN_NODEF:
        fprintf(stderr,"Undefined function \"%s\"\n",str);
        break;
    case ERROR_VAR_REDEF:
        fprintf(stderr,"Redefined variable \"%s\"\n",str);
        break;
    case ERROR_FUN_REDEF:
        fprintf(stderr,"Redefined function \"%s\"\n",str);
        break;
    case ERROR_ASSIGN_UNMATCH:
        fprintf(stderr,"Type mismatched for assignment\n");
        break;
    case ERROR_LEFT_VALUE:
        fprintf(stderr,"The left-hand side of an assignment must be a variable.\n");
        break;
    case ERROR_OPRAND_UNMATCH:
        fprintf(stderr,"Type mismatched for operands.\n");
        break;
    case ERROR_RETURN_UNMATCH:
        fprintf(stderr,"Type mismatched for return.\n");
        break;
    case ERROR_FUN_PARAM_UNMATCH:
        fprintf(stderr,"Function \"%s\" is not applicable for arguments.\n",str);
        break;
    case ERROR_NOT_ARRAY:
        fprintf(stderr,"Illegal use of of \"[]\" operator\n");
        break;
    case ERROR_NOT_FUN:
        fprintf(stderr,"Illegal use of of \"()\" operator\n");
        break;
    case ERROR_INDEX_NOT_INT:
        fprintf(stderr,"Array index is not an integer\n");
        break;
    case ERROR_NOT_STRUCT:
        fprintf(stderr,"Illegal use of \".\".\n");
        break;
    case ERROR_NOT_EXIST_IN_STURCT:
        fprintf(stderr,"Non-existent field \"%s\".\n",str);
        break;
    case ERROR_REDEF_IN_STRUCT:
        fprintf(stderr,"Redefined field \"%s\".\n",str);
        break;
    case ERROR_STURCT_REDEF:
        fprintf(stderr,"Duplicated name \"%s\".\n",str);
        break;
    case ERROR_STURCT_NODEF:
        fprintf(stderr,"Undefined structure \"%s\".\n",str);
        break;
    case ERROR_INIT_IN_STRUCT:
        fprintf(stderr,"Unsupoorted initialized.\n");
        break;
    default:
        break;
    }

}