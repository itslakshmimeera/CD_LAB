%{
#include <stdio.h>
#include <stdlib.h>
%}

%token IDENT

%%
input : IDENT   { printf("Valid variable name\n"); }
      | error   { printf("Invalid variable name\n"); yyerrok; }
      ;
%%

int main() {
    printf("Enter a variable name: ");
    yyparse();
    return 0;
}

int yyerror(const char *s) {
    return 0;  // suppress default error messages
}
