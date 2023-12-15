%{
#include <stdio.h>

int zeroCount = 0;

void yyerror(const char *s);
int yylex(void);

%}

%start S
%token ZERO ONE EOL

%%
S: N                { printf("Number of zeroes: %d\n", zeroCount); }
 | N D              { printf("Number of zeroes: %d\n", zeroCount); }
 ;

N: D                { }
 ;

D: ZERO             { $$ = 1; zeroCount++; }
 | ONE              { }
 ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}
