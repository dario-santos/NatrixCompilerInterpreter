# Natrix Compiler Interpreter
This is the compiler and interpreter of the Natrix language. (Link to the documentation bellow).


## How to Use It

If you have downloaded the source code use the makefile that is in the folder Compiler.


```sh
make
```

It will generate a file with the name `natrix` that's our compiler/interpreter.

The programm contains a 

The program offers a set of options:

-parser-only: Executes only the lexer and parser.
-print-ast  : Print the abstract syntax tree of the given file.
-interpt    : Uses the interpreter instead of the compiler.

Using an option:

```sh
./natrix -interpt file.nx
```

## How to Test

This project contains a folder with a set of tests, the easiast way to test the compiler and interpreter is to use the entry `test` in the makefile.

```sh
make

make test
```

## Natrix Documentation

The full documentation of the Natrix language can be accessed bellow:

https://dario-santos.github.io/Natrix/index

## Todo:

- [ ] Add support to arrays in the compiler;
- [ ] Bitwise operators;
- [ ] A better memory management.
