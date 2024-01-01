let rec length = function
  | [] -> 0
  | _::t -> 1 + length t;;

  (* This function is tail-recursive: it uses a constant amount of stack memory regardless of list size. *)
let length_tailrec l = 
  let rec aux n = function
    | [] -> n
    | _::t -> aux (n + 1) t
  in aux 0 l;;
(* Tail recursive means that the compiler can optimize the function call so that it does not consume stack memory. *)
(* We can make the function tail-recursive by using an accumulator. *)
(* In this case the accumulator is the n parameter. *)
(* The function aux is tail-recursive. *)