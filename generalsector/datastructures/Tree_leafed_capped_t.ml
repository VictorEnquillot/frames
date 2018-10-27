(** {3 A Tree_leafed data structure.} *)
(**
{[
                    c
                    *    
                  / \ \    a list of trees 
                 n ..  n
                / \   / \
               n   l .. ..
              / \
             l   l

]} *)


type ('c, 'n, 'l) tree_leafed_capped = ('c, ('n, 'l) Tree_leafed_t.tree_leafed list) Doublet_t.doublet 
;;

