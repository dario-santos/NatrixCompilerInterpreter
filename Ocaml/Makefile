CMO=lexer.cmo main.cmo
GENERATED = lexer.ml
BIN=natrix
FLAGS=

all: $(BIN)
	./$(BIN) ./test.txt

$(BIN):$(CMO)
	ocamlc $(FLAGS) -o $(BIN) $(CMO)

.SUFFIXES: .mli .ml .cmi .cmo .mll .mly

.mli.cmi:
	ocamlc $(FLAGS) -c  $<

.ml.cmo:
	ocamlc $(FLAGS) -c  $<

.mll.ml:
	ocamllex $<

clean:
	rm -f *.cm[io] *.o *~ $(BIN) $(GENERATED) parser.output

.depend depend:$(GENERATED)
	rm -f .depend
	ocamldep *.ml *.mli > .depend

include .depend