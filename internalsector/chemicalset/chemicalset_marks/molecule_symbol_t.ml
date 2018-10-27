(** {3 The Symbol for a Molecule.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type molecule_symbol =
  | Molecule_bridged_symbol of Molecule_bridged_symbol_t.molecule_bridged_symbol
  | Molecule_dendrimer_symbol of Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol
  | Molecule_forked_symbol of Molecule_forked_symbol_t.molecule_forked_symbol
  | Molecule_linear_symbol of Molecule_linear_symbol_t.molecule_linear_symbol
  | Molecule_polymer_symbol of Molecule_polymer_symbol_t.molecule_polymer_symbol
;;


(** created by ./generator molecule implementation symbol at 15:1 13 Mar 2012. *)



