%{
	#include <stdio.h>
	#include "Node.h"
	#include "parser.h"
    #include "lex.yy.c"
%}

/* declared types */
%union {
	int type_int;
	float type_float;
	double type_double;
	struct TreeNode* type_node;
}
/* declared tokens */
%token <type_node>  INT
%token <type_node>  FLOAT
%token <type_node>  ID
%token <type_node>  SEMI
%token <type_node>  COMMA
%token <type_node>  ASSIGNOP 
%token <type_node>  RELOP
%token <type_node>  PLUS 
%token <type_node>  MINUS 
%token <type_node>  STAR 
%token <type_node>  DIV
%token <type_node>  AND 
%token <type_node>  OR 
%token <type_node>  NOT
%token <type_node>  DOT
%token <type_node>  TYPE
%token <type_node>  LP 
%token <type_node>  RP 
%token <type_node>  LB 
%token <type_node>  RB 
%token <type_node>  LC 
%token <type_node>  RC
%token <type_node>  STRUCT
%token <type_node>  RETURN
%token <type_node>  IF 
%token <type_node>  ELSE
%token <type_node>  WHILE

/* declared non-terminals */
%type <type_node>  Program ExtDefList ExtDef ExtDecList
%type <type_node>  Specifier StructSpecifier OptTag Tag
%type <type_node>  VarDec FunDec VarList ParamDec
%type <type_node>  CompSt StmtList Stmt
%type <type_node>  DefList Def DecList Dec
%type <type_node>  Exp Args

%right ASSIGNOP
%left OR
%left AND
%left RELOP
%left PLUS MINUS
%left STAR DIV
%right NOT UMINUS
%left LP RP LB RB DOT

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE
%% 

/* High-level Definitions */
Program	: ExtDefList {
			$$ = createNode("Program", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			root = $$;
		}
		;
ExtDefList	: ExtDef ExtDefList{
			$$ = createNode("ExtDefList", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
		}
		| /* empty */{ 
			$$=NULL;
		}
		;
ExtDef	: Specifier ExtDecList SEMI{
			$$ = createNode("ExtDef", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
			addChild($$,$3);
		}
		| Specifier SEMI{
			$$ = createNode("ExtDef", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
		}
		| Specifier FunDec CompSt{
			$$ = createNode("ExtDef", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
			addChild($$,$3);
		}
		
	| error SEMI{
		errorSyntaxFlag = 1;
	}
		;
ExtDecList	: VarDec{
				$$ = createNode("ExtDecList", NULL, TYPE_NONTERMINATION, @$.first_line);
				addChild($$,$1);
			}
		    | VarDec COMMA ExtDecList{
				$$ = createNode("ExtDecList", NULL, TYPE_NONTERMINATION, @$.first_line);
				addChild($$,$1);
				addChild($$,$2);
				addChild($$,$3);
			}
			;
/* Specifiers */
Specifier	: TYPE{
				$$ = createNode("Specifier", NULL, TYPE_NONTERMINATION, @$.first_line);
				addChild($$,$1);
			}
		  	| StructSpecifier{
				$$ = createNode("Specifier", NULL, TYPE_NONTERMINATION, @$.first_line);
				addChild($$,$1);
			  }
			;
StructSpecifier	: STRUCT OptTag LC DefList RC{
					$$ = createNode("StructSpecifier", NULL, TYPE_NONTERMINATION, @$.first_line);
					addChild($$,$1);
					addChild($$,$2);
					addChild($$,$3);
					addChild($$,$4);
					addChild($$,$5);
				}
				| STRUCT Tag{
					$$ = createNode("StructSpecifier", NULL, TYPE_NONTERMINATION, @$.first_line);
					addChild($$,$1);
					addChild($$,$2);
				}
				|STRUCT OptTag LC error RC{
					errorSyntaxFlag = 1;
				}
				;
OptTag	: ID{
			$$ = createNode("OptTag", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
		}
	    | /* empty */{$$=NULL;}
		;
Tag	: ID{
		$$ = createNode("Tag", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);
	}
	;

/* Declarators */
VarDec : ID{
			$$ = createNode("VarDec", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
		}
	   | VarDec LB INT RB{
			$$ = createNode("VarDec", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
			addChild($$,$3);
			addChild($$,$4);
	   }
	   
	|VarDec LB error RB{
		errorSyntaxFlag = 1;
	}
	   ;
FunDec	: ID LP VarList RP{
			$$ = createNode("FunDec", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
			addChild($$,$3);
			addChild($$,$4);
		}
	   	| ID LP RP{
			$$ = createNode("FunDec", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
			addChild($$,$3);
		}
		
	|ID LP error RP{
		errorSyntaxFlag = 1;
	}
		;
VarList	: ParamDec COMMA VarList{
			$$ = createNode("VarList", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
			addChild($$,$3);
		}
		| ParamDec{
			$$ = createNode("VarList", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
		}
		;
ParamDec	: Specifier VarDec{
				$$ = createNode("ParamDec", NULL, TYPE_NONTERMINATION, @$.first_line);
				addChild($$,$1);
				addChild($$,$2);
			}
		 	;

/* Statements */
CompSt	: LC DefList StmtList RC{
			$$ = createNode("CompSt", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
			addChild($$,$2);
			addChild($$,$3);
			addChild($$,$4);
		}
		| LC error RC{
			errorSyntaxFlag = 1;
			// yyerror("syntax error, near '}'");
			
		}
	   	;
StmtList	: Stmt StmtList{
				$$ = createNode("StmtList", NULL, TYPE_NONTERMINATION, @$.first_line);
				addChild($$,$1);addChild($$,$2);
			}
		 	| /* empty */{$$=NULL;}
			;
Stmt	: Exp SEMI{ 
			$$ = createNode("Stmt", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);
		}
	 	| CompSt{
			$$ = createNode("Stmt", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
		}
		| RETURN Exp SEMI{
			$$ = createNode("Stmt", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);addChild($$,$3);
		}
		| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE{
			$$ = createNode("Stmt", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);addChild($$,$3);
			addChild($$,$4);addChild($$,$5);
		}
		| IF LP Exp RP Stmt ELSE Stmt{
			$$ = createNode("Stmt", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);addChild($$,$3);
			addChild($$,$4);addChild($$,$5);addChild($$,$6);addChild($$,$7);
		}
		| WHILE LP Exp RP Stmt{
			$$ = createNode("Stmt", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);addChild($$,$3);
			addChild($$,$4);addChild($$,$5);
		}
		| error SEMI{
			errorSyntaxFlag = 1;
			// yyerror("syntax error, near ';'");
		}
		;

/* Local Definitions */
DefList	: Def DefList{
			$$ = createNode("DefList", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);
		}
		| /* empty */{$$=NULL;}
		;
Def	: Specifier DecList SEMI{
		$$ = createNode("Def", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| error SEMI{
		errorSyntaxFlag = 1;
	}
	;
DecList	: Dec{
			$$ = createNode("DecList", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
		}
		| Dec COMMA DecList{
			$$ = createNode("DecList", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);addChild($$,$3);
		}
		;
Dec	: VarDec{
		$$ = createNode("Dec", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);
	}
	| VarDec ASSIGNOP Exp{
		$$ = createNode("Dec", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
    ;

/* Expressions */
Exp	: Exp ASSIGNOP Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| Exp AND Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);
		addChild($$,$2);
		addChild($$,$3);
	}
	| Exp OR Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| Exp RELOP Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| Exp PLUS Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| Exp MINUS Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| Exp STAR Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| Exp DIV Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| LP Exp RP{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| MINUS Exp %prec UMINUS{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);
	}
	| NOT Exp{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);
	}
	| ID LP Args RP{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);addChild($$,$4);
	}
	| ID LP RP{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| Exp LB Exp RB{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);addChild($$,$4);
	}
	| Exp DOT ID{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);addChild($$,$2);addChild($$,$3);
	}
	| ID{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);
	}
	| INT{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);
	}
	| FLOAT{
		$$ = createNode("Exp", NULL, TYPE_NONTERMINATION, @$.first_line);
		addChild($$,$1);
	}
	| ID LP error RP{
		errorSyntaxFlag = 1;
		// yyerror("syntax error, near ')'");
	}
	| Exp LB error RB{
		errorSyntaxFlag = 1;
	}
	;

Args	: Exp COMMA Args{
			$$ = createNode("Args", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);addChild($$,$2);addChild($$,$3);
		}
	 	| Exp{
			$$ = createNode("Args", NULL, TYPE_NONTERMINATION, @$.first_line);
			addChild($$,$1);
		}
		;

%%
/* int main(int argc, char** argv){
	if(argc <= 1)
			return 1;
	FILE *f = fopen(argv[1], "r");
	if(!f){
		perror(argv[1]);
		return 1;
	}
	yyrestart(f);
	yyout = fopen("temp","w");
	yyparse();
	if(errorSyntaxFlag==0&&errorLexFlag==0){
		calTreeDeep(root,0);
		printTree(root);
		printTreeToFile(root,yyout);
	}
	return 0;

} */

void yyerror(char* msg){
		fprintf(stderr, "Error type B at Line %d:  %s,near '%s'\n",yylineno,msg,yylval.type_node->value);
}