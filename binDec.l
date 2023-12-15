%{
#include <stdlib.h>
#include "y.tab.h"
extern int yylval;
%}

%%
[01]+   { yylval = strtol(yytext, NULL, 2); return BINARY; }
\n      { return EOL; }
[\t]    ;
.       ;
%%

int yywrap() {
    return 1;
}
