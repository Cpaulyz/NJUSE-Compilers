#ifndef HASHTABLE_H
#define HASHTABLE_H

#include "Node.h"
#include "semantic.h"
#include <string.h>

#define HASH_SIZE 512

typedef struct HashNode_{
    char *name;
    Type type;
    struct HashNode_ *next;  // Hash冲突
} HashNode;

extern HashNode *hashTable[HASH_SIZE];
extern HashNode *localTable[HASH_SIZE];
extern void copyTable(HashNode *src[],HashNode *dst[]);

extern Type getType(char *name);
extern void initTable();
extern void initLocalTable();

extern int localCheck(char *name);
extern int check(char *name); // 如果不存在，返回0
extern int localInsert(char *name,Type type);
extern int insert(char *name,Type type);
extern int insertFunc(Function func);

#endif
