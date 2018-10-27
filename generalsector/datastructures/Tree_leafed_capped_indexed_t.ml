(** {3 A capped_indexed_tree_leafed data structure.} *)
(**
{[
                   c
                 /   \
              (n,i)   (n,i)
              /  \     /  \
          (l,i) (l,i)(n,i) (l,i)
                     /  \
                  (l,i) (l,i)
           =

           c * [(n,i); (n,i)]
  
]} *)


type ('c, 'n, 'i, 'l) capped_indexed_tree_leafed = ('c, ('n, 'i, 'l) Indexed_tree_leafed_t.indexed_tree_leafed list ) Doublet_t.doublet
;;
(** It associates a Vertex with a list of indexed_tree_leafeds *)
