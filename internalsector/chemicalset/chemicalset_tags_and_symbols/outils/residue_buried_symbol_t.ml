(** {3 A Symbol for a Residue_buried.} *)


(** {6 Modules.} *)

module Rbss_t = Residue_buried_segmented_symbol_t
module Rbfs_t = Residue_buried_fragmented_symbol_t


(** {6 Typing.} *)

type residue_buried_symbol =
  | Residue_buried_segmented_symbol of Rbss_t.residue_buried_segmented_symbol
  | Residue_buried_fragmented_symbol of Rbfs_t.residue_buried_fragmented_symbol
;;


(** created by ./generator residue_buried t symbol at 19:13 25 Apr 2011. *)



