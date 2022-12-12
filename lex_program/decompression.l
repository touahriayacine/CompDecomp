%{

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

%}

%start aa bb cc dd ee ff gg hh ii jj kk ll mm nn oo pp qq rr ss tt uu vv ww xx yy zz AA BB CC DD EE FF GG HH II JJ KK LL MM NN OO PP QQ RR SS TT UU VV WW XX YY ZZ

%%
" " {fprintf(yyout," ");}
\n {fprintf(yyout,"\n");}
# {yywrap();}
a {fprintf(yyout,"a");BEGIN aa;}
b {fprintf(yyout,"b");BEGIN bb;}
c {fprintf(yyout,"c");BEGIN cc;}
d {fprintf(yyout,"d");BEGIN dd;}
e {fprintf(yyout,"e");BEGIN ee;}
f {fprintf(yyout,"f");BEGIN ff;}
g {fprintf(yyout,"g");BEGIN gg;}
h {fprintf(yyout,"h");BEGIN hh;}
i {fprintf(yyout,"i");BEGIN ii;}
j {fprintf(yyout,"j");BEGIN jj;}
k {fprintf(yyout,"k");BEGIN kk;}
l {fprintf(yyout,"l");BEGIN ll;}
m {fprintf(yyout,"m");BEGIN mm;}
n {fprintf(yyout,"n");BEGIN nn;}
o {fprintf(yyout,"o");BEGIN oo;}
p {fprintf(yyout,"p");BEGIN pp;}
q {fprintf(yyout,"q");BEGIN qq;}
r {fprintf(yyout,"r");BEGIN rr;}
s {fprintf(yyout,"s");BEGIN ss;}
t {fprintf(yyout,"t");BEGIN tt;}
u {fprintf(yyout,"u");BEGIN uu;}
v {fprintf(yyout,"v");BEGIN vv;}
w {fprintf(yyout,"w");BEGIN ww;}
x {fprintf(yyout,"x");BEGIN xx;}
y {fprintf(yyout,"y");BEGIN yy;}
z {fprintf(yyout,"z");BEGIN zz;}

A {fprintf(yyout,"A");BEGIN AA;}
B {fprintf(yyout,"B");BEGIN BB;}
C {fprintf(yyout,"C");BEGIN CC;}
D {fprintf(yyout,"D");BEGIN DD;}
E {fprintf(yyout,"E");BEGIN EE;}
F {fprintf(yyout,"F");BEGIN FF;}
G {fprintf(yyout,"G");BEGIN GG;}
H {fprintf(yyout,"H");BEGIN HH;}
I {fprintf(yyout,"I");BEGIN II;}
J {fprintf(yyout,"J");BEGIN JJ;}
K {fprintf(yyout,"K");BEGIN KK;}
L {fprintf(yyout,"L");BEGIN LL;}
M {fprintf(yyout,"M");BEGIN MM;}
N {fprintf(yyout,"N");BEGIN NN;}
O {fprintf(yyout,"O");BEGIN OO;}
P {fprintf(yyout,"P");BEGIN PP;}
Q {fprintf(yyout,"Q");BEGIN QQ;}
R {fprintf(yyout,"R");BEGIN RR;}
S {fprintf(yyout,"S");BEGIN SS;}
T {fprintf(yyout,"T");BEGIN TT;}
U {fprintf(yyout,"U");BEGIN UU;}
V {fprintf(yyout,"V");BEGIN VV;}
W {fprintf(yyout,"W");BEGIN WW;}
X {fprintf(yyout,"X");BEGIN XX;}
Y {fprintf(yyout,"Y");BEGIN YY;}
Z {fprintf(yyout,"Z");BEGIN ZZ;}

<aa>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"a");BEGIN INITIAL;}
<bb>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"b");BEGIN INITIAL;}
<cc>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"c");BEGIN INITIAL;}
<dd>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"d");BEGIN INITIAL;}
<ee>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"e");BEGIN INITIAL;}
<ff>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"f");BEGIN INITIAL;}
<gg>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"g");BEGIN INITIAL;}
<hh>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"h");BEGIN INITIAL;}
<ii>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"i");BEGIN INITIAL;}
<jj>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"j");BEGIN INITIAL;}
<kk>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"k");BEGIN INITIAL;}
<ll>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"l");BEGIN INITIAL;}
<mm>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"m");BEGIN INITIAL;}
<nn>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"n");BEGIN INITIAL;}
<oo>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"o");BEGIN INITIAL;}
<pp>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"p");BEGIN INITIAL;}
<qq>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"q");BEGIN INITIAL;}
<rr>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"r");BEGIN INITIAL;}
<ss>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"s");BEGIN INITIAL;}
<tt>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"t");BEGIN INITIAL;}
<uu>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"u");BEGIN INITIAL;}
<vv>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"v");BEGIN INITIAL;}
<ww>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"w");BEGIN INITIAL;}
<xx>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"x");BEGIN INITIAL;}
<yy>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"y");BEGIN INITIAL;}
<zz>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"z");BEGIN INITIAL;}

<AA>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"A");BEGIN INITIAL;}
<BB>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"B");BEGIN INITIAL;}
<CC>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"C");BEGIN INITIAL;}
<DD>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"D");BEGIN INITIAL;}
<EE>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"E");BEGIN INITIAL;}
<FF>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"F");BEGIN INITIAL;}
<GG>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"G");BEGIN INITIAL;}
<HH>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"H");BEGIN INITIAL;}
<II>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"I");BEGIN INITIAL;}
<JJ>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"J");BEGIN INITIAL;}
<KK>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"K");BEGIN INITIAL;}
<LL>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"L");BEGIN INITIAL;}
<MM>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"M");BEGIN INITIAL;}
<NN>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"N");BEGIN INITIAL;}
<OO>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"O");BEGIN INITIAL;}
<PP>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"P");BEGIN INITIAL;}
<QQ>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"Q");BEGIN INITIAL;}
<RR>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"R");BEGIN INITIAL;}
<SS>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"S");BEGIN INITIAL;}
<TT>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"T");BEGIN INITIAL;}
<UU>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"U");BEGIN INITIAL;}
<VV>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"V");BEGIN INITIAL;}
<WW>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"W");BEGIN INITIAL;}
<XX>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"X");BEGIN INITIAL;}
<YY>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"Y");BEGIN INITIAL;}
<ZZ>[1-9][0-9]* {int iteration = atoi(yytext);for(int i = 0; i<iteration -1;i++)fprintf(yyout,"Z");BEGIN INITIAL;}

%%

int yywrap(void){return 1;}

int main(int *argc , char *argv[]){
    extern FILE *yyin, *yyout;
    yyin = fopen(argv[1], "r");
    yyout = fopen("prog_dcmp.txt" , "w+");
    BEGIN INITIAL;
    yylex();
    return 0;
}