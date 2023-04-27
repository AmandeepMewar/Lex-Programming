/* WALP to tokenize a C program with reserve keywords use by the users. */
%{
#include<stdio.h>
int k = 0, i = 0, c = 0, o = 0, p = 0;	
%}

%%
int|float|if|else|return|printf { k++; printf("Keyword: %s\n", yytext); }
[_a-zA-Z][_a-zA-Z0-9]* { i++; printf("Identifier: %s\n", yytext); }
[0-9]+ { c++; printf("Constant: %s\n", yytext); }
[*-+/=><%]|"<="|">="|"!=" { o++; printf("Operator: %s\n", yytext); }
[,;{}():.[]] { p++; printf("Punctuators: %s\n", yytext); }
. |;
%%

int main(){
	printf("Enter your input: ");
	yylex();
	printf("Total number of:\nKeywords=%d\nIdentifier=%d\nConstant=%d\nOperator=%d\nPunctuators=%d\n", k, i, c, o, p); 
}

int yywrap(){
	return 1;
}
