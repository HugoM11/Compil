%{
#include "y.tab.h"
#define ERREUR_LEX -1
%}
%%
\+ {return(PLUS);}
- {return(MOINS);}
\* {return(MULT);}
\/ {return(DIV);}
\( {return(PO);}
\) {return(PF);}
\; {return(PV);}
0|[1-9][0-9]* {yylval=atoi(yytext); return(ENTIER);}
[ ] ;
. {printf("Attention caractère %s inconnu \n",yytext); return(ERREUR_LEX);}
%%
