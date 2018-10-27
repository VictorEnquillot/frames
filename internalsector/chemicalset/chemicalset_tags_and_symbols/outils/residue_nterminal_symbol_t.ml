(** {3 A Symbol for a Residue_nterminal.} *)


(** {6 Modules.} *)

module Rnss_t = Residue_nterminal_segmented_symbol_t
module Rnfs_t = Residue_nterminal_fragmented_symbol_t


(** {6 Typing.} *)

type residue_nterminal_symbol =
  | Residue_nterminal_segmented_symbol of Rnss_t.residue_nterminal_segmented_symbol
  | Residue_nterminal_fragmented_symbol of Rnfs_t.residue_nterminal_fragmented_symbol
;;


(** created by ./generator residue_nterminal t symbol at 19:13 25 Apr 2011. *)



