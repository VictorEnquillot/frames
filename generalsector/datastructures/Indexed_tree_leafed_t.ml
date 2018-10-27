(** {3 A Indexed_tree_leafed data structure.} *)
(**
{[
               (n,?)
               /  \
            (n,i) (l,i)
            / \
         (n,i) (l,i)
         / \
     (l,i) (l,i)

]} *)


type ('n, 'l, 'i) indexed_tree_leafed = 
(('n, 'i) doublet_node, ('l, 'i) doublet_leaf) Tree_leafed_t.tree_leafed 

and ('n, 'i) doublet_node = ('n, 'i) Doublet_t.doublet
and ('l, 'i) doublet_leaf = ('l, 'i) Doublet_t.doublet
;;
(** It is a tree_leafed where 
    - the nodes are replaced by (node, index) doublet
    - the leaves by (leaf, index) doublet. 

Mind :  
  The index while associated with a vertex 
  in fact concerns the subtrees in the son_lists 
  it does NOT concern a root vertex

  As a consequence the root index is an argument of whole structure 
  which is a function of this index and take a well defined value  
  when applied inside an other structure where the root index has a meaning.


Note :
  This design is lighter than a previous design (leafed_indexed_tree) where
  the Root Vertex was NOT associated with any index.

  This design reuse the tree_leafed design and is easier to use even if 
  function have to be introduced instead of simple values. 
*) 
