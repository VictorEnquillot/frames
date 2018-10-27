(** {3 A Symbol for a Molecule_aminoacid_fragmented_olc.} *)


(** {6 Modules.} *)

module Maros_t = Molecule_aminoacid_regular_olc_symbol_t


(** {6 Typing.} *)

type molecule_aminoacid_fragmented_olc_symbol =
  | P
  | Molecule_aminoacid_regular_olc_symbol of Maros_t.molecule_aminoacid_regular_olc_symbol
;;


(** created by ./generator molecule_aminoacid_fragmented_olc t symbol at 19:13 25 Apr 2011. *)



