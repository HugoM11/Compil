all:
	yacc -v -d exp4.y
	lex exp4.l
	gcc -c lex.yy.c
	gcc y.tab.c lex.yy.o -o exp4 -ll

clear:
	rm *.o lex.yy.c y.output y.tab.* exp4