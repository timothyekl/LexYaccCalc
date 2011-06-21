%{
    #include <stdio.h>

    int yylex(void);
    void yyerror(char *);
%}

%token NUMBER

%left '+' '-'
%left '*' '/'

%%

program: program expr '\n' { printf("%d\n", $2); }
       |
       ;

expr: NUMBER
    | expr '+' expr { $$ = $1 + $3; }
    | expr '-' expr { $$ = $1 - $3; }
    | expr '*' expr { $$ = $1 * $3; }
    | expr '/' expr { $$ = $1 / $3; }
    | '(' expr ')' { $$ = $2; }
    | '-' expr { $$ = -1 * $2; }
    ;

%%

void yyerror(char * s) {
    fprintf(stderr, "%s\n", s);
}

int main() {
    yyparse();
    return 0;
}
