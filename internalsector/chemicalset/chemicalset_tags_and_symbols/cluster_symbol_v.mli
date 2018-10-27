(** {3 A Symbol for a Cluster.} *)

(** {6 Displaying.} *)

val name :
  Cluster_symbol_t.cluster_symbol ->
    string
;;

val print : Format.formatter ->
  Cluster_symbol_t.cluster_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Doublet_string_ordinal from Cluster.} *)

(* No Extraction from doublet doublet_string_ordinal. *)

(** {6 Querying.} *)

(** {6 Querying Doublet_string_ordinal in Cluster.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Upgrading from Doublet_string_ordinal to Cluster.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** created by ./do_entitysum_symbol_v_mli.sh cluster 12 January 2011. *)

