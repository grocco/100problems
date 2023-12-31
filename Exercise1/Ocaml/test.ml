let test_last () =
  let print_result lst =
    match Exercise1.last lst with
    | Some x -> Printf.printf "last [%s] = Some %s\n" (String.concat "; " lst) x
    | None -> Printf.printf "last [] = None\n"
  in
  print_result ["a"; "b"; "c"; "d"];
  print_result []

let () = test_last ()