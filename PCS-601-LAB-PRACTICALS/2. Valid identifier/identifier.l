/* WALP to find a valid identifier. */
%{
#include <stdio.h>
%}

%%
int|float|double|printf|return|if|else { printf("Invalid identifier\n"); }
[_a-zA-Z][_a-zA-Z0-9]* { printf("%s is a valid identifier\n", yytext); }
.+ { printf("Invalid identifier\n"); }
%%

int main(){
	printf("Enter input: ");
	yylex();
}

int yywrap(){
	return 1;
}
