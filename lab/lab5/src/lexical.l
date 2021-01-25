%{
    
    #include <stdio.h>
    #include <string.h>
    #include "Node.h"
    #include "syntax.tab.h"
    extern int errorLexFlag;
    int line = 1;
    int octToInt(char* str);
    int hexToInt(char* str);
    int yycolumn = 1;
    #define YY_USER_ACTION \   
        yylloc.first_line = yylloc.last_line = yylineno; \
        yylloc.first_column = yycolumn; \
        yylloc.last_column = yycolumn + yyleng - 1; \
        yycolumn += yyleng;
%}

%option yylineno
ws      [ \t\r]+
newline [\n]
semi    ";"
comma   ","
assgin  "="
relop   >|<|>=|<=|==|!=
plus    "+"
minus   "-"
star    "*"
div     "/"
and     "&&"
or      "||"
dot     "."
not     "!"
lp      "("
rp      ")"
lb      "["
rb      "]"
lc      "{"
rc      "}"
struct  "struct"
return  "return"
if      "if"
else    "else"
while   "while"
type    (int)|(float)
digit   [0-9]
letter  [A-Za-z]
id      (_|{letter})(_|{letter}|{digit})*
integer (0|[1-9]{digit}*)
octal   (0[0-7]+)
hexi    (0(x|X))({digit}|[A-Fa-f])+
float   ({digit}+\.{digit}+((E|e)(\+|-)?{digit}+)?)|(\.{digit}+(E|e)(\+|-)?{digit}+)|({digit}+\.(E|e)(\+|-)?{digit}+)
comment \/\/.*
commentall  (\/\*)([^\*]|(\*)*[^\*/])*(\*)**(\*\/)
%%

{newline}   {yycolumn=1;}
{ws}        {}
{float}   {
    // fprintf(yyout,"FLOAT %f at Line %d.\n",atof(yytext),yylineno);
    yylval.type_node = createNode("FLOAT",yytext,TYPE_FLOAT,yylineno);
    return FLOAT;
    }
{hexi}    {
    // fprintf(yyout,"INT %d at Line %d.\n",hexToInt(yytext),yylineno);
    yylval.type_node = createNode("INT",yytext,TYPE_HEXI,yylineno);
    return INT;    
    }
{octal}   {
    // fprintf(yyout,"INT %d at Line %d.\n",octToInt(yytext),yylineno);
    yylval.type_node = createNode("INT",yytext,TYPE_OCTAL,yylineno);
    return INT;
    }
{integer}   {
    // fprintf(yyout,"INT %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("INT",yytext,TYPE_INT,yylineno);
    return INT;
    }
{comment}       {}
{commentall}    {}
{semi}    {
    // fprintf(yyout,"SEMI %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("SEMI",yytext,TYPE_TERMINATION,yylineno);
    return SEMI;
    }
{comma}   {
    // fprintf(yyout,"COMMA %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("COMMA",yytext,TYPE_TERMINATION,yylineno);
    return COMMA;
    }
{assgin}  {
    // fprintf(yyout,"ASSIGNOP %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("ASSIGNOP",yytext,TYPE_TERMINATION,yylineno);
    return ASSIGNOP;
    }
{relop}   {
    // fprintf(yyout,"RELOP %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("RELOP",yytext,TYPE_TERMINATION,yylineno);
    return RELOP;
    }
{plus}    {
    // fprintf(yyout,"PLUS %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("PLUS",yytext,TYPE_TERMINATION,yylineno);
    return PLUS;
    }
{minus}   {
    // fprintf(yyout,"MINUS %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("MINUS",yytext,TYPE_TERMINATION,yylineno);
    return MINUS;
    }
{star}    {
    // fprintf(yyout,"STAR %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("STAR",yytext,TYPE_TERMINATION,yylineno);
    return STAR;
    }
{div}     {
    // fprintf(yyout,"DIV %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("DIV",yytext,TYPE_TERMINATION,yylineno);
    return DIV;
    }
{and}     {
    // fprintf(yyout,"AND %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("AND",yytext,TYPE_TERMINATION,yylineno);
    return AND;
    }
{or}      {
    // fprintf(yyout,"OR %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("OR",yytext,TYPE_TERMINATION,yylineno);
    return OR;
    }
{dot}     {
    // fprintf(yyout,"DOT %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("DOT",yytext,TYPE_TERMINATION,yylineno);
    return DOT;
    }
{not}     {
    // fprintf(yyout,"NOT %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("NOT",yytext,TYPE_TERMINATION,yylineno);
    return NOT;
    }
{lp}      {
    // fprintf(yyout,"LP %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("LP",yytext,TYPE_TERMINATION,yylineno);
    return LP;
    }
{rp}      {
    // fprintf(yyout,"RP %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("RP",yytext,TYPE_TERMINATION,yylineno);
    return RP;
    }
{lb}      {
    // fprintf(yyout,"LB %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("LB",yytext,TYPE_TERMINATION,yylineno);
    return LB;
    }
{rb}      {
    // fprintf(yyout,"RB %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("RB",yytext,TYPE_TERMINATION,yylineno);
    return RB;
    }
{lc}      {
    // fprintf(yyout,"LC %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("LC",yytext,TYPE_TERMINATION,yylineno);
    return LC;
    }
{rc}      {
    // fprintf(yyout,"RC %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("RC",yytext,TYPE_TERMINATION,yylineno);
    return RC;
    }
{struct}  {
    // fprintf(yyout,"STRUCT %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("STRUCT",yytext,TYPE_TERMINATION,yylineno);
    return STRUCT;
    }
{return}  {
    // fprintf(yyout,"RETURN %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("RETURN",yytext,TYPE_TERMINATION,yylineno);
    return RETURN;
    }
{if}      {
    // fprintf(yyout,"IF %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("IF",yytext,TYPE_TERMINATION,yylineno);
    return IF;
    }
{else}    {
    // fprintf(yyout,"ELSE %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("ELSE",yytext,TYPE_TERMINATION,yylineno);
    return ELSE;
    }
{while}   {
    // fprintf(yyout,"WHILE %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("WHILE",yytext,TYPE_TERMINATION,yylineno);
    return WHILE;
    }
{type}    {
    // fprintf(yyout,"TYPE %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("TYPE",yytext,TYPE_TYPE,yylineno);
    return TYPE;
    } 
{id}      {
    // fprintf(yyout,"ID %s at Line %d.\n",yytext,yylineno);
    yylval.type_node = createNode("ID",yytext,TYPE_ID,yylineno);
    return ID;
    }
.         {
    fprintf(stderr,"Error type A at Line %d: Mysterious character \"%s\".\n",yylineno,yytext);
    errorLexFlag = 1;
}

%%
// int main(int argc, char** argv){
//     yyin = fopen(argv[1],"r");
//     yyout = fopen("temp","w");
//     yylex();
//     fclose(yyout);
//     if(errorLexFlag==0){
//         FILE* p = fopen("temp","r");
//         char str[100];
//         while( fgets (str, 100, p)!=NULL ) {
//             // fprintf(stderr,str);
//         }
//         fclose(p);
//     }
//     fclose(yyin);
//     return 0;
// }

int octToInt(char* str){
    int res = 0;
    int len = strlen(str);
    for(int i = 0; i <len ;i++){
        res = 8*res + str[i]-'0';
    }
    return res;
}


int hexToInt(char* str){
    int a;
    sscanf(str, "%x", &a);
    return a;
}