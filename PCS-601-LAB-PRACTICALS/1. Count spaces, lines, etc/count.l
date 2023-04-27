/* Write a lex program to count the number of lines, spaces, tabs and rest of the characters. */

%{
#include <stdio.h>
	int l = 0, t = 0, s = 0, c = 0;
%}

%%
\n l++;
\t t++;
[ ] s++;
. c++;
%%

int main(){
	printf("Enter input: ");
	yylex();
	printf("Total number of:\nLines=%d\nTabs=%d\nSpaces=%d\nCharacters=%d\n", l, t, s, c);
}

int yywrap(){
	return 1;
}
