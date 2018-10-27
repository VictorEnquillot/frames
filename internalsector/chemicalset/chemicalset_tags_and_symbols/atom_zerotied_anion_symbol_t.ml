(** {3 A Symbol for a Atom_zerotied_anion.} *)

(** {6 Modules.} *)

module Am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module Am2s_t = Atom_zerotied_anion_minus_two_symbol_t

(** {6 Type.} *)

type atom_zerotied_anion_symbol =
  | Atom_zerotied_anion_minus_one_symbol of Am1s_t.atom_zerotied_anion_minus_one_symbol
  | Atom_zerotied_anion_minus_two_symbol of Am2s_t.atom_zerotied_anion_minus_two_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh atom_zerotied_anion 12 January 2011. *)

