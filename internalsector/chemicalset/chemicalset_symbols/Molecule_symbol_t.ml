(** {3 Molecule_symbol_t} *)


(** {6 Typing_for_symbol} *)

type molecule_symbol =
  | Zerotied_atom_symbol of Zerotied_atom_symbol_t.zerotied_atom_symbol
  | Zerotied_block_symbol of Zerotied_block_symbol_t.zerotied_block_symbol
  | Zerotied_fragment_symbol of Zerotied_fragment_symbol_t.zerotied_fragment_symbol
  | Zerotied_forked_symbol of Zerotied_forked_symbol_t.zerotied_forked_symbol
;;


(** Molecule_symbol_t at 12:3:35 on 19 Jun 2013. created by version v2.2 of generator *)



