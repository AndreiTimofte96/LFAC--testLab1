%{
#include <stdio.h>
int i;
%}
cifra [0-9]
nr {cifra}+
%%
{nr} {i=atoi(yytext); if(i%2==0) printf("%d\n",i);};
ab+  {printf ("[%s]\n", yytext);}
.|\n ;  
%%
int main(int argc, char** argv){
FILE *g;
if(argc>0)
 yyin = fopen(argv[1],"r");

/*if(!(g = fopen("out.txt","w")))
    fprintf(stderr,"eroare creare fisier!");
else
 yyout=g; */

yylex();

}



