(** {3 A Capped_tree data structure.} *)
(**
{[
                      Cap (type 'a)
                      / \         \ 
                tree_1 tree_2 ... tree_n  (type 'b)


a vertex is a 'a.
]} *)


type ('a, 'b) capped_tree = ('a, 'b Tree_t.tree list) Doublet_t.doublet 
;;
