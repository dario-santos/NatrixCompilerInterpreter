CMO=lexer.cmo parser.cmo interp.cmo main.cmo
CMX=lexer.cmx parser.cmx interp.cmx main.cmx
GENERATED = lexer.ml parser.ml parser.mli
FLAGS=

all: natrix
	./natrix test.nx

natrix: $(CMO)
	ocamlc $(FLAGS) -o $@ nums.cma $(CMO)
	ocamlopt $(FLAGS) -o natrixwind $(CMX)

.SUFFIXES: .mli .ml .cmi .cmo .mll .mly

.mli.cmi:
	ocamlc $(FLAGS) -c  $<
	ocamlopt $(FLAGS) -c  $<

.ml.cmo:
	ocamlc $(FLAGS) -c $<
	ocamlopt $(FLAGS) -c  $<

.mll.ml:
	ocamllex $<

.mly.ml:
	menhir -v $<

.mly.mli:
	menhir -v $<

clean:
	rm -f *.cm[iox] *.o *.annot *~ natrix $(GENERATED)
	rm -f parser.output parser.automaton

.depend depend:$(GENERATED)
	rm -f .depend
	ocamldep *.ml *.mli > .depend

include .depend
