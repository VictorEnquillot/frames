(** {3 The functionalities for a Mark for a Molecule.} *)

let nam_cod = "molecule_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_moe =
  Mark_v.name Molecule_symbol_v.name mark_moe
;;


(** {6 Upgrading} *)


let molecule_mark_of_molecule_bridged_mark mark_mob = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_bridged_symbol mark_mob
;;

let molecule_mark_of_molecule_dendrimer_mark mark_mod = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_dendrimer_symbol mark_mod
;;

let molecule_mark_of_molecule_forked_mark mark_mof = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_forked_symbol mark_mof
;;

let molecule_mark_of_molecule_linear_mark mark_mol = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_linear_symbol mark_mol
;;

let molecule_mark_of_molecule_linear_monoatomic_mark mark_mlm = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_linear_monoatomic_symbol mark_mlm
;;

let molecule_mark_of_block_none_none_ax0e0_monoatomic_mark mark_nam = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_block_none_none_ax0e0_monoatomic_symbol mark_nam
;;

let molecule_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_symbol mark_at0
;;

let molecule_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let molecule_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let molecule_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let molecule_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let molecule_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let molecule_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let molecule_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let molecule_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let molecule_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;

let molecule_mark_of_molecule_linear_diatomic_mark mark_mld = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_linear_diatomic_symbol mark_mld
;;

let molecule_mark_of_molecule_linear_triatomic_mark mark_mlt = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_linear_triatomic_symbol mark_mlt
;;

let molecule_mark_of_molecule_linear_tetratomic_mark mark_mlq = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_linear_tetratomic_symbol mark_mlq
;;

let molecule_mark_of_molecule_linear_pentatomic_mark mark_mlc = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_linear_pentatomic_symbol mark_mlc
;;

let molecule_mark_of_molecule_linear_overpentatomic_mark mark_mlo = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_linear_overpentatomic_symbol mark_mlo
;;

let molecule_mark_of_molecule_polymer_mark mark_mop = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_molecule_polymer_symbol mark_mop
;;

let molecule_mark_of_polypeptide_mark mark_pde = 
  Mark_v.map_left Molecule_symbol_v.molecule_symbol_of_polypeptide_symbol mark_pde
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_moe soi_moe =
  Mark_v.make sym_moe soi_moe
;;


(** {6 Extracting} *)


let molecule_bridged_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_bridged_symbol_off_molecule_symbol mark_moe
;;

let molecule_dendrimer_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_dendrimer_symbol_off_molecule_symbol mark_moe
;;

let molecule_forked_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_forked_symbol_off_molecule_symbol mark_moe
;;

let molecule_linear_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_linear_symbol_off_molecule_symbol mark_moe
;;

let molecule_linear_monoatomic_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_linear_monoatomic_symbol_off_molecule_symbol mark_moe
;;

let block_none_none_ax0e0_monoatomic_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_anion_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_anion_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_anion_minusone_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_anion_minusone_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_anion_minustwo_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_anion_minustwo_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_cation_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_cation_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_cation_plusone_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_cation_plusone_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_cation_plustwo_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_cation_plustwo_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_cation_plusthree_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_cation_plusthree_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_raregas_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_raregas_symbol_off_molecule_symbol mark_moe
;;

let atom_zerotied_halfbridge_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.atom_zerotied_halfbridge_symbol_off_molecule_symbol mark_moe
;;

let molecule_linear_diatomic_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_linear_diatomic_symbol_off_molecule_symbol mark_moe
;;

let molecule_linear_triatomic_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_linear_triatomic_symbol_off_molecule_symbol mark_moe
;;

let molecule_linear_tetratomic_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_linear_tetratomic_symbol_off_molecule_symbol mark_moe
;;

let molecule_linear_pentatomic_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_linear_pentatomic_symbol_off_molecule_symbol mark_moe
;;

let molecule_linear_overpentatomic_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_linear_overpentatomic_symbol_off_molecule_symbol mark_moe
;;

let molecule_polymer_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.molecule_polymer_symbol_off_molecule_symbol mark_moe
;;

let polypeptide_mark_off_molecule_mark mark_moe = 
  Mark_v.map_left Molecule_symbol_v.polypeptide_symbol_off_molecule_symbol mark_moe
;;


(** {6 Querying} *)


let is_molecule_bridged_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_bridged_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_dendrimer_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_dendrimer_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_forked_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_forked_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_linear_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_linear_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_linear_monoatomic_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_linear_monoatomic_symbol_off_molecule_symbol mark_moe
;;

let is_block_none_none_ax0e0_monoatomic_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_anion_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_anion_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_anion_minusone_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_anion_minustwo_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_cation_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_cation_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_cation_plusone_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_cation_plustwo_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_cation_plusthree_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_raregas_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_raregas_symbol_off_molecule_symbol mark_moe
;;

let is_atom_zerotied_halfbridge_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_atom_zerotied_halfbridge_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_linear_diatomic_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_linear_diatomic_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_linear_triatomic_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_linear_triatomic_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_linear_tetratomic_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_linear_tetratomic_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_linear_pentatomic_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_linear_pentatomic_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_linear_overpentatomic_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_linear_overpentatomic_symbol_off_molecule_symbol mark_moe
;;

let is_molecule_polymer_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_molecule_polymer_symbol_off_molecule_symbol mark_moe
;;

let is_polypeptide_mark_off_molecule_mark mark_moe =
  Mark_v.map_left Molecule_symbol_v.is_polypeptide_symbol_off_molecule_symbol mark_moe
;;


(** created by ./generator molecule implementation mark at 15:12 13 Mar 2012. *)



