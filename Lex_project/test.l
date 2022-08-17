/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
%}

/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline and
third rule does not take input after the enter***/
%%
["][a-zA-Z]+[_a-zA-Z0-9]*[0-9]*["] {printf("%s : String\n",yytext);}
([a-z]{2,}) {printf("%s : keyword\n",yytext);}
([a-z,A-Z]+[_]*[a-z,A-Z]*)+[(][][)] {printf("%s : function name\n",yytext);}
([a-zA-Z]+[_a-zA-Z0-9]*[0-9]*) {printf("%s : valid identifier\n",yytext);}
([<>]=?|[!=]=) {printf("%s : relational operator\n",yytext);}
([*+/-]|[+|-]{2}) {printf("%s :arithmatic operator\n",yytext);}
([&]{2}|[|]{2}|[!]=?) {printf("%s : logical operator\n",yytext);}
([=]|[+]=|[*]=|[-]=) {printf("%s : Assignment operator\n",yytext);}
([0-9]+|[0-9]+[.][0-9]+) {printf("%s : valid number\n",yytext);}
([\n]|[\t]|[ ]) {}
. {printf("%s : Other Symbols\n",yytext);}
%%

/*** Code Section***/

int yywrap(){}
int main(){

// Explanation:
// yywrap() - wraps the above rule section
/* yyin - takes the file pointer
		which contains the input*/
/* yylex() - this is the main flex function
		which runs the Rule Section*/
// yytext is the text in the buffer


// to take input from file
FILE *fp;
fp = fopen("in.txt","r");
yyin = fp;


yylex();

return 0;
}
