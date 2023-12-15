%{
#include <stdio.h>
#include <stdlib.h>
%}

%token BINARY EOL

%%
input: BINARY EOL    { printf("Decimal: %ld\n", $1); }
     | input BINARY EOL { printf("Decimal: %ld\n", $1); }
     ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}
