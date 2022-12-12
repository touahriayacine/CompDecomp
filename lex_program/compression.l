%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}


%%
" " fprintf(yyout," ");
a+ fprintf(yyout,"a%d" , yyleng);
b+ fprintf(yyout,"b%d" , yyleng);
c+ fprintf(yyout,"c%d" , yyleng);
d+ fprintf(yyout,"d%d" , yyleng);
e+ fprintf(yyout,"e%d" , yyleng);
f+ fprintf(yyout,"f%d" , yyleng);
g+ fprintf(yyout,"g%d" , yyleng);
h+ fprintf(yyout,"h%d" , yyleng);
i+ fprintf(yyout,"i%d" , yyleng);
j+ fprintf(yyout,"j%d" , yyleng);
k+ fprintf(yyout,"k%d" , yyleng);
l+ fprintf(yyout,"l%d" , yyleng);
m+ fprintf(yyout,"m%d" , yyleng);
n+ fprintf(yyout,"n%d" , yyleng);
o+ fprintf(yyout,"o%d" , yyleng);
p+ fprintf(yyout,"p%d" , yyleng);
q+ fprintf(yyout,"q%d" , yyleng);
r+ fprintf(yyout,"r%d" , yyleng);
s+ fprintf(yyout,"s%d" , yyleng);
t+ fprintf(yyout,"t%d" , yyleng);
u+ fprintf(yyout,"u%d" , yyleng);
v+ fprintf(yyout,"v%d" , yyleng);
w+ fprintf(yyout,"w%d" , yyleng);
x+ fprintf(yyout,"x%d" , yyleng);
y+ fprintf(yyout,"y%d" , yyleng);
z+ fprintf(yyout,"z%d" , yyleng);
A+ fprintf(yyout,"A%d" , yyleng);
B+ fprintf(yyout,"B%d" , yyleng);
C+ fprintf(yyout,"C%d" , yyleng);
D+ fprintf(yyout,"D%d" , yyleng);
E+ fprintf(yyout,"E%d" , yyleng);
F+ fprintf(yyout,"F%d" , yyleng);
G+ fprintf(yyout,"G%d" , yyleng);
H+ fprintf(yyout,"H%d" , yyleng);
I+ fprintf(yyout,"I%d" , yyleng);
J+ fprintf(yyout,"J%d" , yyleng);
K+ fprintf(yyout,"K%d" , yyleng);
L+ fprintf(yyout,"L%d" , yyleng);
M+ fprintf(yyout,"M%d" , yyleng);
B+ fprintf(yyout,"N%d" , yyleng);
O+ fprintf(yyout,"O%d" , yyleng);
P+ fprintf(yyout,"P%d" , yyleng);
Q+ fprintf(yyout,"Q%d" , yyleng);
R+ fprintf(yyout,"R%d" , yyleng);
S+ fprintf(yyout,"S%d" , yyleng);
T+ fprintf(yyout,"T%d" , yyleng);
U+ fprintf(yyout,"U%d" , yyleng);
V+ fprintf(yyout,"V%d" , yyleng);
W+ fprintf(yyout,"W%d" , yyleng);
X+ fprintf(yyout,"X%d" , yyleng);
Y+ fprintf(yyout,"Y%d" , yyleng);
Z+ fprintf(yyout,"Z%d" , yyleng);
\n fprintf(yyout,"\n");
# yywrap();
. {REJECT;}
%%


int yywrap(void){return 1;}

int main(int argc , char *argv[]){
    extern FILE *yyin , *yyout;
    yyin = fopen(argv[1],"r");
    yyout = fopen("prog_cmp.txt","w+");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}