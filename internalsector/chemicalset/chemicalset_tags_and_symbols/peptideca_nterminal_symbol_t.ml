(** {3 A Symbol for a Peptideca_nterminal.} *)

(** {6 Modules.} *)

module Pnss_t = Peptideca_nterminal_segmented_symbol_t
module Pnfs_t = Peptideca_nterminal_fragmented_symbol_t

(** {6 Type.} *)

type peptideca_nterminal_symbol =
  | Peptideca_nterminal_segmented_symbol of Pnss_t.peptideca_nterminal_segmented_symbol
  | Peptideca_nterminal_fragmented_symbol of Pnfs_t.peptideca_nterminal_fragmented_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh peptideca_nterminal 12 January 2011. *)

