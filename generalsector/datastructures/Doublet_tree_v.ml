(** {3 The functionalities for an indexed_tree data structure.} *)

let nam_mod = "Doublet_tree_v";;


(** {6 Making.} *)

let empty = Tree_v.empty;;

let make_of_leaf db_t = 
  Tree_v.make_of_leaf db_t
;;

let make_of_node db_t db_tl = 
  Tree_v.make_of_node db_t db_tl
;;

(** {6 Iterating.} *)

let map fn fi dtr =
  Tree_v.map (Doublet_v.map fn fi) dtr 
;; 

let iter fn fi dtr =
    Tree_v.iter (Doublet_v.iter fn fi) dtr
;; 

let map2 fn fi t_1 t_2 = 
  Tree_v.map2 (Doublet_v.map2 fn fi) t_1 t_2
;; 

(** {6 Extracting.} *)

let root_doublet_off_doublet_tree db_t =
    Tree_v.root_off_tree db_t
;; 

let son_doublet_tree_list_off_doublet_tree db_t =
    Tree_v.topson_tree_list_off_tree db_t
;; 

let son_doublet_tree_list_of_node_predicate_of_doublet_tree pre db_t =
  Tree_v.topson_tree_list_of_topson_node_predicate_off_tree pre db_t
;; 

let son_doublet_node_list_off_doublet_tree db_t =
  Tree_v.topson_node_list_off_tree db_t
;;

let son_doublet_node_list_of_node_predicate_of_doublet_tree pre db_t =
  Tree_v.topson_node_list_of_node_predicate_off_tree pre db_t
;;

let doublet_list_off_doublet_tree db_t =
  Tree_v.node_list_off_tree db_t 
;;

let left_tree_off_doublet_tree db_t =
  Tree_v.map Doublet_v.left_off_doublet db_t
;; 

let right_tree_off_doublet_tree db_t =
  Tree_v.map Doublet_v.right_off_doublet db_t
;; 

(** {6 Modifying.} *)

let replace_doublet_root drt db_t =
  Tree_v.replace_root drt db_t
;; 

(** {6 Naming} *)

let name nam_n nam_i db_t =
  Tree_v.name (Doublet_v.name nam_n nam_i) db_t 
;;

