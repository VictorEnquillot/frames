(* {3 A canonical index for Any Tree Node} *)

type sole_index = int list
;;
(**
                              [1]
            ---------------------------------
           /                   |             \
      [1; 1]                [2; 1]         [3; 1]
      /      \                /    \            |
    [1; 1; 1]   [1; 2; 1]  [1; 2; 1] [1; 2; 1]  [1; 3; 1] 
      /     \                                      |
[1; 1; 1; 1] [2; 1; 2; 1]                      [1; 1; 3; 1] 

The depth is the length of the index list.
*)
