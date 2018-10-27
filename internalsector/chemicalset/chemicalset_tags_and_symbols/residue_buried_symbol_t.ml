(** {3 A Symbol for a Residue_buried.} *)

(** {6 Modules.} *)

module Rbss_t = Residue_buried_segmented_symbol_t
module Rbfs_t = Residue_buried_fragmented_symbol_t

(** {6 Type.} *)

type residue_buried_symbol =
  | Residue_buried_segmented_symbol of Rbss_t.residue_buried_segmented_symbol
  | Residue_buried_fragmented_symbol of Rbfs_t.residue_buried_fragmented_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh residue_buried 12 January 2011. *)

