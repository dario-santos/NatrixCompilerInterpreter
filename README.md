# Natrix Compiler
Um compilador para a linguagem Natrix

## Como compilar

Executa o makefile contido na pasta Compiler

```S
make

./natrix file.nx

```

O programa disponibiliza de um conjunto de opções

-parser-only: Executa o lexer e o parser.
-print-ast  : Imprime a árvore de sintaxe abstrata do ficheiro dado.
-interpt    : Utiliza o interpretador em vez do compilador.

Utilização:

```S
./natrix -parser-only file.nx
```


## Como testar

O makefile disponibiliza de uma entrada para testes

```S
make

make test
```

## Documentação

No link abaixo temos acesso à documentação feita para a linguagem Natrix.

https://dario-santos.github.io/Natrix/index

## Todo:

- [ ] Um comando para o do while (em vez do uso do while e do break);
- [ ] if/else if/else;
- [ ] Vetores no compilador;
- [ ] operadores bitwise;
- [ ] Um melhor manuseonamento da memório.
