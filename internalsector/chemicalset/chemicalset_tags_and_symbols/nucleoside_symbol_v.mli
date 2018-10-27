(** {3 A Symbol for a Nucleoside.} *)

(** {6 Displaying.} *)

val name :
  Nucleoside_symbol_t.nucleoside_symbol ->
    string
;;

val print : Format.formatter ->
  Nucleoside_symbol_t.nucleoside_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ribonucleoside from Nucleoside.} *)

(* No Extraction from doublet ribonucleoside. *)

(** {6 Extracting Deoxyribonucleoside from Nucleoside.} *)

(* No Extraction from doublet deoxyribonucleoside. *)

(** {6 Querying.} *)

(** {6 Querying Ribonucleoside in Nucleoside.} *)

(* No Query from ribonucleoside 0. *)

(** {6 Querying Deoxyribonucleoside in Nucleoside.} *)

(* No Query from deoxyribonucleoside 0. *)

(** {6 Upgrading from Ribonucleoside to Nucleoside.} *)

val ribonucleoside : Nucleoside_symbol_t.nucleoside_symbol;;

(** {6 Upgrading from Deoxyribonucleoside to Nucleoside.} *)

val deoxyribonucleoside : Nucleoside_symbol_t.nucleoside_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh nucleoside 12 January 2011. *)

