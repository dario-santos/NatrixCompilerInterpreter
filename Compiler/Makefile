all:
	dune exec ./natrix.exe ./test.nx
	gcc -s -no-pie ./test.s

test:
	./run-tests
	./run-tests_c

clean:
	dune clean
