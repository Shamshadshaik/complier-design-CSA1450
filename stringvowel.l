%{
#include <stdio.h>
%}

%%

^[aeiouAEIOU][a-zA-Z0-9]*    printf("Valid: %s\n", yytext);
.                            printf("Invalid: %s\n", yytext);

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
