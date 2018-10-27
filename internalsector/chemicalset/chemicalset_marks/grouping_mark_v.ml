(** {3 The functionalities for a Mark for a Grouping.} *)

let nam_cod = "grouping_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_grg =
  Mark_v.name Grouping_symbol_v.name mark_grg
;;


(** {6 Upgrading} *)


let grouping_mark_of_fragment_leaf_mark mark_frl = 
  Mark_v.map_left Grouping_symbol_v.grouping_symbol_of_fragment_leaf_symbol mark_frl
;;

let grouping_mark_of_fragment_onetied_zerotied_mark mark_f10 = 
  Mark_v.map_left Grouping_symbol_v.grouping_symbol_of_fragment_onetied_zerotied_symbol mark_f10
;;

let grouping_mark_of_fragment_leaf_halfbridgetailed_mark mark_flh = 
  Mark_v.map_left Grouping_symbol_v.grouping_symbol_of_fragment_leaf_halfbridgetailed_symbol mark_flh
;;

let grouping_mark_of_polypeptide_sidegroup_mark mark_pos = 
  Mark_v.map_left Grouping_symbol_v.grouping_symbol_of_polypeptide_sidegroup_symbol mark_pos
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_grg soi_grg =
  Mark_v.make sym_grg soi_grg
;;


(** {6 Extracting} *)


let fragment_leaf_mark_off_grouping_mark mark_grg = 
  Mark_v.map_left Grouping_symbol_v.fragment_leaf_symbol_off_grouping_symbol mark_grg
;;

let fragment_onetied_zerotied_mark_off_grouping_mark mark_grg = 
  Mark_v.map_left Grouping_symbol_v.fragment_onetied_zerotied_symbol_off_grouping_symbol mark_grg
;;

let fragment_leaf_halfbridgetailed_mark_off_grouping_mark mark_grg = 
  Mark_v.map_left Grouping_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_grouping_symbol mark_grg
;;

let polypeptide_sidegroup_mark_off_grouping_mark mark_grg = 
  Mark_v.map_left Grouping_symbol_v.polypeptide_sidegroup_symbol_off_grouping_symbol mark_grg
;;


(** {6 Querying} *)


let is_fragment_leaf_mark_off_grouping_mark mark_grg =
  Mark_v.map_left Grouping_symbol_v.is_fragment_leaf_symbol_off_grouping_symbol mark_grg
;;

let is_fragment_onetied_zerotied_mark_off_grouping_mark mark_grg =
  Mark_v.map_left Grouping_symbol_v.is_fragment_onetied_zerotied_symbol_off_grouping_symbol mark_grg
;;

let is_fragment_leaf_halfbridgetailed_mark_off_grouping_mark mark_grg =
  Mark_v.map_left Grouping_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_grouping_symbol mark_grg
;;

let is_polypeptide_sidegroup_mark_off_grouping_mark mark_grg =
  Mark_v.map_left Grouping_symbol_v.is_polypeptide_sidegroup_symbol_off_grouping_symbol mark_grg
;;


(** created by ./generator grouping implementation mark at 15:12 13 Mar 2012. *)



