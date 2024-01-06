let () =
  assert (
    Exercise7.flatten [ One 1; Many [ One 2; Many [ One 3; One 4 ]; One 5 ] ]
    = [ 1; 2; 3; 4; 5 ]);
  assert (
    Exercise7.flatten
      [ One "a"; Many [ One "b"; Many [ One "c"; One "d" ]; One "e" ] ]
    = [ "a"; "b"; "c"; "d"; "e" ]);
  assert (Exercise7.flatten [] = []);
  assert (
    Exercise7.flatten
      [ Many [ One "a"; Many [ One "b"; One "c" ]; One "d" ]; One "e" ]
    = [ "a"; "b"; "c"; "d"; "e" ]);
  assert (
    Exercise7.flatten
      [
        One "a";
        Many [ One "b"; Many [ One "c"; One "d" ]; One "e" ];
        Many [ One "f"; One "g" ];
      ]
    = [ "a"; "b"; "c"; "d"; "e"; "f"; "g" ]);
  assert (
    Exercise7.flatten
      [
        Many [ One "a"; Many [ One "b"; One "c" ]; One "d" ];
        One "e";
        Many [ One "f"; One "g" ];
      ]
    = [ "a"; "b"; "c"; "d"; "e"; "f"; "g" ]);
  assert (
    Exercise7.flatten
      [
        Many [ One "a"; Many [ One "b"; One "c" ]; One "d" ];
        One "e";
        Many [ One "f"; One "g" ];
        Many [ One "h"; Many [ One "i"; One "j" ]; One "k" ];
      ]
    = [ "a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"; "k" ]);

  print_endline "Exercise 7: Success!"
