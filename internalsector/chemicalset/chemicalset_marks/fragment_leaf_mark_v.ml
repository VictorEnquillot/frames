(** {3 The functionalities for a Mark for a Fragment_leaf.} *)

let nam_cod = "fragment_leaf_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_frl =
  Mark_v.name Fragment_leaf_symbol_v.name mark_frl
;;


(** {6 Upgrading} *)


let fragment_leaf_mark_of_fragment_onetied_zerotied_mark mark_f10 = 
  Mark_v.map_left Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol mark_f10
;;

let fragment_leaf_mark_of_fragment_leaf_halfbridgetailed_mark mark_flh = 
  Mark_v.map_left Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_leaf_halfbridgetailed_symbol mark_flh
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_frl soi_frl =
  Mark_v.make sym_frl soi_frl
;;


(** {6 Extracting} *)


let fragment_onetied_zerotied_mark_off_fragment_leaf_mark mark_frl = 
  Mark_v.map_left Fragment_leaf_symbol_v.fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol mark_frl
;;

let fragment_leaf_halfbridgetailed_mark_off_fragment_leaf_mark mark_frl = 
  Mark_v.map_left Fragment_leaf_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol mark_frl
;;


(** {6 Querying} *)


let is_fragment_onetied_zerotied_mark_off_fragment_leaf_mark mark_frl =
  Mark_v.map_left Fragment_leaf_symbol_v.is_fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol mark_frl
;;

let is_fragment_leaf_halfbridgetailed_mark_off_fragment_leaf_mark mark_frl =
  Mark_v.map_left Fragment_leaf_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol mark_frl
;;


(** created by ./generator fragment_leaf implementation mark at 15:12 13 Mar 2012. *)



