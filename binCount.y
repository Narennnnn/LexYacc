%{
#include <stdio.h>

void yyerror(const char *s);
int yylex(void);

%}

%start S
%token ZERO ONE 

%%
S: N                { printf("Number of zeroes: %d\n", $1); }
 | N D              { $$=$1+$2; }
 ;

N: D                { $$=$1; }
 ;

D: ZERO             { $$ = 1; }
 | ONE              { $$ = 0; }
 ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}