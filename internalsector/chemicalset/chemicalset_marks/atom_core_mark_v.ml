(** {3 The functionalities for a Mark for a Atom_core.} *)

let nam_cod = "atom_core_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_atc =
  Mark_v.name Atom_core_symbol_v.name mark_atc
;;


(** {6 Upgrading} *)


let atom_core_mark_of_atom_core_fourtied_mark mark_ac4 = 
  Mark_v.map_left Atom_core_symbol_v.atom_core_symbol_of_atom_core_fourtied_symbol mark_ac4
;;

let atom_core_mark_of_atom_core_fivetied_mark mark_ac5 = 
  Mark_v.map_left Atom_core_symbol_v.atom_core_symbol_of_atom_core_fivetied_symbol mark_ac5
;;

let atom_core_mark_of_atom_core_sixtied_mark mark_ac6 = 
  Mark_v.map_left Atom_core_symbol_v.atom_core_symbol_of_atom_core_sixtied_symbol mark_ac6
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_atc soi_atc =
  Mark_v.make sym_atc soi_atc
;;


(** {6 Extracting} *)


let atom_core_fourtied_mark_off_atom_core_mark mark_atc = 
  Mark_v.map_left Atom_core_symbol_v.atom_core_fourtied_symbol_off_atom_core_symbol mark_atc
;;

let atom_core_fivetied_mark_off_atom_core_mark mark_atc = 
  Mark_v.map_left Atom_core_symbol_v.atom_core_fivetied_symbol_off_atom_core_symbol mark_atc
;;

let atom_core_sixtied_mark_off_atom_core_mark mark_atc = 
  Mark_v.map_left Atom_core_symbol_v.atom_core_sixtied_symbol_off_atom_core_symbol mark_atc
;;


(** {6 Querying} *)


let is_atom_core_fourtied_mark_off_atom_core_mark mark_atc =
  Mark_v.map_left Atom_core_symbol_v.is_atom_core_fourtied_symbol_off_atom_core_symbol mark_atc
;;

let is_atom_core_fivetied_mark_off_atom_core_mark mark_atc =
  Mark_v.map_left Atom_core_symbol_v.is_atom_core_fivetied_symbol_off_atom_core_symbol mark_atc
;;

let is_atom_core_sixtied_mark_off_atom_core_mark mark_atc =
  Mark_v.map_left Atom_core_symbol_v.is_atom_core_sixtied_symbol_off_atom_core_symbol mark_atc
;;


(** created by ./generator atom_core implementation mark at 15:11 13 Mar 2012. *)



