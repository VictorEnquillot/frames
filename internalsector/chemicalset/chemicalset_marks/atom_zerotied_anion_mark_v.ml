(** {3 The functionalities for a Mark for a Atom_zerotied_anion.} *)

let nam_cod = "atom_zerotied_anion_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_a0a =
  Mark_v.name Atom_zerotied_anion_symbol_v.name mark_a0a
;;


(** {6 Upgrading} *)


let atom_zerotied_anion_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Atom_zerotied_anion_symbol_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let atom_zerotied_anion_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Atom_zerotied_anion_symbol_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_a0a soi_a0a =
  Mark_v.make sym_a0a soi_a0a
;;


(** {6 Extracting} *)


let atom_zerotied_anion_minusone_mark_off_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Atom_zerotied_anion_symbol_v.atom_zerotied_anion_minusone_symbol_off_atom_zerotied_anion_symbol mark_a0a
;;

let atom_zerotied_anion_minustwo_mark_off_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Atom_zerotied_anion_symbol_v.atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_anion_symbol mark_a0a
;;


(** {6 Querying} *)


let is_atom_zerotied_anion_minusone_mark_off_atom_zerotied_anion_mark mark_a0a =
  Mark_v.map_left Atom_zerotied_anion_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_atom_zerotied_anion_symbol mark_a0a
;;

let is_atom_zerotied_anion_minustwo_mark_off_atom_zerotied_anion_mark mark_a0a =
  Mark_v.map_left Atom_zerotied_anion_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_anion_symbol mark_a0a
;;


(** created by ./generator atom_zerotied_anion implementation mark at 15:12 13 Mar 2012. *)



