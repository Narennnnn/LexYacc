%{
#include<stdlib.h>
#include "y.tab.h"
extern int yylval;

int yywrap();
%}

%%
[0]    { yylval = atoi(yytext); return ZERO; }
[1]    { yylval = atoi(yytext); return ONE; }
\n     { return EOL; }   /* Return EOL token for newline characters */
[\t]   ;   /* Ignore tabs */
.      ;   /* Ignore other characters */

%%

int yywrap() {
    return 1;
}
