(** {3 The Symbol for a Molecule_polymer.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type molecule_polymer_symbol =
  | Polypeptide_symbol of Polypeptide_symbol_t.polypeptide_symbol
  | Nucleicacid_fromid of string
  | Molecule_polymer_fromid of string
;;


(** created by ./generator molecule_polymer implementation symbol at 15:1 13 Mar 2012. *)



