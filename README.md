# Compiler-Lab

## Install Flex and Bison on Linux:

### Step-1: Run the following commands in your terminal
* sudo apt update
* sudo apt-get install bison flex

### Step-2: Commands to compile lex file:

* lex filename.l (in my case it is test.l)
* gcc lex.yy.c 
* ./a.out

## Problem Statement

#### Write a program using flex and bison that takes input and divide the lexemes of that input into following tokens:

1. **Keywords:** if,then,also,int,char,main,str,return,struct,class...
2. **Relational Operators:** >,<,>=,<=,==
3. **Arithmatic Operators:** +,-,*,/,++,--
4. **Assignment Operators:** =,+=,*=,/=
5. **Logical Operators:** &&,||,!,!=
6. **Valid Numbers:** 0,1,2,3,12.43,0.12 ....
7. **Valid Identifiers:** length,len234, my_name12, temp23name ...
8. **Function Name:** main(),foo(),myFunc() ...
9. **Other Symbols:** { ,} ,( ,) ,[ ,] ,; ,' ,' , ", " ...
10. **String**: "CUET","Sourav","cse", ...

### Note:
- I have taken input from in.txt file.
- You can change input by changing the contents of the input file.

## Commands:

* git clone https://github.com/sahasourav17/Compiler-Lab.git

* cd Compiler-lab

* cd Lex_project

* After that follow **Step-2**

