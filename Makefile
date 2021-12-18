

eval: eval.l eval.y
	flex eval.l
	bison -d eval.y
	gcc eval.lex.c eval.tab.c -o eval

clean: eval.lex.c eval.tab.c eval
	rm eval.lex.c eval.tab.c eval