let test_last_two () =
  let print_result lst =
    match Exercise2.last_two lst with
    | None -> Printf.printf "last_two [] = None\n"
    | Some (x, y) ->
        Printf.printf "last_two [%s] = Some (%s, %s)\n" (String.concat "; " lst)
          x y
  in
  print_result [];
  print_result [ "a" ];
  print_result [ "a"; "b" ];
  print_result [ "a"; "b"; "c" ];
  print_result [ "a"; "b"; "c"; "d" ]

let () = test_last_two ()
let () = Printf.printf "Exercise2.test_last_two: OK\n"

