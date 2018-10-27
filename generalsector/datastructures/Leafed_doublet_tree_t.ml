(** {3 A Leafed_doublet_tree data structure.} *)
(**
{[

  Misconception see indexed_tree_leafed instead 

               (n,j)
               /  \
            (n,j) (l,i)
            / \
         (n,j) (l,i)
         / \
     (l,i) (l,i)

]} *)


type ('n, 'j, 'l, 'i) leafed_doublet_tree = 
(('n, 'j) doublet_node, ('l, 'i) doublet_leaf) Tree_leafed_t.tree_leafed 

and ('n, 'j) doublet_node = ('n, 'j) Doublet_t.doublet
and ('l, 'i) doublet_leaf = ('l, 'i) Doublet_t.doublet
;;
(** It is a tree_leafed where 
    - the node are replaced by (node, index) doublet
    - the leaves by (leaf, index) doublet. 

  The index concerns the subtrees in a Son List 
  NOT a Inner or a Leaf 
*) 
