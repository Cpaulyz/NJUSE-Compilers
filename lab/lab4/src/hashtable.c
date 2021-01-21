#include "hashtable.h"

HashNode *hashTable[HASH_SIZE];
HashNode *localTable[HASH_SIZE]; 

int hashValue(char *key){ // 使用的是time33哈希函数
    unsigned int hash = 5381;
    while(*key){
        hash += (hash << 5 ) + (*key++);
    }
    return (hash & 0x7FFFFFFF) % HASH_SIZE;
}

extern void initTable(){
	int i=0;
	for(;i<HASH_SIZE;i++){
		hashTable[i]=NULL;
	}
    // 插入read和write
    initLocalTable();
}

extern void initLocalTable(){
	int i=0;
	for(;i<HASH_SIZE;i++){
		localTable[i]=NULL;
	}
}

extern void copyTable(HashNode *src[],HashNode *dst[]){
	int i=0;
	for(;i<HASH_SIZE;i++){
		dst[i] = src[i];
	}
}

extern Type getType(char *name){
    int hash = hashValue(name);
    HashNode *node = hashTable[hash];
    for(;node!=NULL;node = node->next){
        if(strcmp(name,node->name)==0){ // 只需要比较名字就可以
            return node->type;
        }
    }
    return NULL;
}

extern int localCheck(char *name){
    int hash = hashValue(name);
    HashNode *node = localTable[hash];
    for(;node!=NULL;node = node->next){
        if(strcmp(name,node->name)==0){ // 只需要比较名字就可以
        // fprintf(stderr,"%s exist\n",node->name);
            return 1;
        }
    }
    return 0;
}
extern int check(char *name){
    int hash = hashValue(name);
    HashNode *node = hashTable[hash];
    for(;node!=NULL;node = node->next){
        if(strcmp(name,node->name)==0){ // 只需要比较名字就可以
            return 1;
        }
    }
    return 0;
}

extern int localInsert(char *name,Type type){
    int hash = hashValue(name);
    HashNode *newnode = (HashNode *)malloc(sizeof(HashNode));
    newnode->name = name;
    newnode->type = type;
    newnode->next = NULL;
    HashNode *node = localTable[hash];
    if(node==NULL){
        localTable[hash] = newnode;
    }else{
        while(node->next!=NULL){
            node = node->next;
        }
        node->next = newnode;
    }
}
extern int insert(char *name,Type type){
    int hash = hashValue(name);
    HashNode *newnode = (HashNode *)malloc(sizeof(HashNode));
    newnode->name = name;
    newnode->type = type;
    newnode->next = NULL;
    HashNode *node = hashTable[hash];
    if(node==NULL){
        hashTable[hash] = newnode;
    }else{
        while(node->next!=NULL){
            node = node->next;
        }
        node->next = newnode;
    }
}

int insertFunc(Function func){
    HashNode *newnode = (HashNode *)malloc(sizeof(HashNode));
    newnode->name = func->name;
    newnode->type = (Type)malloc(sizeof(struct Type_));
    newnode->type->kind = FUNCTION;
    newnode->type->assign = RIGHT;
    newnode->type->u.function = func;
    newnode->next = NULL;

    int hash = hashValue(func->name); 
    HashNode *node = hashTable[hash];
    if(node==NULL){
        hashTable[hash] = newnode;
    }else{
        while(node->next!=NULL){
            node = node->next;
        }
        node->next = newnode;
    }
}