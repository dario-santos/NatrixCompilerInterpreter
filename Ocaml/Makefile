CMO=lexer.cmo parser.cmo main.cmo
GENERATED = lexer.ml parser.ml parser.mli
BIN=natrix
FLAGS=

all: $(BIN)
	./$(BIN) ./test.nx

$(BIN):$(CMO)
	ocamlc $(FLAGS) -o $(BIN) $(CMO)

.SUFFIXES: .mli .ml .cmi .cmo .mll .mly

.mli.cmi:
	ocamlc $(FLAGS) -c  $<

.ml.cmo:
	ocamlc $(FLAGS) -c  $<

.mll.ml:
	ocamllex $<

.mly.ml:
	menhir -v $<

.mly.mli:
	ocamlyacc -v $<

clean:
	rm -f *.cm[io] *.o *~ $(GENERATED) parser.output

.depend depend:$(GENERATED)
	rm -f .depend
	ocamldep *.ml *.mli > .depend

include .depend
