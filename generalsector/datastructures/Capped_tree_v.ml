(** {3 The Capped_tree data structure functionalities.} *)

let nam_mod = "Capped_tree_v";;


(** {6 Making.} *)

let make cap tre_l =
  Doublet_v.make cap tre_l
;;

(** {6 Extracting.} *)

let cap_off_capped_tree cpt =
  Doublet_v.left_off_doublet cpt 
;;
 
let tree_list_off_capped_tree cpt =
  Doublet_v.right_off_doublet cpt 
;;
 
(** {6 Iterating.} *)

let map fc fn cpt =
  let cap = cap_off_capped_tree cpt in
  let tre_l = tree_list_off_capped_tree cpt in
  make (fc cap) (List.map (Tree_v.map fn) tre_l)
;; 

let iter fc fn cpt =
  let cap = cap_off_capped_tree cpt in
  let tre_l = tree_list_off_capped_tree cpt in
  fc cap; List.iter (Tree_v.iter fn) tre_l
;; 

let map2 fc fn cpt_1 cpt_2 =
  let cap_1 = cap_off_capped_tree cpt_1 in
  let tre_l1 = tree_list_off_capped_tree cpt_1 in
  let cap_2 = cap_off_capped_tree cpt_2 in
  let tre_l2 = tree_list_off_capped_tree cpt_2 in
  make (fc cap_1 cap_2) (List.map2 (Tree_v.map2 fn) tre_l1 tre_l2)
;;

(** {6 Naming} *)

let name = Doublet_v.name;; 
