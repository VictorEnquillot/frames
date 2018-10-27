(** {3 The Tree_leafed_capped data structure functionalities.} *)

let nam_mod = "Tree_leafed_capped_v";;


(** {6 Making.} *)

let make cap ltr_l =
  Doublet_v.make cap ltr_l
;;

(** {6 Extracting.} *)

let cap_off_tree_leafed_capped cpt =
  Doublet_v.left_off_doublet cpt 
;;
 
let tree_leafed_list_off_tree_leafed_capped cpt =
  Doublet_v.right_off_doublet cpt 
;;

(** {6 Modifying.} *)


(** {6 Iterating.} *)

let map fc fn fl cpt =
  let cap = cap_off_tree_leafed_capped cpt in
  let ltr_l = tree_leafed_list_off_tree_leafed_capped cpt in
  make (fc cap) (List.map (Tree_leafed_v.map fn fl) ltr_l)
;; 

let iter fc fn fl cpt =
  let cap = cap_off_tree_leafed_capped cpt in
  let ltr_l = tree_leafed_list_off_tree_leafed_capped cpt in
  fc cap; List.iter (Tree_leafed_v.iter fn fl) ltr_l
;; 

let map2 fc fn fl cpt_1 cpt_2 =
  let cap_1 = cap_off_tree_leafed_capped cpt_1 in
  let ltr_l1 = tree_leafed_list_off_tree_leafed_capped cpt_1 in
  let cap_2 = cap_off_tree_leafed_capped cpt_2 in
  let ltr_l2 = tree_leafed_list_off_tree_leafed_capped cpt_2 in
  make (fc cap_1 cap_2) (List.map2 (Tree_leafed_v.map2 fn fl) ltr_l1 ltr_l2)
;;

(** {6 Naming} *)

let tree_off_tree_leafed_capped fc fn fl cpt =
  let cap = cap_off_tree_leafed_capped cpt in
  let ltr_l = tree_leafed_list_off_tree_leafed_capped cpt in
  let stre_l = List.map (Tree_leafed_v.tree_off_tree_leafed fn fl) ltr_l in
  let scap = fc cap in
  Tree_v.make_of_node scap stre_l
;;

let name nam_c nam_n nam_l clt =
  Doublet_v.name 
    nam_c 
    (List_v.name (Tree_leafed_v.name nam_n nam_l)) clt
;;
 
