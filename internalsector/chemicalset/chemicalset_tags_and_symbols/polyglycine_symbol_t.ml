(** {3 A Symbol for a Polyglycine.} *)

(** {6 Modules.} *)

module Dbt_t = Doublet_t
module Ord_p = Ordinal_p

(** {6 Type.} *)

type polyglycine_symbol =
  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet
;;

(** created by ./do_entitysum_symbol_t_ml.sh polyglycine 12 January 2011. *)

