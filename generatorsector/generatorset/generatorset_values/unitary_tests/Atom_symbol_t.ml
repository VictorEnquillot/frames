(** {3 Atom_symbol_t} *)


(** {6 Typing_for_symbol} *)

type atom_symbol =
  | Atom_zerotied_symbol of Atom_zerotied_symbol_t.atom_zerotied_symbol
  | Atom_onetied_symbol of Atom_onetied_symbol_t.atom_onetied_symbol
  | Atom_twotied_symbol of Atom_twotied_symbol_t.atom_twotied_symbol
  | Atom_threetied_symbol of Atom_threetied_symbol_t.atom_threetied_symbol
  | Atom_fourtied_symbol of Atom_fourtied_symbol_t.atom_fourtied_symbol
  | Atom_fivetied_symbol of Atom_fivetied_symbol_t.atom_fivetied_symbol
  | Atom_sixtied_symbol of Atom_sixtied_symbol_t.atom_sixtied_symbol
;;


(** Atom_symbol_t at 15:44:47 on 17 Jun 2013. created by version v2.2 of generator *)



