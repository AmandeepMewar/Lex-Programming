/* Write a lex program to classify b/w identifiers, operators and numbers and count them. */

%{
#include <stdio.h>
int i = 0;
int o = 0;
int n = 0;
%}

%%
[_a-zA-Z][_a-zA-Z0-9]* { i++; printf("Valid identifier = %s\n", yytext); }
"+"|"/"|"-"|"*" { o++; printf("Operator = %s\n", yytext); }
[0-9]+ { n++; printf("Number = %s\n", yytext); }
. ;
%%

int main(){
	printf("Enter input: ");
	yylex();
	printf("\nTotal number of valid identifiers = %d\nTotal number of operators = %d\nTotal number of Numbers = %d\n", i, o, n);
}

int yywrap(){
	return 1;
}
