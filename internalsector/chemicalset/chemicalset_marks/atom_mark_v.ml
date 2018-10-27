(** {3 The functionalities for a Mark for a Atom.} *)

let nam_cod = "atom_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_atm =
  Mark_v.name Atom_symbol_v.name mark_atm
;;


(** {6 Upgrading} *)


let atom_mark_of_atom_core_mark mark_atc = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_core_symbol mark_atc
;;

let atom_mark_of_atom_core_fourtied_mark mark_ac4 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_core_fourtied_symbol mark_ac4
;;

let atom_mark_of_atom_core_fivetied_mark mark_ac5 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_core_fivetied_symbol mark_ac5
;;

let atom_mark_of_atom_core_sixtied_mark mark_ac6 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_core_sixtied_symbol mark_ac6
;;

let atom_mark_of_atom_onetied_mark mark_at1 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_onetied_symbol mark_at1
;;

let atom_mark_of_atom_onetied_conjugated_mark mark_a1c = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_onetied_conjugated_symbol mark_a1c
;;

let atom_mark_of_atom_onetied_double_mark mark_a1d = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_onetied_double_symbol mark_a1d
;;

let atom_mark_of_atom_onetied_single_mark mark_a1s = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_onetied_single_symbol mark_a1s
;;

let atom_mark_of_atom_onetied_triple_mark mark_a1t = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_onetied_triple_symbol mark_a1t
;;

let atom_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_symbol mark_at0
;;

let atom_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let atom_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let atom_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let atom_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let atom_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let atom_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let atom_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let atom_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let atom_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Atom_symbol_v.atom_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_atm soi_atm =
  Mark_v.make sym_atm soi_atm
;;


(** {6 Extracting} *)


let atom_core_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_core_symbol_off_atom_symbol mark_atm
;;

let atom_core_fourtied_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_core_fourtied_symbol_off_atom_symbol mark_atm
;;

let atom_core_fivetied_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_core_fivetied_symbol_off_atom_symbol mark_atm
;;

let atom_core_sixtied_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_core_sixtied_symbol_off_atom_symbol mark_atm
;;

let atom_onetied_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_onetied_symbol_off_atom_symbol mark_atm
;;

let atom_onetied_conjugated_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_onetied_conjugated_symbol_off_atom_symbol mark_atm
;;

let atom_onetied_double_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_onetied_double_symbol_off_atom_symbol mark_atm
;;

let atom_onetied_single_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_onetied_single_symbol_off_atom_symbol mark_atm
;;

let atom_onetied_triple_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_onetied_triple_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_anion_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_anion_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_anion_minusone_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_anion_minusone_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_anion_minustwo_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_anion_minustwo_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_cation_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_cation_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_cation_plusone_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_cation_plusone_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_cation_plustwo_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_cation_plustwo_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_cation_plusthree_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_cation_plusthree_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_raregas_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_raregas_symbol_off_atom_symbol mark_atm
;;

let atom_zerotied_halfbridge_mark_off_atom_mark mark_atm = 
  Mark_v.map_left Atom_symbol_v.atom_zerotied_halfbridge_symbol_off_atom_symbol mark_atm
;;


(** {6 Querying} *)


let is_atom_core_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_core_symbol_off_atom_symbol mark_atm
;;

let is_atom_core_fourtied_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_core_fourtied_symbol_off_atom_symbol mark_atm
;;

let is_atom_core_fivetied_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_core_fivetied_symbol_off_atom_symbol mark_atm
;;

let is_atom_core_sixtied_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_core_sixtied_symbol_off_atom_symbol mark_atm
;;

let is_atom_onetied_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_onetied_symbol_off_atom_symbol mark_atm
;;

let is_atom_onetied_conjugated_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_onetied_conjugated_symbol_off_atom_symbol mark_atm
;;

let is_atom_onetied_double_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_onetied_double_symbol_off_atom_symbol mark_atm
;;

let is_atom_onetied_single_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_onetied_single_symbol_off_atom_symbol mark_atm
;;

let is_atom_onetied_triple_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_onetied_triple_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_anion_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_anion_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_anion_minusone_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_anion_minustwo_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_cation_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_cation_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_cation_plusone_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_cation_plustwo_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_cation_plusthree_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_raregas_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_raregas_symbol_off_atom_symbol mark_atm
;;

let is_atom_zerotied_halfbridge_mark_off_atom_mark mark_atm =
  Mark_v.map_left Atom_symbol_v.is_atom_zerotied_halfbridge_symbol_off_atom_symbol mark_atm
;;


(** created by ./generator atom implementation mark at 15:11 13 Mar 2012. *)



