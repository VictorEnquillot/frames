(** {3 The Tree_leafed_capped_indexed data structure functionalities.} *)

let nam_mod = "Tree_leafed_capped_indexed_v";;


(** {6 Making.} *)

let make cap lit =
  Doublet_v.make cap lit
;;

(** {6 Extracting.} *)

let cap_off_tree_leafed_capped_indexed clit =
  Doublet_v.left_off_doublet clit 
;;
 
let leafed_indexed_tree_doublet_list_off_tree_leafed_capped_indexed clit =
  Doublet_v.right_off_doublet clit 
;;

(** {6 Modifying.} *)


(** {6 Iterating.} *)

let map fc fn fi fl clit =
  Doublet_v.map fc (Doublet_list_v.map (Leafed_indexed_tree_v.map fn fi fl) fi) clit
;; 

let iter fc fn fi fl clit =
  Doublet_v.iter fc (Doublet_list_v.iter (Leafed_indexed_tree_v.iter fn fi fl) fi) clit
;; 

(*
let map2 fc fn fi fl cpit_1 cpit_2 =
  let cap_1 = cap_off_tree_leafed_capped_indexed cpit_1 in
  let lit_1 = leafed_indexed_tree_off_tree_leafed_capped_indexed cpit_1 in
  let cap_2 = cap_off_tree_leafed_capped_indexed cpit_2 in
  let lit_2 = leafed_indexed_tree_off_tree_leafed_capped_indexed cpit_2 in
  make (fc cap_1 cap_2) (Leafed_indexed_tree_v.map2 fn fi fl lit_1 lit_2)
;;
*) 

(** {6 Downgrading.} *)

let leafed_indexed_tree_off_tree_leafed_capped_indexed fc fn fl clit =
  let fi i = i in
  let cap = cap_off_tree_leafed_capped_indexed clit in
  let dbl_lit = 
    leafed_indexed_tree_doublet_list_off_tree_leafed_capped_indexed clit in
  let lit_il = Doublet_list_v.map (Leafed_indexed_tree_v.map fn fi fl) fi dbl_lit in
  Leafed_indexed_tree_v.make_of_node (fc cap) lit_il
;;

let indexed_tree_off_tree_leafed_capped_indexed fc fn fl clit =
  let lit = 
    leafed_indexed_tree_off_tree_leafed_capped_indexed fc fn (fun l->l) clit in
  Leafed_indexed_tree_v.indexed_tree_off_leafed_indexed_tree (fun n->n) fl lit
;;

(** {6 Naming} *)

let name nam_c nam_n nam_i nam_l clit =
  Doublet_v.name nam_c (Doublet_list_v.name (Leafed_indexed_tree_v.name nam_n nam_i nam_l) nam_i) clit
;;

let print prt_c prt_n prt_i prt_l ppf clit =
  Doublet_v.print prt_c (Doublet_list_v.print (Leafed_indexed_tree_v.print prt_n prt_i prt_l) prt_i) ppf clit 
;;
 

