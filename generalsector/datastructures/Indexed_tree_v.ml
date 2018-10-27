(** {3 The functionalities for an indexed_tree data structure.} *)

let nam_mod = "Indexed_tree_v";;


(** {6 Making.} *)

let empty = Tree_v.empty;;

let make_of_leaf_doublet dlf = 
  Tree_v.make_of_leaf dlf
;;

let make_node_doublet dln itr_l = 
  Tree_v.make_of_node dln itr_l
;;

let make_of_leaf_of_index lf li =
  let dlf = Doublet_v.make lf li in
  make_of_leaf_doublet dlf 
;;

let make_of_node_of_indexed_tree_list_of_index nd itr_l ni =
  let dlf = Doublet_v.make nd ni in
  make_node_doublet dlf itr_l
;;

(** {6 Iterating.} *)

let map fn fi itr =
  Tree_v.map (Doublet_v.map fn fi) itr 
;; 

let iter fn fi itr =
  Tree_v.iter (Doublet_v.iter fn fi) itr 
;; 

let map2 fn fi itr_1 itr_2 = 
  Tree_v.map2 (Doublet_v.map2 fn fi) itr_1 itr_2  
;; 

(** {6 Extracting.} *)

let root_doublet_off_indexed_tree itr =
  Tree_v.root_off_tree itr
;; 

let root_off_indexed_tree itr =
  let dbr = root_doublet_off_indexed_tree itr in
  Doublet_v.left_off_doublet dbr
;; 

let root_sonindexedtree_list_off_indexed_tree itr =
  Tree_v.topson_tree_list_off_tree itr
;; 

let root_son_doublet_list_off_indexed_tree itr =
  let itr_l = root_sonindexedtree_list_off_indexed_tree itr in
  List.map root_doublet_off_indexed_tree itr_l
;; 

let left_tree_off_indexed_tree itr =
  Tree_v.map Doublet_v.left_off_doublet itr
;;

let tree_off_indexed_tree itr =
  left_tree_off_indexed_tree itr
;;

let right_tree_off_indexed_tree itr =
  Tree_v.map Doublet_v.right_off_doublet itr
;;

let index_tree_off_indexed_tree itr =
  right_tree_off_indexed_tree itr 
;;

let subindexedtree_list_of_predicate_of_indexed_tree pre itr =
  Utilities_v.not_yet_implemented nam_mod "subindexedtree_list_of_predicate_of_indexed_tree"
(*  Tree_v.topson_tree_list_of_predicate_off_tree pre itr*)
;; 

let son_doublet_list_of_predicate_of_indexed_tree pre itr =
  Utilities_v.not_yet_implemented nam_mod "son_doublet_list_of_predicate_of_indexed_tree"
(*  Tree_v.topson_node_list_of_predicate_off_tree pre itr*)
;;

(** {6 Modifying.} *)

let replace_root_doublet rot itr =
  Tree_v.replace_root rot itr
;;

let replace_leaf_doublet lf itr =
  Tree_v.replace_leaf lf itr
;; 

let replace_node_doublet nd itr =
  Tree_v.replace_node nd itr
;; 

(** {6 Naming} *)

let name nam_n nam_i itr =
   Tree_v.name (Doublet_v.name nam_n nam_i) itr 
;;

