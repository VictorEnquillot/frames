(** {3 A Symbol for a Peptideca_nterminal.} *)


(** {6 Modules.} *)

module Pnss_t = Peptideca_nterminal_segmented_symbol_t
module Pnfs_t = Peptideca_nterminal_fragmented_symbol_t


(** {6 Typing.} *)

type peptideca_nterminal_symbol =
  | Peptideca_nterminal_segmented_symbol of Pnss_t.peptideca_nterminal_segmented_symbol
  | Peptideca_nterminal_fragmented_symbol of Pnfs_t.peptideca_nterminal_fragmented_symbol
;;


(** created by ./generator peptideca_nterminal t symbol at 19:13 25 Apr 2011. *)



