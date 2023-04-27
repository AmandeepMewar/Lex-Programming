/* WALP to check if a string is palindrome or not */
%{
#include <stdio.h>
int i,j;
int flag = 0;
%}

%% 
[a-zA-Z0-9]*  {	i = 0;
				j = yyleng - 1;
				while (i < j){
					if (yytext[i] != yytext[j]){
						flag = 1;
						break;
					}
					i = i+1;
					j = j-1;
				}
				if (flag == 0)
					printf("%s is a palindrome\n", yytext);
				else
					printf("%s is not a palindrome\n", yytext);
				flag = 0;
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
