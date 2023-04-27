/* WALP to validate a mobile number */
%{
#include <stdio.h>
%}
%%
[6-9][0-9]{9} { printf("%s is valid mobile number\n", yytext); }
.+ { printf("Invalid number"); }
%%

int main(){
	printf("Enter input: ");
	yylex();
}

int yywrap(){
	return 1;
}
