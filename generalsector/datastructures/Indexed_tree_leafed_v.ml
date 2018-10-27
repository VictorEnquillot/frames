(** {3 The Indexed_tree_leafed data structure functionalities.} *)

let nam_mod = "Indexed_tree_leafed_v";;


(** {6 Making.} *)

let empty = Tree_leafed_v.empty;;

let make_of_leaf_doublet dlf = 
  Tree_leafed_v.make_of_leaf dlf
;;

let make_node_doublet dnd ilt_l = 
  Tree_leafed_v.make_of_node dnd ilt_l
;;

let make_of_leaf_of_index lf li =
  let dlf = Doublet_v.make lf li in
  make_of_leaf_doublet dlf 
;;

let make_of_node_of_indexed_tree_leafed_list_of_index nd ilt_l ni =
  let dlf = Doublet_v.make nd ni in
  make_node_doublet dlf ilt_l
;;

(** {6 Extracting.} *)

let root_doublet_off_indexed_tree_leafed ilt =
  Tree_leafed_v.root_off_tree_leafed ilt
;; 

let root_off_indexed_tree_leafed ilt =
  let dbr = root_doublet_off_indexed_tree_leafed ilt in
  Doublet_v.left_off_doublet dbr
;; 

let root_son_doublet_list_off_indexed_tree_leafed_node ilt =
  Tree_leafed_v.root_son_list_off_tree_leafed_node ilt
;; 

let indexed_tree_off_indexed_tree_leafed fn fl ilt =
  Tree_leafed_v.tree_off_tree_leafed 
    (Doublet_v.map fn (fun i ->i)) 
    (Doublet_v.map fl (fun i ->i)) 
    ilt
;;

(** {6 Iterating.} *)

let map fn fl fi ilt = 
  Tree_leafed_v.map (Doublet_v.map fn fi) (Doublet_v.map fl fi) ilt
;; 

let map_left fn fl ilt = 
  let fi i = i in
  Tree_leafed_v.map (Doublet_v.map fn fi) (Doublet_v.map fl fi) ilt
;; 

let iter fn fl fi ilt =
  Tree_leafed_v.iter (Doublet_v.iter fn fi) (Doublet_v.iter fl fi) ilt
;; 

let map2 fn fl fi ilt_1 ilt_2 = 
  Tree_leafed_v.map2 (Doublet_v.map2 fn fi) (Doublet_v.map2 fl fi) ilt_1 ilt_2
;; 

(** {6 Modifying.} *)

(** {6 Naming} *)

let name nam_n nam_l nam_i ilt =
  Tree_leafed_v.name (Doublet_v.name nam_n nam_i) (Doublet_v.name nam_l nam_i) ilt 
;;

