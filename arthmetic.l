%{
#include<stdlib.h>
#include "y.tab.h"
extern int yyval;
int yywrap();    
%}
%%
[0-9]+ { yyval=atoi(yytext);
         return NUM;
       }
[\t]   ;
.      return yytext[0];
\n     ;
%%
int yywrap()
{
    return 1;
}