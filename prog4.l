%option noyywrap
%{
#include<stdio.h>
int line=1;
%}
%%
"int "|"float "|"char "|"string "|"auto "|"register "|"return "|"for"|"if"|"else"|"switch"|"case "|"exit"|"void "|"struct " {printf("%s\t%d\n",yytext,line); }
[\n] {line++;}
. {}
%%
int main()
{
	yyin=fopen("/home/mansi/Desktop/SS/smp.txt","r");
	yylex();
}
int yyerror()
{
	return 0;
}



/*
	#include<stdio.h>
#include<stdlib.h>
main()
{
	int n, result = 1;
	printf("enter the number to find the factorial\n");
	scanf("%d",&n);
	if(n>=0)
	{
		result = 1;
		for(i=1; i<=n; i++)
			result = result*i;
		printf("factorial of the given number is %d", result);
	}
	else
	{
		printf('factorial cannot be found of a negative value");
	}
}
*/


