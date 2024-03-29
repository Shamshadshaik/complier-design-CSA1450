%{
#include <stdio.h>
%}

DIGIT   [0-9]
LETTER  [a-zA-Z]
WORD    {LETTER}({LETTER}|{DIGIT})*
REL_OP  "<"|">"|"=="|"<="|">="|"!="

%%

{WORD}      printf("Word: %s\n", yytext);
{REL_OP}    printf("Relational Operator: %s\n", yytext);
.           ;

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
