all:
	yacc -v -d notes.y
	lex notes.l
	gcc -c lex.yy.c
	gcc y.tab.c lex.yy.o -o notes -ll

clear:
	rm *.o lex.yy.c y.output y.tab.* notes