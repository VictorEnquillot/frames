(** {3 A Symbol for a Polypeptide.} *)


(** {6 Modules.} *)

module Prs_t = Polypeptide_regular_symbol_t
module Pps_t = Polyproline_symbol_t
module Pgs_t = Polyglycine_symbol_t


(** {6 Typing.} *)

type polypeptide_symbol =
  | Polypeptide_regular_symbol of Prs_t.polypeptide_regular_symbol
  | Polyproline_symbol of Pps_t.polyproline_symbol
  | Polyglycine_symbol of Pgs_t.polyglycine_symbol
;;


(** created by ./generator polypeptide t symbol at 19:10 25 Apr 2011. *)



