(** {3 A Capped_indexed_tree_leafed data structure.} *)
(**
{[
                    c
                    *    
                  / \ \    a list of trees 
               (n,i) ..(n,i)
                / \   / \
             (n,i) (l,i) .. ..
              / \
           (l,i) (l,i)

]} *)


type ('c, 'n, 'l, 'i) capped_indexed_tree_leafed = ('c, ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed list) Doublet_t.doublet 
;;
