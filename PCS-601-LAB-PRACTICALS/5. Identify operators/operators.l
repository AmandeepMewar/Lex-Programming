/* WALP to identify and count number of arithmetic operators, relational operators and logical operators using lex code. */

%{
#include <stdio.h>
int a = 0, r = 0, l = 0;
%}

%%
"+"|"*"|"-"|"/" { a++; printf("Arithmetic Operator: %s\n", yytext); }
"=="|">="|"<="|"!="|">"|"<" { r++; printf("Relational Operator: %s\n", yytext); }
"&&"|"||" { l++; printf("Logical Operator: %s\n", yytext); }
.+ ;
%%

int main(){
	printf("Enter input:");
	yylex();
	printf("Arithmetic Operators = %d\nRelational Operators = %d\nlogical Operators = %d\n", a, r, l);
}

int yywrap(){
	return 1;
}

