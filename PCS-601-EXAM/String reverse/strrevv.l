/* WALP to reverse a string */
%{
#include <stdio.h>
int i, j;
char temp;
%}

%%
[a-zA-Z0-9]+ { i = 0;
		 j = yyleng - 1;
		 while (i < j){
		 	temp = yytext[i];
		 	yytext[i] = yytext[j];
		 	yytext[j] = temp;
		 	i++;
		 	j--;
		 }
		 printf("Reversed: %s\n", yytext);
		 }
.+ { printf("Invalid\n"); }
%%

int main(){
	printf("Enter input: ");
	yylex();
}

int yywrap(){
	return 1;
}
