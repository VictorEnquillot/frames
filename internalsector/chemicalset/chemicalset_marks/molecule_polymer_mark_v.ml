(** {3 The functionalities for a Mark for a Molecule_polymer.} *)

let nam_cod = "molecule_polymer_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_mop =
  Mark_v.name Molecule_polymer_symbol_v.name mark_mop
;;


(** {6 Upgrading} *)


let molecule_polymer_mark_of_polypeptide_mark mark_pde = 
  Mark_v.map_left Molecule_polymer_symbol_v.molecule_polymer_symbol_of_polypeptide_symbol mark_pde
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_mop soi_mop =
  Mark_v.make sym_mop soi_mop
;;


(** {6 Extracting} *)


let polypeptide_mark_off_molecule_polymer_mark mark_mop = 
  Mark_v.map_left Molecule_polymer_symbol_v.polypeptide_symbol_off_molecule_polymer_symbol mark_mop
;;


(** {6 Querying} *)


let is_polypeptide_mark_off_molecule_polymer_mark mark_mop =
  Mark_v.map_left Molecule_polymer_symbol_v.is_polypeptide_symbol_off_molecule_polymer_symbol mark_mop
;;


(** created by ./generator molecule_polymer implementation mark at 15:12 13 Mar 2012. *)



