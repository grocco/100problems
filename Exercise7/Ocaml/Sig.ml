module type Exercise7 = sig
  type 'a node = One of 'a | Many of 'a node list

  val flatten : 'a node list -> 'a list
  (** [flatten list] is the list of all elements in [list] and its sublists.
  
      https://en.wikipedia.org/wiki/Flatten

      @param list the list to flatten
      @return the flattened list 
      @examples
        - [flatten (One 1)] is [1]
        - [flatten (Many [One 1; Many [One 2; One 3]; One 4])] is [1; 2; 3; 4]
        - [flatten (Many [])] is []
  *)
end
