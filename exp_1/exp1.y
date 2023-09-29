%{
  #include <stdio.h>
  int yylex();
  int yyerror();
%}
%token PLUS MOINS
%token MULT DIV
%token PO PF
%token ENTIER
%%
e1 : e1 PLUS e2
| e1 MOINS e2
| e2;

e2 : e2 MULT e3
| e2 DIV e3
| e3;

e3 : PO e3 PF
| ENTIER;
%%
int yyerror(){
  printf("Erreur de syntaxe\n");
}
int main(){
    return yyparse();
}