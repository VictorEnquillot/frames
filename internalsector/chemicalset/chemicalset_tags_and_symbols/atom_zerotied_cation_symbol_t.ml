(** {3 A Symbol for a Atom_zerotied_cation.} *)

(** {6 Modules.} *)

module Ac1s_t = Atom_zerotied_cation_plus_one_symbol_t
module Ac2s_t = Atom_zerotied_cation_plus_two_symbol_t
module Ac3s_t = Atom_zerotied_cation_plus_three_symbol_t

(** {6 Type.} *)

type atom_zerotied_cation_symbol =
  | Atom_zerotied_cation_plus_one_symbol of Ac1s_t.atom_zerotied_cation_plus_one_symbol
  | Atom_zerotied_cation_plus_two_symbol of Ac2s_t.atom_zerotied_cation_plus_two_symbol
  | Atom_zerotied_cation_plus_three_symbol of Ac3s_t.atom_zerotied_cation_plus_three_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh atom_zerotied_cation 12 January 2011. *)

