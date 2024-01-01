let rec rev = function
  | [] -> []
  | l::r -> (rev r) @ [l];;