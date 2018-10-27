(* {3 A canonical index for Any Tree Node} *)

(** {6 Making.} *)

val make_of_ordinal : Ordinal_p.ordinal -> int list -> Sole_index_t.sole_index;; 

val make : int -> int list -> Sole_index_t.sole_index;; 

val sole_index_tree_of_tree : 'a Tree_t.tree -> Sole_index_t.sole_index Tree_t.tree;;
val sole_index_tree_of_tree_of_root_sole_index : 'a Tree_t.tree -> int list -> Sole_index_t.sole_index Tree_t.tree;;

val current_index_off_sole_index : Sole_index_t.sole_index -> int;; 
(* Ex.: 3 = current_index_off_sole_index [3; 2; 4] *) 

val son_sole_index_list_of_length_of_sole_index : int -> Sole_index_t.sole_index -> Sole_index_t.sole_index list;;
(* Ex.: [[1; 2; 4]; [2; 2; 4]; [3; 2; 4]] = f 3 [2; 4] *) 

val son_sole_index_list_of_int_of_length_of_sole_index : int -> int -> Sole_index_t.sole_index -> Sole_index_t.sole_index list;;
(* [[3; 2; 4]; [3; 2]; [4]] = f 5 [3; 2; 4] *) 

val father_sole_index_off_sole_index : Sole_index_t.sole_index -> Sole_index_t.sole_index;;

val grandfather_sole_index_off_sole_index : Sole_index_t.sole_index -> Sole_index_t.sole_index;;

val father_index_off_sole_index : Sole_index_t.sole_index -> int;;

val sole_index_list_off_sole_index : Sole_index_t.sole_index -> Sole_index_t.sole_index list;;
(* [[3; 2; 4]; [3; 2]; [4]] = f [3; 2; 4] *)

val sole_index_tree_off_sole_index_list_of_sole_index : Sole_index_t.sole_index list -> Sole_index_t.sole_index -> Sole_index_t.sole_index Tree_t.tree;;

val name : Sole_index_t.sole_index -> string;;

val compare : Sole_index_t.sole_index -> Sole_index_t.sole_index -> int;;

val next : Sole_index_t.sole_index -> Sole_index_t.sole_index;;

val head_index : Sole_index_t.sole_index -> int;;
