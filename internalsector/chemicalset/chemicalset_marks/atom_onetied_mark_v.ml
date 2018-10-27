(** {3 The functionalities for a Mark for a Atom_onetied.} *)

let nam_cod = "atom_onetied_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_at1 =
  Mark_v.name Atom_onetied_symbol_v.name mark_at1
;;


(** {6 Upgrading} *)


let atom_onetied_mark_of_atom_onetied_conjugated_mark mark_a1c = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_conjugated_symbol mark_a1c
;;

let atom_onetied_mark_of_atom_onetied_double_mark mark_a1d = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_double_symbol mark_a1d
;;

let atom_onetied_mark_of_atom_onetied_single_mark mark_a1s = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_single_symbol mark_a1s
;;

let atom_onetied_mark_of_atom_onetied_triple_mark mark_a1t = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_triple_symbol mark_a1t
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_at1 soi_at1 =
  Mark_v.make sym_at1 soi_at1
;;


(** {6 Extracting} *)


let atom_onetied_conjugated_mark_off_atom_onetied_mark mark_at1 = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_conjugated_symbol_off_atom_onetied_symbol mark_at1
;;

let atom_onetied_double_mark_off_atom_onetied_mark mark_at1 = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_double_symbol_off_atom_onetied_symbol mark_at1
;;

let atom_onetied_single_mark_off_atom_onetied_mark mark_at1 = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_single_symbol_off_atom_onetied_symbol mark_at1
;;

let atom_onetied_triple_mark_off_atom_onetied_mark mark_at1 = 
  Mark_v.map_left Atom_onetied_symbol_v.atom_onetied_triple_symbol_off_atom_onetied_symbol mark_at1
;;


(** {6 Querying} *)


let is_atom_onetied_conjugated_mark_off_atom_onetied_mark mark_at1 =
  Mark_v.map_left Atom_onetied_symbol_v.is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol mark_at1
;;

let is_atom_onetied_double_mark_off_atom_onetied_mark mark_at1 =
  Mark_v.map_left Atom_onetied_symbol_v.is_atom_onetied_double_symbol_off_atom_onetied_symbol mark_at1
;;

let is_atom_onetied_single_mark_off_atom_onetied_mark mark_at1 =
  Mark_v.map_left Atom_onetied_symbol_v.is_atom_onetied_single_symbol_off_atom_onetied_symbol mark_at1
;;

let is_atom_onetied_triple_mark_off_atom_onetied_mark mark_at1 =
  Mark_v.map_left Atom_onetied_symbol_v.is_atom_onetied_triple_symbol_off_atom_onetied_symbol mark_at1
;;


(** created by ./generator atom_onetied implementation mark at 15:11 13 Mar 2012. *)



