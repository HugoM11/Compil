%{
  #include <stdio.h>
  int yylex();
  int yyerror();
%}
%token PLUS MOINS
%token MULT DIV
%token PO PF
%token ENTIER
%token PV
%%
e : e1 PV e {printf("\nValeur : %d\n", $$);}
| e1 PV {printf("\nValeur : %d\n", $$);}
;

e1 : e1 PLUS e2 {$$=$1+$3;printf("+");}
| e1 MOINS e2 {$$=$1-$3;printf("-");}
| e2 {$$=$1;}
;
e2 : e2 MULT e3 {$$=$1*$3;printf("*");}
| e2 DIV e3 {$$=$1/$3;printf("/");}
| e3 {$$=$1;}
;
e3 : PO e1 PF {$$=$2;}
| ENTIER {$$=$1;printf("%d",$1);}
;

%%
int yyerror(){
  printf("Erreur de syntaxe\n");
}
int main(){
    return yyparse();
}