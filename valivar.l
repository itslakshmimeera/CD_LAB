%{
#include "y.tab.h"   // include yacc definitions
%}

%%

[a-zA-Z][a-zA-Z0-9]*    { return IDENT; }   // valid variable form
.|\n                    { return *yytext; } // return single char otherwise

%%
int yywrap() {
    return 1;
}
