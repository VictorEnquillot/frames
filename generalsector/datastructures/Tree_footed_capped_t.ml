(** {3 A Capped_tree data structure.} *)
(**
{[
                      Cap (type 'a)
                           |

                       Tree (type 'b)
                      / \         \ 
                tree_1 tree_2 ... (type 'b)

                           |
  
                      Foot (type 'c)

a vertex is a 'a.
]} *)


type ('a, 'b, 'c) tree_footed_capped = ('a, 'b Tree_t.tree, 'c) Triplet_t.triplet 
;;
