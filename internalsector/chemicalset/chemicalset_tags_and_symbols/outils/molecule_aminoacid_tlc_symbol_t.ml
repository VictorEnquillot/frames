(** {3 A Symbol for a Molecule_aminoacid_tlc.} *)


(** {6 Modules.} *)

module Masts_t = Molecule_aminoacid_segmented_tlc_symbol_t
module Mafts_t = Molecule_aminoacid_fragmented_tlc_symbol_t


(** {6 Typing.} *)

type molecule_aminoacid_tlc_symbol =
  | Molecule_aminoacid_segmented_tlc_symbol of Masts_t.molecule_aminoacid_segmented_tlc_symbol
  | Molecule_aminoacid_fragmented_tlc_symbol of Mafts_t.molecule_aminoacid_fragmented_tlc_symbol
;;


(** created by ./generator molecule_aminoacid_tlc t symbol at 19:13 25 Apr 2011. *)



