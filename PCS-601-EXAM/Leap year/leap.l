/* WALP to find if the given year is leap year or not */
%{
#include <stdio.h>
int num;
%}

%%
[1-9][0-9]{3} { num = atoi(yytext);
			if (num % 400 == 0)
				printf("Leap Year\n");
			else if (num % 100 == 0)
				printf("Not a leap year\n");
			else if (num % 4 == 0)
				printf("Leap year\n");
			else
				printf("Leap year\n");
		}
.+ { printf("Invalid input\n"); }
%%

int main(){
	printf("Enter input year: ");
	yylex();
}

int yywrap(){
	return 1;
}
