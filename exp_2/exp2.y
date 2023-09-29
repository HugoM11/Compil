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
e1 : e1 PLUS e2 {printf("+");}
| e1 MOINS e2 {printf("-");}
| e2;

e2 : e2 MULT e3 {printf("*");}
| e2 DIV e3 {printf("/");}
| e3;

e3 : PO e1 PF 
| ENTIER {printf("%d",$1);}
;

%%
int yyerror(){
  printf("Erreur de syntaxe\n");
}
int main(){
    return yyparse();
}