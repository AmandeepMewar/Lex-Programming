/* WALP to validate a url */
%{
#include <stdio.h>
%}

%%
w{3}"."[a-z]+".""com" { printf("%s is valid \n", yytext); }

.+ { printf("Invalid url\n"); }
%%

int main(){
	printf("Enter your input: ");
	yylex();
}

int yywrap(){
	return 1;
}	
