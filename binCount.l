%{
#include<stdlib.h>
#include "y.tab.h"
extern int yylval;

int yywrap();
%}

%%
[0]    { yylval = atoi(yytext); return ZERO; }
[1]    { yylval = atoi(yytext); return ONE; }
\n     ;
[\t]   ;    
.      ;    

%%

int yywrap() {
    return 1;
}
