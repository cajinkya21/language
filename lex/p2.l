%{
	#include <stdio.h>
	int yylineno;
%}

%%

(.*) printf("%d\t%s", yylineno++, yytext);

%%
int yywrap(){
	return 1;
}

int main(){
	yyin = fopen("test", "r");
	yylex();
	fclose(yyin);
	return 0;
}
