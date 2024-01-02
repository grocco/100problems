let rec is_palindrome = function
  | [] -> true
  | [ x ] -> true
  | x :: xs ->
      let rec last_and_rest = function
        | [] -> failwith "empty list"
        | [ y ] -> (y, [])
        | y :: ys ->
            let last, rest = last_and_rest ys in
            (last, y :: rest)
      in
      let last, rest = last_and_rest xs in
      x = last && is_palindrome rest

let is_palindrome_2 = function l -> l = List.rev l
