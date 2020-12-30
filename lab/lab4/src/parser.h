#ifndef PRASE_H
#define PRASE_H

#include <stdio.h>
#include <math.h>
#include <ctype.h>
#include <memory.h>
#include <stdlib.h>
#include <stdarg.h>
#include <float.h>
#include "Node.h"
/*
 * lex & parse
 */
extern int yylex(void);
extern int yyparse(void);
extern void yyrestart(FILE*);
extern void yyerror(char*);
extern int yylineno;

extern	struct TreeNode* root;

extern int errorSyntaxFlag;
extern int errorLexFlag;
#endif