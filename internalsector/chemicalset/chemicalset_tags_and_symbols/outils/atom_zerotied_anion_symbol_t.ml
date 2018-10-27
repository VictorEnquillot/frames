(** {3 A Symbol for a Atom_zerotied_anion.} *)


(** {6 Modules.} *)

module A0am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module A0am2s_t = Atom_zerotied_anion_minus_two_symbol_t


(** {6 Typing.} *)

type atom_zerotied_anion_symbol =
  | Atom_zerotied_anion_minus_one_symbol of A0am1s_t.atom_zerotied_anion_minus_one_symbol
  | Atom_zerotied_anion_minus_two_symbol of A0am2s_t.atom_zerotied_anion_minus_two_symbol
;;


(** created by ./generator atom_zerotied_anion t symbol at 19:13 25 Apr 2011. *)



