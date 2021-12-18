%{
    #include "eval.tab.h"   
%}
%option noyywrap
%option outfile = "eval.lex.c"

%%

"true" {
    return true;
}

"false" {
    return false;
}

[\(\)\|\&] {
    return yytext[0];
}

\n {
    return EOL;
}

[ \t]

. {
    printf("Unexpected token\n");
}

%%