(** {3 A Leafed_fullindexed_tree data structure.} *)
(**
{[
                    n
                  /  \
                n     l
              /  \
            l     n
                 / \
                l   l
]} *)


type ('n, 'i, 'l) leafed_fullindexed_tree = 
  | Empty
  | Leaf of 'l
  | Inner of ('n * 'i) * ( ('n, 'i, 'l) leafed_fullindexed_tree, 'i) Doublet_list_t.doublet_list
;;

