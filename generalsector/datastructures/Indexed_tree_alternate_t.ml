(** {3 A indexed_tree data structure.} *)
(**
{[
   TODO to be redone as
 
 
                 (n,?)
                 /  \
              (n,i) (l,i) 
              / \
           (l,i)(l,i)

   type ('n, 'i) indexed_tree = ('n, 'i) Doublet_t.doublet) Tree_t.tree 

                   n
                 /  \
              (n,i) (n,i)   <--- sons are indexed in doublet_list
              / \
           (n,i)(n,i)

  and indexed_tree renamed as indexed_tree_alternate 
]} *)


type ('n, 'i) indexed_tree = 
  | Empty
  | Leaf of 'n
  | Inner of 'n * ( ( ('n, 'i) indexed_tree, 'i) Doublet_list_t.doublet_list )
;;
(** It is a tree where the son list ies replaced by a doublet_list to
    index the sons in an arbitrary way independent of the list order *) 
