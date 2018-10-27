(** {3 A Symbol for a Aggregate.} *)

(** {6 Displaying.} *)

val name :
  Aggregate_symbol_t.aggregate_symbol ->
    string
;;

val print : Format.formatter ->
  Aggregate_symbol_t.aggregate_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Doublet_string_ordinal from Aggregate.} *)

(* No Extraction from doublet doublet_string_ordinal. *)

(** {6 Querying.} *)

(** {6 Querying Doublet_string_ordinal in Aggregate.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Upgrading from Doublet_string_ordinal to Aggregate.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** created by ./do_entitysum_symbol_v_mli.sh aggregate 12 January 2011. *)

