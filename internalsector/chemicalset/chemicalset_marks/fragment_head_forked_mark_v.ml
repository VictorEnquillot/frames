(** {3 The functionalities for a Mark for a Fragment_head_forked.} *)

let nam_cod = "fragment_head_forked_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_fhf =
  Mark_v.name Fragment_head_forked_symbol_v.name mark_fhf
;;


(** {6 Upgrading} *)


let fragment_head_forked_mark_of_fragment_head_biforked_mark mark_fhb = 
  Mark_v.map_left Fragment_head_forked_symbol_v.fragment_head_forked_symbol_of_fragment_head_biforked_symbol mark_fhb
;;

let fragment_head_forked_mark_of_fragment_head_triforked_mark mark_fht = 
  Mark_v.map_left Fragment_head_forked_symbol_v.fragment_head_forked_symbol_of_fragment_head_triforked_symbol mark_fht
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_fhf soi_fhf =
  Mark_v.make sym_fhf soi_fhf
;;


(** {6 Extracting} *)


let fragment_head_biforked_mark_off_fragment_head_forked_mark mark_fhf = 
  Mark_v.map_left Fragment_head_forked_symbol_v.fragment_head_biforked_symbol_off_fragment_head_forked_symbol mark_fhf
;;

let fragment_head_triforked_mark_off_fragment_head_forked_mark mark_fhf = 
  Mark_v.map_left Fragment_head_forked_symbol_v.fragment_head_triforked_symbol_off_fragment_head_forked_symbol mark_fhf
;;


(** {6 Querying} *)


let is_fragment_head_biforked_mark_off_fragment_head_forked_mark mark_fhf =
  Mark_v.map_left Fragment_head_forked_symbol_v.is_fragment_head_biforked_symbol_off_fragment_head_forked_symbol mark_fhf
;;

let is_fragment_head_triforked_mark_off_fragment_head_forked_mark mark_fhf =
  Mark_v.map_left Fragment_head_forked_symbol_v.is_fragment_head_triforked_symbol_off_fragment_head_forked_symbol mark_fhf
;;


(** created by ./generator fragment_head_forked implementation mark at 15:12 13 Mar 2012. *)



