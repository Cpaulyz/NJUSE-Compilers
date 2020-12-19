#include "Node.h"
#include "parser.h"
#include "semantic.h"
#include "hashtable.h"

Node *root;
int errorLexFlag;
int errorSyntaxFlag;

int main(int argc, char** argv){
	if(argc <= 1)
			return 1;
	FILE *f = fopen(argv[1], "r");
	if(!f){
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
	}; 
	fclose(out);
	return 0;

}