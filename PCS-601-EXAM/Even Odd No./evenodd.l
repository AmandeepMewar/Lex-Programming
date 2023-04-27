/* WALP to find whether a given number is odd or even. */
%{
#include <stdio.h>
int i;
%}

%%
[0-9]+ { i = atoi(yytext);
		 if (i % 2 == 0)
		 	printf("%d is even\n",i);
		 else 
		 	printf("%d is odd\n", i);
		}
		
.+ ;

%%

int main(){
	printf("Enter input: ");
	yylex();
}

int yywrap(){
	return 1;
}
