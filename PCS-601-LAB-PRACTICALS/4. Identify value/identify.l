/* Design a lex program to identify and print integer and float value from the given input pattern */

%{
#include <stdio.h>
int i = 0;
int f = 0;
%}

%%
-?[1-9][0-9]* { i++; printf("Integer: %s\n", yytext); }
-?[0-9]+"."[0-9]+ { f++; printf("Float: %s\n", yytext); }
.+ ;
%%

int main(){
	printf("Enter input: ");
	yylex();
	printf("Total number of integers: %d\nTotal number of float-value: %d\n", i, f);
}

int yywrap(){
	return 1;
}

