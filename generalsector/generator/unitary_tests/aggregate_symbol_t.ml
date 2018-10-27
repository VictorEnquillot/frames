(** {3 A Symbol for a Aggregate.} *)


(** {6 Modules.} *)

module Ord_p = Ordinal_p
module Dbt_t = Doublet_t



(** {6 Typing.} *)

type aggregate_symbol =
  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet
;;


(** created by ./generator aggregate t symbol at 8:33 12 May 2011. *)



