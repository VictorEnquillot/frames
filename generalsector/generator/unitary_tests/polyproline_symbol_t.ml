(** {3 A Symbol for a Polyproline.} *)


(** {6 Modules.} *)

module Ord_p = Ordinal_p
module Dbt_t = Doublet_t



(** {6 Typing.} *)

type polyproline_symbol =
  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet
;;


(** created by ./generator polyproline t symbol at 18:46 11 May 2011. *)



