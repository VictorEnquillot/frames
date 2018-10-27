(** {3 The functionalities for a Symbol for a Molecule_polymer.} *)

let nam_cod = "molecule_polymer_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_polymer_symbol_t.Polypeptide_symbol sym_pde ->
      Polypeptide_symbol_v.name sym_pde
  | Molecule_polymer_symbol_t.Nucleicacid_fromid _ -> "nucleicacid_fromid"
  | Molecule_polymer_symbol_t.Molecule_polymer_fromid _ -> "molecule_polymer_fromid"
;;


(** {6 Upgrading} *)


let molecule_polymer_symbol_of_polypeptide_symbol sym_pde = 
  Molecule_polymer_symbol_t.Polypeptide_symbol sym_pde
;;


(** {6 Abbreviating} *)


let polypeptide_fromid s = molecule_polymer_symbol_of_polypeptide_symbol (Polypeptide_symbol_v.polypeptide_fromid s);;

let nucleicacid_fromid s = Molecule_polymer_symbol_t.Nucleicacid_fromid s;;

let molecule_polymer_fromid s = Molecule_polymer_symbol_t.Molecule_polymer_fromid s;;


(** {6 Making} *)


let make s = function
  | "polypeptide_fromid" -> polypeptide_fromid s
  | "nucleicacid_fromid" -> nucleicacid_fromid s
  | "molecule_polymer_fromid" -> molecule_polymer_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
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


(** created by ./generator molecule_polymer implementation symbol at 15:4 13 Mar 2012. *)



