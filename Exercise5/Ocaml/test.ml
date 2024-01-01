let () = assert(Exercise5.rev [1;2;3;4;5] = [5;4;3;2;1])
let () = assert(Exercise5.rev [] = [])
let () = assert(Exercise5.rev [1] = [1])
let () = assert(Exercise5.rev (Exercise5.rev [1;2;3;4;5]) = [1;2;3;4;5])
let () = Printf.printf "Exercise5.rev tests passed!\n"