# 100problems
100 problems solved in a multitude of languages

Languages used: OCaml, Rust


## Day 1 - Ocaml intro

### Install O'caml

On a mac:
```bash
brew install ocaml
brew install opam
```

### Initialize Opam

```bash
opam init
```

### Install an O'caml editor/IDE

VSCODE: Install the "OCaml Platform" extension for OCaml support.

### Create a new Ocaml project

You just need a `.ml` file. that is where you will write the function definition.

In a `.mli` file you will write the interface of the `.ml` file.

Then, you compile the `.ml` and `.mli` files.

```bash
ocamlc -c exercise1.mli 
ocamlc -c exercise1.ml
```

`.cmi` and `.cmo` files will be created accordingly.

Create a `test.ml` file there you will write tests using the solution defined in the `.ml` file.

Then create an executable from it, linking the dependencies:

```bash
ocamlc -o test exercise1.cmo test.ml
```

To run:

```bash
./test
```

### Update language server

If you see the IDE complaining, you might have to change version of the language server.

```bash
opam update
opam upgrade
opam list --all ocaml-lsp-server
opam install ocaml-lsp-server=<version>
```

### To format Ocaml

```bash
opam install ocamlformat
ocamlformat --print-config > .ocamlformat
```

## First exercise - Tail of a List

This is the expected behavior:

```Ocaml
# last ["a" ; "b" ; "c" ; "d"];;
- : string option = Some "d"
# last [];;
- : 'a option = None
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise1/Ocaml)
- [x] [Rust](https://github.com/grocco/100problems/tree/main/Exercise1/Rust)

## Second exercise - Last Two elements of a List

Expectations:

```Ocaml
# last_two ["a"; "b"; "c"; "d"];;
- : (string * string) option = Some ("c", "d")
# last_two ["a"];;
- : (string * string) option = None
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise2/Ocaml)
- [x] [Rust](https://github.com/grocco/100problems/tree/main/Exercise2/Rust)

## Third exercise - N'th element of a List

Expectations:

```Ocaml
# List.nth ["a"; "b"; "c"; "d"; "e"] 2;;
- : string = "c"
# List.nth ["a"] 2;;
Exception: Failure "nth".
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise3/Ocaml)
- [x] [Rust](https://github.com/grocco/100problems/tree/main/Exercise3/Rust)
