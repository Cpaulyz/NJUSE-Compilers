%{
    #include "syntax.tab.h"
    #include "stdio.h"
    #include <string.h>
    int line = 1;
    int error = 0;
    int octToInt(char* str);
    int hexToInt(char* str);
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

{newline}   {}
{ws}        {}
{float}   {fprintf(yyout,"FLOAT %f at Line %d.\n",atof(yytext),yylineno);}
{hexi}    {fprintf(yyout,"INT %d at Line %d.\n",hexToInt(yytext),yylineno);}
{octal}   {fprintf(yyout,"INT %d at Line %d.\n",octToInt(yytext),yylineno);}
{integer}   {fprintf(yyout,"INT %s at Line %d.\n",yytext,yylineno);}
{comment}       {}
{commentall}    {}
{semi}    {fprintf(yyout,"SEMI %s at Line %d.\n",yytext,yylineno);}
{comma}   {fprintf(yyout,"COMMA %s at Line %d.\n",yytext,yylineno);}
{assgin}  {fprintf(yyout,"ASSIGNOP %s at Line %d.\n",yytext,yylineno);}
{relop}   {fprintf(yyout,"RELOP %s at Line %d.\n",yytext,yylineno);}
{plus}    {fprintf(yyout,"PLUS %s at Line %d.\n",yytext,yylineno);}
{minus}   {fprintf(yyout,"MINUS %s at Line %d.\n",yytext,yylineno);}
{star}    {fprintf(yyout,"STAR %s at Line %d.\n",yytext,yylineno);}
{div}     {fprintf(yyout,"DIV %s at Line %d.\n",yytext,yylineno);}
{and}     {fprintf(yyout,"AND %s at Line %d.\n",yytext,yylineno);}
{or}      {fprintf(yyout,"OR %s at Line %d.\n",yytext,yylineno);}
{dot}     {fprintf(yyout,"DOT %s at Line %d.\n",yytext,yylineno);}
{not}     {fprintf(yyout,"NOT %s at Line %d.\n",yytext,yylineno);}
{lp}      {fprintf(yyout,"LP %s at Line %d.\n",yytext,yylineno);}
{rp}      {fprintf(yyout,"RP %s at Line %d.\n",yytext,yylineno);}
{lb}      {fprintf(yyout,"LB %s at Line %d.\n",yytext,yylineno);}
{rb}      {fprintf(yyout,"RB %s at Line %d.\n",yytext,yylineno);}
{lc}      {fprintf(yyout,"LC %s at Line %d.\n",yytext,yylineno);}
{rc}      {fprintf(yyout,"RC %s at Line %d.\n",yytext,yylineno);}
{struct}  {fprintf(yyout,"STRUCT %s at Line %d.\n",yytext,yylineno);}
{return}  {fprintf(yyout,"RETURN %s at Line %d.\n",yytext,yylineno);}
{if}      {fprintf(yyout,"IF %s at Line %d.\n",yytext,yylineno);}
{else}    {fprintf(yyout,"ELSE %s at Line %d.\n",yytext,yylineno);}
{while}   {fprintf(yyout,"WHILE %s at Line %d.\n",yytext,yylineno);}
{type}    {fprintf(yyout,"TYPE %s at Line %d.\n",yytext,yylineno);} 
{id}      {fprintf(yyout,"ID %s at Line %d.\n",yytext,yylineno);}
.         {
    fprintf(stderr,"Error type A at Line %d: Mysterious character \"%s\".\n",yylineno,yytext);
    error = 1;
}

%%
int main(int argc, char** argv){
    yyin = fopen(argv[1],"r");
    yyout = fopen("temp","w");
    yylex();
    fclose(yyout);
    if(error==0){
        FILE* p = fopen("temp","r");
        char str[100];
        while( fgets (str, 100, p)!=NULL ) {
            fprintf(stderr,str);
        }
        fclose(p);
    }
    fclose(yyin);
    return 0;
}

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