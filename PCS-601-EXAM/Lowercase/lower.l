%{
#include <stdio.h>
int i;
%}

%%
[a-zA-Z0-9]+ {for ( i = 0; i < yyleng; i++){
			   		if (yytext[i] > 64 && yytext[i] < 93)
			   			yytext[i] += 32;
			   	}
			   	printf("Lowercased: %s\n", yytext);
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
