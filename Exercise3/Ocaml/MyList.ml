let rec nth list n =
  match list with
  | [] -> raise (Failure "nth")
  | hd :: tl -> if n = 0 then Some hd else nth tl (n - 1);;

let rec at n = function
  | [] -> raise (Failure "at")
  | hd :: tl -> if n = 0 then Some hd else at (n - 1) tl;;