%{
    void yyerror(const char* msg);
    int yyparse(void);
    #include "lex.yy.c"
%}

%%
Program : ;

