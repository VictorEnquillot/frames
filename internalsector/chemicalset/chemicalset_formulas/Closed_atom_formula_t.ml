(** {3 Closed_atom_formula_t} *)


(** {6 Typing_for_formula} *)

type closed_atom_formula =
  | Closed_atom_neutral_formula of Closed_atom_neutral_formula_t.closed_atom_neutral_formula
  | Closed_atom_anion_formula of Closed_atom_anion_formula_t.closed_atom_anion_formula
  | Closed_atom_cation_formula of Closed_atom_cation_formula_t.closed_atom_cation_formula
;;


(** Closed_atom_formula_t at 12:33:14 on 24 Jun 2013. created by version v2.3 of generator *)



