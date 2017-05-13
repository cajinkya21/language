%{

%}
%%
[ \n\t] ;

%%

int main(){
	yylex();
	return 0;
}
int yywrap(){
	return 0;
}
