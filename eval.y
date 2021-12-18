%{
    // includes here
    #include <stdio.h>
    void yyerror(char *s);
    extern int yylex();
%}

%union{
    unsigned int b;
}

%token true false
%token EOL

%type <b> exp

%left '|'
%left '&'
%left '(' ')'

%%

eval: {;}
    | eval exp {
        printf("%d\n", $2);
        
    }
    | eval EOL {printf("> ");}

exp: exp '|' exp {$$ = $1 | $3;}
    | exp '&' exp {$$ = $1 & $3;}
    | '(' exp ')' {$$ = $2;}
    | true {$$ = 1;}
    | false {$$ = 0;}
    ;
%%


void yyerror(char *s){
    printf("%s\n", s);
}

int main(){
    printf("> ");
    yyparse();
}