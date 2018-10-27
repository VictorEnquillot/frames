(** {3 The Tree_footed_capped data structure functionalities.} *)

let nam_mod = "Tree_footed_capped_v";;

module Tri_v = Triplet_v
module Tree_v = Tree_v

(** {6 Making.} *)

let make cap tre foo =
  Tri_v.make cap tre foo
;;

(** {6 Extracting.} *)

let cap_off_tree_footed_capped cft =
  Tri_v.left_off_triplet cft 
;;
 
let tree_off_tree_footed_capped cft =
  Tri_v.middle_off_triplet cft 
;;
 
let foot_off_tree_footed_capped cft =
  Tri_v.right_off_triplet cft 
;;
 
(** {6 Iterating.} *)

let map fc ft ff cft =
  Tri_v.map fc (Tree_v.map ft) ff cft
;; 

let iter fc ft ff cft =
  Tri_v.iter fc (Tree_v.iter ft) ff cft
;; 

let map2 fc ft ff cft_1 cft_2 =
  Tri_v.map2 fc (Tree_v.map2 ft) ff cft_1 cft_2
;;

(** {6 Naming} *)

let name = Tri_v.name;; 

