(** {3 A Symbol for a Peptideca_buried.} *)


(** {6 Modules.} *)

module Pbss_t = Peptideca_buried_segmented_symbol_t
module Pbfs_t = Peptideca_buried_fragmented_symbol_t


(** {6 Typing.} *)

type peptideca_buried_symbol =
  | Peptideca_buried_segmented_symbol of Pbss_t.peptideca_buried_segmented_symbol
  | Peptideca_buried_fragmented_symbol of Pbfs_t.peptideca_buried_fragmented_symbol
;;


(** created by ./generator peptideca_buried t symbol at 19:13 25 Apr 2011. *)



