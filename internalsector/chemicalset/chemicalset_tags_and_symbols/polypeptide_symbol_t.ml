(** {3 A Symbol for a Polypeptide.} *)

(** {6 Modules.} *)

module Plrs_t = Polypeptide_regular_symbol_t
module Pps_t = Polyproline_symbol_t
module Pgs_t = Polyglycine_symbol_t

(** {6 Type.} *)

type polypeptide_symbol =
  | Polypeptide_regular_symbol of Plrs_t.polypeptide_regular_symbol
  | Polyproline_symbol of Pps_t.polyproline_symbol
  | Polyglycine_symbol of Pgs_t.polyglycine_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh polypeptide 12 January 2011. *)

