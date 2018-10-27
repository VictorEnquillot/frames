(** {3 A Symbol for a Molecule_aminoacid_fragmented_tlc.} *)

(** {6 Modules.} *)

 (* pro is a bare constructor no module can be defined *)
module Marts_t = Molecule_aminoacid_regular_tlc_symbol_t

(** {6 Type.} *)

type molecule_aminoacid_fragmented_tlc_symbol =
  | Pro
  | Molecule_aminoacid_regular_tlc_symbol of Marts_t.molecule_aminoacid_regular_tlc_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_aminoacid_fragmented_tlc 13 January 2011. *)

