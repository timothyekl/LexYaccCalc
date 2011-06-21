%{
    #include "y.tab.h"

    void yyerror(char *);
%}

%%

[0-9]+  {
            yylval = atoi(yytext);
            return NUMBER;
        }

[+\-\*\/\(\)\n]    {
                return (int) yytext[0];
            }

[ \t]+ ;

.       { yyerror("Unknown input"); }

%%

int yywrap(void) {
    return 1;
}
