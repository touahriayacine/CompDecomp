%{

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

%}

%%
[a-zA-Z] yymore();
[0-9]+ {int nb_it = atoi(&yytext[1]); for(int i=0;i<nb_it;i++) fprintf(yyout,"%c",yytext[0]);}
" " {fprintf(yyout," ");}
\n {fprintf(yyout,"\n");}

%%

int yywrap(void){return 1;}

int main(int *argc , char *argv[]){
    extern FILE *yyin, *yyout;
    yyin = fopen(argv[1], "r");
    yyout = fopen("prog_dcmp.txt" , "w+");
    yylex();
    return 0;
}