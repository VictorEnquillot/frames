(** {3 A Leafed_indexed_tree data structure.} *)
(**
{[
                  n
                 /  \
              (n, i) (l,i)   <--- sons are indexed in doublet_list
              /\
         (n, i)(l,i)
         /\
     (l,i)(l,i)

]} *)


type ('n, 'i, 'l) leafed_indexed_tree = 
  | Empty
  | Leaf of 'l
  | Inner of 'n * ( ('n, 'i, 'l) leafed_indexed_tree, 'i) Doublet_list_t.doublet_list
;;
(** It is a tree_leafed where the son list ies replaced by a doublet_list to
    index the sons in an arbitrary way independent of the list order *) 
