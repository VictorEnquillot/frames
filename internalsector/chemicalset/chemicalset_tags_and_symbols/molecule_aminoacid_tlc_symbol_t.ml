(** {3 A Symbol for a Molecule_aminoacid_tlc.} *)

(** {6 Modules.} *)

module Masts_t = Molecule_aminoacid_segmented_tlc_symbol_t
module Mafts_t = Molecule_aminoacid_fragmented_tlc_symbol_t

(** {6 Type.} *)

type molecule_aminoacid_tlc_symbol =
  | Molecule_aminoacid_segmented_tlc_symbol of Masts_t.molecule_aminoacid_segmented_tlc_symbol
  | Molecule_aminoacid_fragmented_tlc_symbol of Mafts_t.molecule_aminoacid_fragmented_tlc_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_aminoacid_tlc 13 January 2011. *)

