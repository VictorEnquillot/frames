(** {3 The functionalities for a Symbol for a Molecule_polymer.} *)

let nam_cod = "molecule_polymer_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Making} *)




(** {6 Naming} *)


let name = function
  | Molecule_polymer_symbol_t.Polypeptide_symbol sym_pde ->
      Polypeptide_symbol_v.name sym_pde
  | Molecule_polymer_symbol_t.Nucleicacid -> "nucleicacid"
;;


(** {6 Extracting} *)


let polypeptide_symbol_off_molecule_polymer_symbol = function
  | Molecule_polymer_symbol_t.Polypeptide_symbol sym_pde -> sym_pde
  | sym_mop -> Error_messages_v.print_fatal_error
      nam_cod "polypeptide_symbol_off_molecule_polymer_symbol"
      "Polypeptide_symbol"
      (name sym_mop) "check"
;;


(** {6 Querying} *)


let is_polypeptide_symbol_off_molecule_polymer_symbol = function
  | Molecule_polymer_symbol_t.Polypeptide_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading} *)


let molecule_polymer_symbol_of_polypeptide_symbol sym_pde = 
  Molecule_polymer_symbol_t.Polypeptide_symbol sym_pde
;;


(** {6 Abbreviating} *)


let polypeptide_frompdbid s = molecule_polymer_symbol_of_polypeptide_symbol (Polypeptide_symbol_v.polypeptide_frompdbid s);;

let nucleicacid = Molecule_polymer_symbol_t.Nucleicacid;;


(** created by ./generator molecule_polymer implementation symbol at 18:44 8 Feb 2012. *)



