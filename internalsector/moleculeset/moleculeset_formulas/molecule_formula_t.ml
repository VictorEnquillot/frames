
(** {3 The Formula for a Molecule.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type molecule_formula =
  | Molecule_forked_formula of Molecule_forked_formula_t.molecule_forked_formula
  | Molecule_linear_formula of Molecule_linear_formula_t.molecule_linear_formula
  | Molecule_polymer_formula of Molecule_polymer_formula_t.molecule_polymer_formula
;;



(** created by ./generator molecule implementation formula at 13:22 10 Apr 2012. *)



