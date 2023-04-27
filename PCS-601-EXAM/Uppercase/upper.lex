/* WALP to convert lowercase letters to uppercase */
%{
#include <stdio.h>
int i;
%}

%%
[a-zA-Z0-9]+ { for (i = 0; i < yyleng; i++){
					if (yytext[i] > 96){
						yytext[i] = yytext[i] - 32;
					}
				}
				printf("Uppercase: %s\n", yytext);
			}
.+ { printf("Invalid input\n"); }
%%

int main(){
	printf("Enter input : ");
	yylex();
}

int yywrap(){
	return 1;
}
