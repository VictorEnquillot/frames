(** {3 The functionalities for a Mark for a Atom_zerotied_cation.} *)

let nam_cod = "atom_zerotied_cation_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_a0c =
  Mark_v.name Atom_zerotied_cation_symbol_v.name mark_a0c
;;


(** {6 Upgrading} *)


let atom_zerotied_cation_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Atom_zerotied_cation_symbol_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let atom_zerotied_cation_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Atom_zerotied_cation_symbol_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let atom_zerotied_cation_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Atom_zerotied_cation_symbol_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_a0c soi_a0c =
  Mark_v.make sym_a0c soi_a0c
;;


(** {6 Extracting} *)


let atom_zerotied_cation_plusone_mark_off_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Atom_zerotied_cation_symbol_v.atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol mark_a0c
;;

let atom_zerotied_cation_plustwo_mark_off_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Atom_zerotied_cation_symbol_v.atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol mark_a0c
;;

let atom_zerotied_cation_plusthree_mark_off_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Atom_zerotied_cation_symbol_v.atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol mark_a0c
;;


(** {6 Querying} *)


let is_atom_zerotied_cation_plusone_mark_off_atom_zerotied_cation_mark mark_a0c =
  Mark_v.map_left Atom_zerotied_cation_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol mark_a0c
;;

let is_atom_zerotied_cation_plustwo_mark_off_atom_zerotied_cation_mark mark_a0c =
  Mark_v.map_left Atom_zerotied_cation_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol mark_a0c
;;

let is_atom_zerotied_cation_plusthree_mark_off_atom_zerotied_cation_mark mark_a0c =
  Mark_v.map_left Atom_zerotied_cation_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol mark_a0c
;;


(** created by ./generator atom_zerotied_cation implementation mark at 15:12 13 Mar 2012. *)



