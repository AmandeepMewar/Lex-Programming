%{
#include <stdio.h>
%}

%%
x[0-9A-F]+ { printf("Hexadecimal\n"); }
o[0-7]+ { printf("Octal\n"); }
[1-9][0-9]* { printf("Decimal\n"); }
.+ ;
%%

int main(){
	printf("Enter input: ");
	yylex();
}

int yywrap(){
	return 1;
}
