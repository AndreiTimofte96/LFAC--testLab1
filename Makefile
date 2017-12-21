all:
	lex $(f).l
	gcc lex.yy.c -ll -o $(f)
	./$(f) $(f).txt