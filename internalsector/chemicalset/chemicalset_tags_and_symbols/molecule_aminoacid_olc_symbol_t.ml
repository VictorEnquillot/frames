(** {3 A Symbol for a Molecule_aminoacid_olc.} *)

(** {6 Modules.} *)

module Masos_t = Molecule_aminoacid_segmented_olc_symbol_t
module Mafos_t = Molecule_aminoacid_fragmented_olc_symbol_t

(** {6 Type.} *)

type molecule_aminoacid_olc_symbol =
  | Molecule_aminoacid_segmented_olc_symbol of Masos_t.molecule_aminoacid_segmented_olc_symbol
  | Molecule_aminoacid_fragmented_olc_symbol of Mafos_t.molecule_aminoacid_fragmented_olc_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_aminoacid_olc 13 January 2011. *)

