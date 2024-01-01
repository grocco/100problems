let () = assert(Exercise4.length [1;2;3;4;5] = 5)
let () = assert(Exercise4.length [] = 0)
let () = assert(Exercise4.length_tailrec [1] = 1)
let () = assert(Exercise4.length_tailrec [1;2;3;4;5] = 5)
let () = assert(Exercise4.length_tailrec [] = 0)
let () = Printf.printf "Exercise4.length: OK\n"
let () = Printf.printf "Exercise4.length_tailrec: OK\n"