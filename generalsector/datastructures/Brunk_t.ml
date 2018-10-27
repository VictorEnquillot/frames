(** {3 A Brunk data structure.} *)

(** It is an element of a fir-tree 
    It is a piece of trunk with one branch

          | |  'a  ( list head )
          | |
         ------
          | |  'a
          | |
         ------
          | |  'a
          | |  
         ------   
          | |  'a
 Brunk    | |______//__
          | |----\\----  <--- branch : 'a tree
          | |     \\
        -------
*)


type 'a brunk = ('a list, 'a Tree_t.tree) Doublet_t.doublet 
;;
(** It doublets 
    a piece of (fir) trunk without any branches
    with one branch (a sub-tree) 
*)
