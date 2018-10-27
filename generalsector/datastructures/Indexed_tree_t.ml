(** {3 A indexed_tree data structure.} *)
(**
{[
 
                 (n,?)
                 /  \
              (n,i) (l,i) 
              / \
           (l,i)(l,i)

]} *)


type ('n, 'i) indexed_tree = (('n, 'i) Doublet_t.doublet) Tree_t.tree 
;;
(** It is a tree where each vertex is replaced by a doublet_list to
    index the sons in an arbitrary way independent of the list order 

Mind :  
  The index while associated with a vertex 
  in fact concerns the subtrees in the son_lists 
  it does NOT concern a root vertex

  As a consequence the root index is an argument of whole structure 
  which is a function of this index and take a well defined value  
  when applied inside an other structure where the root index has a meaning.

Note 1 :
  This design is lighter than a previous design (indexed_tree_laternate) where
  the Root Vertex was NOT associated with any index.

  This design reuse the tree_leafed design and is easier to use even if 
  function have to be introduced instead of simple values. 

Note 2 :
  Terms leaf or node designate the left part of a doublet
  otherwise leaf_doublet and node_doublet are used
  the index always designates the right part of a doublet. 

*)
