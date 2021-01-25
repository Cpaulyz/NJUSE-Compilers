#include "Node.h"
#include "parser.h"
#include "semantic.h"
#include "hashtable.h"
#include "intercode.h"
#include "mips.h"

Node *root;
int errorLexFlag;
int errorSyntaxFlag;

int main(int argc, char** argv){
	// argc = 3;
    // char* arg1 = "./tests/lab4/test1.cmm";
	// char* arg2 = "out1.ir";
	if(argc <= 1)
			return 1;
	// FILE *f = fopen(arg1, "r");
	FILE *f = fopen(argv[1], "r");
	if(!f){
		// perror(arg1);
		perror(argv[1]);
		return 1;
	}
	yyrestart(f);
	yyparse();
	FILE *out = fopen("temp","w");
	if(errorSyntaxFlag==0&&errorLexFlag==0){
		calTreeDeep(root,0);
		// printTree(root);
		printTreeToFile(root,out);
		initTable();
		Program(root);
		// tranlate_InterCode(root,argv[2]);
		tranlate_InterCode(root,"out1.ir");
		printMips(argv[2]);
		// tranlate_InterCode(root,arg2);
	}; 
	fclose(out);
	return 0;

}