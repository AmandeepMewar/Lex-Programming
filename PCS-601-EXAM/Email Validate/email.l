/* WALP to validate an email.*/
%{
#include <stdio.h>
%}

%% 
[a-z0-9]+"@gmail.com" { printf("Valid email\n"); }
.+ { printf("Invalid email\n"); }
%%

int main(){
	printf("Enter email: ");
	yylex();
}

int yywrap(){
	return 1;
}
