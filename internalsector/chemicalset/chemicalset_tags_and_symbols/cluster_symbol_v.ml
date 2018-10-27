(** {3 A Symbol for a Cluster.} *)

let nam_mod = "Cluster_symbol_v";;

(** {6 Modules.} *)

module Cls_t = Cluster_symbol_t
module Dbt_v = Doublet_v
module Ord_p = Ordinal_p
module Str_v = String_v

(** {6 Displaying.} *)

let name = function
  | Cls_t.Doublet dbt ->
      Dbt_v.name Str_v.name Ord_p.name dbt
;;

let print ppf = function
  | Cls_t.Doublet dbt ->
      Dbt_v.print Str_v.print Ord_p.print ppf dbt
;;

(** {6 Extracting.} *)

(** {6 Extracting Doublet_string_ordinal from Cluster.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Querying.} *)

(** {6 Querying Doublet_string_ordinal in Cluster.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Upgrading from Doublet_string_ordinal to Cluster.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** created by ./do_entitysum_symbol_v_ml.sh cluster 12 January 2011. *)

