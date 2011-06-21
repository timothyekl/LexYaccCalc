all: calc

calc: calc.y calc.l
	bison -y -d calc.y
	flex calc.l
	gcc -c y.tab.c lex.yy.c
	gcc y.tab.o lex.yy.o -o calc

clean: FORCE
	rm -f y.tab.[co] lex.yy.[co] calc y.tab.h

test: calc
	rspec calc_spec.rb

FORCE:
