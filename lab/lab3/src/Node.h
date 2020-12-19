#ifndef NODE_H_
#define NODE_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
// #include "lex.yy.c"
#define TYPE_NONTERMINATION 0
#define TYPE_ID 1
#define TYPE_TYPE 2
#define TYPE_INT 3
#define TYPE_OCTAL 4
#define TYPE_HEXI 5 
#define TYPE_FLOAT 6 
#define TYPE_TERMINATION 7
typedef struct TreeNode{
	//TODO: Complete Node Structure
	char identifier[64];
	char value[64];
	int type; // 类型
	int line; // 行号
	int deep; // 树深，打印用
	struct TreeNode *child[64]; // 子节点
	int child_ptr; // 字节点指针
}Node;

extern Node* createNode(char identifier[], char value[], int type, int line);
extern void addChild(Node* parent,Node* son);
extern void printNode(Node* node);
extern void printTree(Node* root);
extern void printTreeToFile(Node* root,FILE* f);
extern void calTreeDeep(Node* root,int deep);

#endif