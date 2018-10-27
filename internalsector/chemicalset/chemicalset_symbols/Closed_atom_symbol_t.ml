(** {3 Closed_atom_symbol_t} *)


(** {6 Typing_for_symbol} *)

type closed_atom_symbol =
  | Closed_atom_neutral_symbol of Closed_atom_neutral_symbol_t.closed_atom_neutral_symbol
  | Closed_atom_anion_symbol of Closed_atom_anion_symbol_t.closed_atom_anion_symbol
  | Closed_atom_cation_symbol of Closed_atom_cation_symbol_t.closed_atom_cation_symbol
;;


(** Closed_atom_symbol_t at 12:27:38 on 24 Jun 2013. created by version v2.3 of generator *)



