%{
#include <stdio.h>
int spaceCount = 0;
int lineCount = 0;
int chharacterCount = 0;
%}

%%
[ \t]   { spaceCount++; }   
\n      { spaceCount++; lineCount++; }
.       { chharacterCount++; }    
%%

int main() {
    yylex();
    printf("Number of spaces: %d\n", spaceCount);
    printf("Number of lines: %d\n", lineCount);
    printf("Number of chharacters: %d\n", chharacterCount);
    return 0;
}
