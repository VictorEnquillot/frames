(** {3 A Symbol for a Molecule_linear_monoatomic.} *)

(** {6 Modules.} *)

module Azes_t = Atom_zerotied_symbol_t

(** {6 Type.} *)

type molecule_linear_monoatomic_symbol =
  | Atom_zerotied_symbol of Azes_t.atom_zerotied_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_linear_monoatomic 12 January 2011. *)

