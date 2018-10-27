(** {3 A Symbol for a Molecule_aminoacid_fragmented_olc.} *)

(** {6 Modules.} *)

 (* p is a bare constructor no module can be defined *)
module Maros_t = Molecule_aminoacid_regular_olc_symbol_t

(** {6 Type.} *)

type molecule_aminoacid_fragmented_olc_symbol =
  | P
  | Molecule_aminoacid_regular_olc_symbol of Maros_t.molecule_aminoacid_regular_olc_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_aminoacid_fragmented_olc 12 January 2011. *)

