(** {3 A Symbol for a Molecule_aminoacid_fragmented_tlc.} *)


(** {6 Modules.} *)

module Marts_t = Molecule_aminoacid_regular_tlc_symbol_t


(** {6 Typing.} *)

type molecule_aminoacid_fragmented_tlc_symbol =
  | Pro
  | Molecule_aminoacid_regular_tlc_symbol of Marts_t.molecule_aminoacid_regular_tlc_symbol
;;


(** created by ./generator molecule_aminoacid_fragmented_tlc t symbol at 19:13 25 Apr 2011. *)



