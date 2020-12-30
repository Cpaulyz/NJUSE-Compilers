#include "Node.h"

Node* createNode(char identifier[], char value[], int type, int line){
    Node* node = malloc(sizeof(Node));
    node->deep = 0;	
	strcpy(node->identifier, identifier);
	
	if(value != NULL)
		strcpy(node->value, value);
	else
		node->value[0]='\0';
    int i;
    for ( i = 0; i < MAX_CHILD; i++)
    {
        node->child[i] = NULL; // 初始化为NULL
    }
    
	node->type = type;
	node->line = line;

	return node;
}

void addChild(Node* parent,Node* son){
    if(parent == NULL){
		return;
    }
    parent->child[parent->child_ptr++] = son;
}

void printNode(Node* node){
    if(node==NULL){
        return;
    }
    int i;
    for(i=0;i<node->deep;++i){
        fprintf(stderr,"  ");
    } 
    switch (node->type)
    {
    case TYPE_NONTERMINATION:
        fprintf(stderr,"%s (%d)\n",node->identifier,node->line);
        break;
    case TYPE_ID:
        fprintf(stderr,"%s: %s\n",node->identifier,node->value);
        break;
    case TYPE_OCTAL:
        fprintf(stderr,"%s: %d\n",node->identifier,oct2Int(node->value));
        break;
    case TYPE_HEXI:
        fprintf(stderr,"%s: %d\n",node->identifier,hex2Int(node->value));
        break; 
    case TYPE_INT:
        fprintf(stderr,"%s: %s\n",node->identifier,node->value);
        break;
    case TYPE_FLOAT:
        fprintf(stderr,"%s: %f\n",node->identifier,atof(node->value));
        break; 
    case TYPE_TYPE:
        fprintf(stderr,"%s: %s\n",node->identifier,node->value);
        break;
    case TYPE_TERMINATION:
        fprintf(stderr,"%s\n",node->identifier);
        break;
    default:
        break;
    }
}
void printTree(Node* root){    
    if(root==NULL){
        return;
    }
    printNode(root);
    int i;
    for(i = 0 ; i< root->child_ptr;++i){
        printTree(root->child[i]);
    }
}
void printNodeToFile(Node* node,FILE* f){
    if(node==NULL){
        return;
    }
    int i;
    for(i=0;i<node->deep;++i){
        fprintf(f,"  ");
    } 
    switch (node->type)
    {
    case TYPE_NONTERMINATION:
        fprintf(f,"%s (%d)\n",node->identifier,node->line);
        break;
    case TYPE_ID:
        fprintf(f,"%s: %s\n",node->identifier,node->value);
        break;
    case TYPE_OCTAL:
        fprintf(f,"%s: %d\n",node->identifier,oct2Int(node->value));
        break;
    case TYPE_HEXI:
        fprintf(f,"%s: %d\n",node->identifier,hex2Int(node->value));
        break; 
    case TYPE_INT:
        fprintf(f,"%s: %s\n",node->identifier,node->value);
        break;
    case TYPE_FLOAT:
        fprintf(f,"%s: %f\n",node->identifier,atof(node->value));
        break; 
    case TYPE_TYPE:
        fprintf(f,"%s: %s\n",node->identifier,node->value);
        break;
    case TYPE_TERMINATION:
        fprintf(f,"%s\n",node->identifier);
        break;
    default:
        break;
    }
}

void printTreeToFile(Node* root,FILE* f){
    if(root==NULL){
        return;
    }
    printNodeToFile(root,f);
    int i;
    for(i = 0 ; i< root->child_ptr;++i){
        printTreeToFile(root->child[i],f);
    }
}

void calTreeDeep(Node* root,int deep){
    if(root==NULL){
        return;
    }
    // fprintf(stderr,"%d %d",deep,root==NULL);
    root->deep = deep;
    int i;
    for(i = 0 ; i< root->child_ptr;++i){
        calTreeDeep(root->child[i],deep+1);
    }
}

int oct2Int(char* str){
    int res = 0;
    int len = strlen(str);
    for(int i = 0; i <len ;i++){
        res = 8*res + str[i]-'0';
    }
    return res;
}


int hex2Int(char* str){
    int a;
    sscanf(str, "%x", &a);
    return a;
}