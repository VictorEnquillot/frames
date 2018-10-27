(** {3 A Symbol for a Atom_zerotied_cation.} *)


(** {6 Modules.} *)

module A0cp1s_t = Atom_zerotied_cation_plus_one_symbol_t
module A0cp2s_t = Atom_zerotied_cation_plus_two_symbol_t
module A0cp3s_t = Atom_zerotied_cation_plus_three_symbol_t


(** {6 Typing.} *)

type atom_zerotied_cation_symbol =
  | Atom_zerotied_cation_plus_one_symbol of A0cp1s_t.atom_zerotied_cation_plus_one_symbol
  | Atom_zerotied_cation_plus_two_symbol of A0cp2s_t.atom_zerotied_cation_plus_two_symbol
  | Atom_zerotied_cation_plus_three_symbol of A0cp3s_t.atom_zerotied_cation_plus_three_symbol
;;


(** created by ./generator atom_zerotied_cation t symbol at 19:13 25 Apr 2011. *)



