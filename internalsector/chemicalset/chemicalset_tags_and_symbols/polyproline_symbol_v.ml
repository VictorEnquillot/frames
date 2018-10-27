(** {3 A Symbol for a Polyproline.} *)

let nam_mod = "Polyproline_symbol_v";;

(** {6 Modules.} *)

module Dbt_v = Doublet_v
module Ord_p = Ordinal_p
module Pps_t = Polyproline_symbol_t
module Str_v = String_v

(** {6 Displaying.} *)

let name = function
  | Pps_t.Doublet dbt ->
      Dbt_v.name Str_v.name Ord_p.name dbt
;;

let print ppf = function
  | Pps_t.Doublet dbt ->
      Dbt_v.print Str_v.print Ord_p.print ppf dbt
;;

(** {6 Extracting.} *)

(** {6 Extracting Doublet_string_ordinal from Polyproline.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Querying.} *)

(** {6 Querying Doublet_string_ordinal in Polyproline.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Upgrading from Doublet_string_ordinal to Polyproline.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** created by ./do_entitysum_symbol_v_ml.sh polyproline 12 January 2011. *)

