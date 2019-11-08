%{
	#include<stdio.h>
	#include<ctype.h>
	int c=1;
%}

op "++"|"--"
rop "<"|">"|"<="|">="|"=="|"!="
id [a-zA-Z][a-zA-Z0-9]*
no [0-9]*
pp [\n]
%%
[for\(({id}=({no}|{id}))?\;{id}{rop}({id}|{no})\;{id}{op}\){pp}+\{(.*\n)*.*\}] {printf("correct\n");c=0;}
%%

int main()
{ 
	yyin=fopen("loop.c","r");
	yylex();
	if(c==1)
		printf("incorrect");
}

int yywrap()
{
	return 1;
}

//for (i=0;i<1);
//loop.c
