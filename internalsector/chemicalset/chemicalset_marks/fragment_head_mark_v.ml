(** {3 The functionalities for a Mark for a Fragment_head.} *)

let nam_cod = "fragment_head_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_frh =
  Mark_v.name Fragment_head_symbol_v.name mark_frh
;;


(** {6 Upgrading} *)


let fragment_head_mark_of_fragment_head_forked_mark mark_fhf = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_forked_symbol mark_fhf
;;

let fragment_head_mark_of_fragment_head_biforked_mark mark_fhb = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_biforked_symbol mark_fhb
;;

let fragment_head_mark_of_fragment_head_triforked_mark mark_fht = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_triforked_symbol mark_fht
;;

let fragment_head_mark_of_fragment_head_halfbridged_mark mark_fhh = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_halfbridged_symbol mark_fhh
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_frh soi_frh =
  Mark_v.make sym_frh soi_frh
;;


(** {6 Extracting} *)


let fragment_head_forked_mark_off_fragment_head_mark mark_frh = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_forked_symbol_off_fragment_head_symbol mark_frh
;;

let fragment_head_biforked_mark_off_fragment_head_mark mark_frh = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_biforked_symbol_off_fragment_head_symbol mark_frh
;;

let fragment_head_triforked_mark_off_fragment_head_mark mark_frh = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_triforked_symbol_off_fragment_head_symbol mark_frh
;;

let fragment_head_halfbridged_mark_off_fragment_head_mark mark_frh = 
  Mark_v.map_left Fragment_head_symbol_v.fragment_head_halfbridged_symbol_off_fragment_head_symbol mark_frh
;;


(** {6 Querying} *)


let is_fragment_head_forked_mark_off_fragment_head_mark mark_frh =
  Mark_v.map_left Fragment_head_symbol_v.is_fragment_head_forked_symbol_off_fragment_head_symbol mark_frh
;;

let is_fragment_head_biforked_mark_off_fragment_head_mark mark_frh =
  Mark_v.map_left Fragment_head_symbol_v.is_fragment_head_biforked_symbol_off_fragment_head_symbol mark_frh
;;

let is_fragment_head_triforked_mark_off_fragment_head_mark mark_frh =
  Mark_v.map_left Fragment_head_symbol_v.is_fragment_head_triforked_symbol_off_fragment_head_symbol mark_frh
;;

let is_fragment_head_halfbridged_mark_off_fragment_head_mark mark_frh =
  Mark_v.map_left Fragment_head_symbol_v.is_fragment_head_halfbridged_symbol_off_fragment_head_symbol mark_frh
;;


(** created by ./generator fragment_head implementation mark at 15:12 13 Mar 2012. *)



