
(** {3 The Formula for a Moleculeset.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type moleculeset_formula =
  | Grouping_formula of Grouping_formula_t.grouping_formula
  | Molecule_formula of Molecule_formula_t.molecule_formula
;;



(** created by ./generator moleculeset implementation formula at 13:22 10 Apr 2012. *)



