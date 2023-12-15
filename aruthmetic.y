%{
#include <stdio.h>
void yyerror(char *);
int yylex();
int yywrap();
%}
%start S 
%token NUM
%left '+'
%left '*'
%%
S: E { printf("The value is %d\n", $1); }
;
E: E '+' T { $$ = $1 + $3; }
 | T       { $$ = $1; }
;
T: T '*' F { $$ = $1 * $3; }
 | F       { $$ = $1; }
;
F: NUM { $$ = $1; }
;
%%
int main()
{
    yyparse();
    return 0; // Return 0 for successful execution
}

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

