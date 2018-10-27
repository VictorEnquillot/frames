(** {3 A Symbol for a Molecule_aminoacid.} *)

(** {6 Modules.} *)

module Mass_t = Molecule_aminoacid_segmented_symbol_t
module Mafs_t = Molecule_aminoacid_fragmented_symbol_t

(** {6 Type.} *)

type molecule_aminoacid_symbol =
  | Molecule_aminoacid_segmented_symbol of Mass_t.molecule_aminoacid_segmented_symbol
  | Molecule_aminoacid_fragmented_symbol of Mafs_t.molecule_aminoacid_fragmented_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_aminoacid 12 January 2011. *)

