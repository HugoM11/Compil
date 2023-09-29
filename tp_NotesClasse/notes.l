%{
#include "y.tab.h"
#define ERREUR_LEX -1
%}
%%
\n {return(RL);}
- {return(TIRET);}
[A-Z][a-z]* {return(SL);}
\/ {return(SLASH);}
\( {return(PO);}
\) {return(PF);}
, {return(VIRGULE);}
[0-9][0-9]* {yylval=atoi(yytext); return(ENTIER);}
[ ] ;
. {printf("Attention caractère %s inconnu \n",yytext); return(ERREUR_LEX);}
%%
