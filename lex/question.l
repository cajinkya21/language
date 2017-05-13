%{
#include <stdio.h>
%}
keyword (while|do|return|case|switch)
arithmetic [+*-/%]
relational (==|!=|<|<=|>|>=)
digit [0-9]
alphabet [a-zA-Z]
%%
[\ \t\n]+ ;
{keyword}	 {printf("%s is a keyword\n", yytext);}
{arithmetic}	{printf("%s is an arithmetic operator\n", yytext);}
{relational}	{printf("%s is a relational operator\n", yytext);}
("_"|{alphabet})+({digit}|{alphabet}|"_")* {printf("%s is an identifier\n", yytext);}
{digit}+ {printf("%s is an integer number\n", yytext);}
{digit}*"."{digit}+ {printf("%s is a float number\n", yytext);}
%%

int main(){
	yylex();
	return 0;
}
int yywrap(){
	return 0;
}
