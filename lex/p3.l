digit [0-9]
letter [a-zA-Z]
%{
	int chars, words, lines;
%}

%%
\n	{lines++; chars++;}
[^ \t\n]*	{chars += yyleng; words++;}
.	{chars++;}
%%
int yywrap(){
	return 1 ;
}
int main(){
	yyin=fopen("test", "r");
	yylex();
	printf("chars: %d\n words: %d\n lines: %d", chars, words, lines);
	return 0;
}
