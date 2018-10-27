(** {3 The Capped_indexed_tree_leafed data structure functionalities.} *)

let nam_mod = "Capped_indexed_tree_leafed_v";;


(** {6 Making.} *)

let make cap ilt_l =
  Doublet_v.make cap ilt_l
;;

(** {6 Extracting.} *)

let cap_off_capped_indexed_tree_leafed cilt =
  Doublet_v.left_off_doublet cilt 
;;
 
let cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed cilt =
  Doublet_v.right_off_doublet cilt 
;;

let indexed_tree_leafed_off_capped_indexed_tree_leafed fc fn fl idx cilt =
  let cap = cap_off_capped_indexed_tree_leafed cilt in
  let ilt_l = cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed cilt in
  let m_l = List.map (Indexed_tree_leafed_v.map_left fn fl) ilt_l in
  Indexed_tree_leafed_v.make_of_node_of_indexed_tree_leafed_list_of_index (fc cap) m_l idx 
;;

let cap_son_indexed_tree_list_off_capped_indexed_tree_leafed fn fl cilt =
  let ilt_l = cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed cilt in
  List.map (Indexed_tree_leafed_v.indexed_tree_off_indexed_tree_leafed fn fl) ilt_l
;;

let indexed_tree_off_capped_indexed_tree_leafed fc fn fl idx cilt =
  let ilt = 
    indexed_tree_leafed_off_capped_indexed_tree_leafed 
      fc fn (fun l -> l) idx cilt in
  Indexed_tree_leafed_v.indexed_tree_off_indexed_tree_leafed (fun n -> n) fl ilt
;;

let cap_son_tree_list_off_capped_indexed_tree_leafed fn fl cilt =
  let itr_l = cap_son_indexed_tree_list_off_capped_indexed_tree_leafed fn fl cilt in
  List.map Indexed_tree_v.tree_off_indexed_tree itr_l 
;;

let tree_off_capped_indexed_tree_leafed fc fn fl cilt =
  let cap = cap_off_capped_indexed_tree_leafed cilt in
  let itr_l = cap_son_indexed_tree_list_off_capped_indexed_tree_leafed fn fl cilt in
  let tr_l = List.map Indexed_tree_v.tree_off_indexed_tree itr_l in
  Tree_v.make_of_node (fc cap) tr_l
;;

(** {6 Modifying.} *)


(** {6 Iterating.} *)

let map fc fn fl fi cilt =
  let cap = cap_off_capped_indexed_tree_leafed cilt in
  let ilt_l = 
    cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed cilt in
  make (fc cap) (List.map (Indexed_tree_leafed_v.map fn fl fi) ilt_l)
;; 

let iter fc fn fl fi cilt =
  let cap = cap_off_capped_indexed_tree_leafed cilt in
  let ilt_l = 
    cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed cilt in
  fc cap; List.iter (Indexed_tree_leafed_v.iter fn fl fi) ilt_l
;; 

let map2 fc fn fl fi cilt_1 cilt_2 =
  let cap_1 = cap_off_capped_indexed_tree_leafed cilt_1 in
  let ilt_l1 = 
    cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed cilt_1 in
  let cap_2 = cap_off_capped_indexed_tree_leafed cilt_2 in
  let ilt_l2 = 
    cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed cilt_2 in
  make (fc cap_1 cap_2) (List.map2 (Indexed_tree_leafed_v.map2 fn fl fi) ilt_l1 ilt_l2)
;;

(** {6 Naming} *)

let name nam_c nam_n nam_l nam_i cilt =
  Doublet_v.name nam_c (List_v.name (Indexed_tree_leafed_v.name nam_n nam_l nam_i)) cilt
;;

