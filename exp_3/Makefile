all:
	yacc -v -d exp3.y
	lex exp3.l
	gcc -c lex.yy.c
	gcc y.tab.c lex.yy.o -o exp3 -ll

clear:
	rm *.o lex.yy.c y.output y.tab.* exp3