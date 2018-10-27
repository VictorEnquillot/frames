(** {3 The Leafed_doublet_tree data structure functionalities.} *)

let nam_mod = "Leafed_doublet_tree_v";;


(** {6 Making.} *)

let empty = Tree_leafed_v.empty;;

let make_of_leaf dlf = 
  Tree_leafed_v.make_of_leaf dlf
;;

let make_of_node dnd ldt_l = 
  Tree_leafed_v.make_of_node dnd ldt_l
;;

let make_of_leaf_of_index lf li =
  let dlf = Doublet_v.make lf li in
  make_of_leaf dlf 
;;

let make_of_node_of_leafed_doublet_tree_list_of_index nd ldt_l ni =
  let dlf = Doublet_v.make nd ni in
  make_of_node dlf ldt_l
;;

(** {6 Extracting.} *)

let root_doublet_off_leafed_doublet_tree ldt =
  Tree_leafed_v.root_off_tree_leafed ldt
;; 

let root_son_doublet_list_off_leafed_doublet_tree_node ldt =
  Tree_leafed_v.root_son_list_off_tree_leafed_node ldt
;; 

(** {6 Iterating.} *)

let map fn fj fl fi ldt = 
  Tree_leafed_v.map (Doublet_v.map fn fj) (Doublet_v.map fl fi)  ldt
;; 

let iter fn fj fl fi ldt =
  Tree_leafed_v.iter (Doublet_v.iter fn fj) (Doublet_v.iter fl fi)  ldt
;; 

let map2 fn fj fl fi ldt_1 ldt_2 = 
  Tree_leafed_v.map2 (Doublet_v.map2 fn fj) (Doublet_v.map2 fl fi) ldt_1 ldt_2
;; 

(** {6 Modifying.} *)

(** {6 Naming} *)

let doublet_tree_off_leafed_doublet_tree fn fj fl fi ldt =
  Tree_leafed_v.tree_off_tree_leafed (Doublet_v.map fn fj) (Doublet_v.map fl fi) ldt
;;

let name nam_n nam_j nam_l nam_i ldt =
  Tree_leafed_v.name (Doublet_v.name nam_n nam_j) (Doublet_v.name nam_l nam_i) ldt 
;;

let print prt_n prt_j prt_l prt_i ppf ldt =
  Utilities_v.not_yet_implemented nam_mod "Ldt_v.print"
(*  Tree_leafed_v.print (Doublet_v.print prt_n prt_j) (Doublet_v.print prt_l prt_i) ppf ldt *)
;;

