let () =
  assert (Exercise6.is_palindrome [ 1; 2; 3; 4; 5 ] = false);
  assert (Exercise6.is_palindrome [ 1; 2; 3; 2; 1 ] = true);
  assert (Exercise6.is_palindrome [ 1; 2; 3; 3; 2; 1 ] = true);
  assert (Exercise6.is_palindrome [ 1; 2; 3; 4; 3; 2; 1 ] = true);
  assert (Exercise6.is_palindrome [ 1 ] = true);
  assert (Exercise6.is_palindrome [] = true);

  assert (Exercise6.is_palindrome_2 [ 1; 2; 3; 4; 5 ] = false);
  assert (Exercise6.is_palindrome_2 [ 1; 2; 3; 2; 1 ] = true);
  assert (Exercise6.is_palindrome_2 [ 1; 2; 3; 3; 2; 1 ] = true);
  assert (Exercise6.is_palindrome_2 [ 1; 2; 3; 4; 3; 2; 1 ] = true);
  assert (Exercise6.is_palindrome_2 [ 1 ] = true);
  assert (Exercise6.is_palindrome_2 [] = true);

  Printf.printf "Exercise 6: OK\n"
