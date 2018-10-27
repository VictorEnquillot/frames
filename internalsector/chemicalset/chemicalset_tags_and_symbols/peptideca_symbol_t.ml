(** {3 A Symbol for a Peptideca.} *)

(** {6 Modules.} *)

module Pbs_t = Peptideca_buried_symbol_t
module Pns_t = Peptideca_nterminal_symbol_t

(** {6 Type.} *)

type peptideca_symbol =
  | Peptideca_buried_symbol of Pbs_t.peptideca_buried_symbol
  | Peptideca_nterminal_symbol of Pns_t.peptideca_nterminal_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh peptideca 12 January 2011. *)

