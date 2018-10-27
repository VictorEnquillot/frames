(** {3 Molecule_formula_t} *)


(** {6 Typing_for_formula} *)

type molecule_formula =
  | Zerotied_atom_formula of Zerotied_atom_formula_t.zerotied_atom_formula
  | Zerotied_block_formula of Zerotied_block_formula_t.zerotied_block_formula
  | Zerotied_fragment_formula of Zerotied_fragment_formula_t.zerotied_fragment_formula
  | Zerotied_forked_formula of Zerotied_forked_formula_t.zerotied_forked_formula
;;


(** Molecule_formula_t at 12:5:5 on 19 Jun 2013. created by version v2.2 of generator *)



