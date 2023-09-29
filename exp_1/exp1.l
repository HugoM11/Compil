%{
  #include "y.tab.h"
  #define ERREUR_LEX -999
%}
%%
\+ {return(PLUS);}
- {return(MOINS);}
\* {return(MULT);}
\/ {return(DIV);}
\( {return(PO);}
\) {return(PF);}
0|[1-9][0-9]* {return(ENTIER);}
[ ] ;
. {printf("Attention caractère %s inconnu \n",yytext); return(ERREUR_LEX);}
%%
