(** {3 The functionalities for a Mark for a Atom_zerotied.} *)

let nam_cod = "atom_zerotied_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_at0 =
  Mark_v.name Atom_zerotied_symbol_v.name mark_at0
;;


(** {6 Upgrading} *)


let atom_zerotied_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let atom_zerotied_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let atom_zerotied_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let atom_zerotied_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let atom_zerotied_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let atom_zerotied_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let atom_zerotied_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let atom_zerotied_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let atom_zerotied_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_at0 soi_at0 =
  Mark_v.make sym_at0 soi_at0
;;


(** {6 Extracting} *)


let atom_zerotied_anion_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_anion_minusone_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_anion_minusone_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_anion_minustwo_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_cation_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_cation_plusone_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_cation_plustwo_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_cation_plusthree_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_raregas_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol mark_at0
;;

let atom_zerotied_halfbridge_mark_off_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_zerotied_symbol_v.atom_zerotied_halfbridge_symbol_off_atom_zerotied_symbol mark_at0
;;


(** {6 Querying} *)


let is_atom_zerotied_anion_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_anion_minusone_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_anion_minustwo_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_cation_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_cation_plusone_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_cation_plustwo_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_cation_plusthree_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_raregas_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol mark_at0
;;

let is_atom_zerotied_halfbridge_mark_off_atom_zerotied_mark mark_at0 =
  Mark_v.map_left Atom_zerotied_symbol_v.is_atom_zerotied_halfbridge_symbol_off_atom_zerotied_symbol mark_at0
;;


(** created by ./generator atom_zerotied implementation mark at 15:12 13 Mar 2012. *)



