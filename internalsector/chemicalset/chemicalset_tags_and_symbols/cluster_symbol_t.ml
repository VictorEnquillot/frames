(** {3 A Symbol for a Cluster.} *)

(** {6 Modules.} *)

module Dbt_t = Doublet_t
module Ord_p = Ordinal_p

(** {6 Type.} *)

type cluster_symbol =
  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet
;;

(** created by ./do_entitysum_symbol_t_ml.sh cluster 12 January 2011. *)

