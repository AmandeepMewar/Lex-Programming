/* WALP to identify if the number is prime.
%{
#include <stdio.h>
#include <math.h>
int num, i, flag = 0;
%}

%%
[-0-9]+ { num = atoi(yytext);
		for (i = 2; i <= sqrt(num); i++){
			if (num % i == 0){
				flag = 1;
				break;
			}
		}
		if (num <= 1)
			printf("%d is Neither prime nor composite\n", num);
			
		else if (flag == 1){
			printf("%d is a composite number\n", num);
			flag = 0;
		}
		else
			printf("%d is a prime number\n", num);
		}
.+ { printf("Invalid input\n"); }
%%

int main(){
	printf("Enter input: ");
	yylex();
}

int yywrap(){
	return 1;
}
