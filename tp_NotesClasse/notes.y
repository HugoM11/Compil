%{
  #include <stdio.h>
  int yylex();
  int yyerror();
%}
%token RL TIRET SL
%token SLASH
%token PO PF
%token ENTIER
%token VIRGULE
%%
ligne1 : ENTIER RL liste
;
liste : eleve RL liste
|eleve
;

eleve : nom prenom date_naiss liste_note
;

nom : SL
;

prenom : SL TIRET prenom
| SL
;

date_naiss : ENTIER SLASH ENTIER SLASH ENTIER
;

liste_note : PO ENTIER VIRGULE ENTIER PF liste_note
| PO ENTIER VIRGULE ENTIER PF
;

%%
int yyerror(){
  printf("Erreur de syntaxe\n");
}
int main(){
    return yyparse();
}