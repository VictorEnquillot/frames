(** {3 A Tree data structure.} *)
(**
{[                  node names

      a             root
    /  \
   b    c           topson   topson_leaf    topson_notleaf  
      /  \         
     d    e         grandson grandson_leaf  grandson_notleaf  
   / |   /|\
  f  g  h i j       leaf 


a vertex is a 'a.
a root is a vertex at the top of the tree (no father).

a son is a vertex not beeing root.
a sontree is a tree having a son as root 
a topson is a son of a root
a topson_tree is a subtree having a topson as root 

a father is a vertex up to some node of a tree
a fathertree is a tree including a subtree

The depth of a node is the length of the path to its Root (i.e., its root path)

]}
*)

type 'a tree = 
  | Empty
  | Leaf of 'a 
  | Inner of 'a * 'a tree list
;;
