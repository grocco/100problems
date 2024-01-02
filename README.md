# 100problems
100 problems from the [OCaml offical website](https://ocaml.org/exercises) solved in a multitude of languages

Languages used: OCaml, Rust, Go

## General setup

<details>

<summary>Installation of OCaml and setup</summary>

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
</details>

## Exercises

<details>

<summary>1.) Tail of a List</summary>

```Ocaml
# last ["a" ; "b" ; "c" ; "d"];;
- : string option = Some "d"
# last [];;
- : 'a option = None
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise1/Ocaml)
- [x] [Rust](https://github.com/grocco/100problems/tree/main/Exercise1/Rust)
- [x] [Go](https://github.com/grocco/100problems/tree/main/Exercise1/Go)


</details>

<details>

<summary>2.) Last Two elements of a List</summary>

```Ocaml
# last_two ["a"; "b"; "c"; "d"];;
- : (string * string) option = Some ("c", "d")
# last_two ["a"];;
- : (string * string) option = None
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise2/Ocaml)
- [x] [Rust](https://github.com/grocco/100problems/tree/main/Exercise2/Rust)
- [ ] [Go](https://github.com/grocco/100problems/tree/main/Exercise2/Go)


</details>

<details>

<summary>3.) N'th element of a List</summary>

```Ocaml
# List.nth ["a"; "b"; "c"; "d"; "e"] 2;;
- : string = "c"
# List.nth ["a"] 2;;
Exception: Failure "nth".
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise3/Ocaml)
- [x] [Rust](https://github.com/grocco/100problems/tree/main/Exercise3/Rust)
- [ ] [Go](https://github.com/grocco/100problems/tree/main/Exercise3/Go)

</details>

<details>
<summary>4.) Length of a List</summary>

#### Find the number of elements of a list.

OCaml standard library has `List.length` but we ask that you reimplement it. Bonus for a [tail recursive](https://en.wikipedia.org/wiki/Tail_call) solution.

```Ocaml
# length ["a"; "b"; "c"];;
- : int = 3
# length [];;
- : int = 0
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise4/Ocaml)
- [x] [Rust](https://github.com/grocco/100problems/tree/main/Exercise4/Rust)
- [ ] [Go](https://github.com/grocco/100problems/tree/main/Exercise4/Go)

</details>


<details>
<summary>5.) Reverse a List</summary>

```Ocaml
# rev ["a"; "b"; "c"];;
- : string list = ["c"; "b"; "a"]
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise5/Ocaml)
- [ ] [Rust](https://github.com/grocco/100problems/tree/main/Exercise5/Rust)
- [ ] [Go](https://github.com/grocco/100problems/tree/main/Exercise5/Go)

</details>


<details>
<summary>6.) Is palindrome?</summary>

```Ocaml
# is_palindrome ["x"; "a"; "m"; "a"; "x"];;
- : bool = true
# not (is_palindrome ["a"; "b"]);;
- : bool = true
```

Solved in: 
- [x] [Ocaml](https://github.com/grocco/100problems/tree/main/Exercise6/Ocaml)
- [ ] [Rust](https://github.com/grocco/100problems/tree/main/Exercise6/Rust)
- [ ] [Go](https://github.com/grocco/100problems/tree/main/Exercise6/Go)

</details>
