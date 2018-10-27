(** {3 A Tree_leafed data structure.} *)
(**
{[
                    n
                  /  \
                n     l
              /  \
            l     l

]} *)

type ('n, 'l) tree_leafed = 
  | Empty
  | Leaf of 'l
  | Inner of 'n * ('n, 'l) tree_leafed list
;;

