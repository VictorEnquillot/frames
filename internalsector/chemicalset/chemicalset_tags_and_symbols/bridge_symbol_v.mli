(** {3 A Symbol for a Bridge.} *)

(** {6 Displaying.} *)

val name :
  Bridge_symbol_t.bridge_symbol ->
    string
;;

val print : Format.formatter ->
  Bridge_symbol_t.bridge_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Bc from Bridge.} *)

(* No Extraction from doublet Bc. *)

(** {6 Extracting Bd from Bridge.} *)

(* No Extraction from doublet Bd. *)

(** {6 Extracting Bs from Bridge.} *)

(* No Extraction from doublet Bs. *)

(** {6 Querying.} *)

(** {6 Querying Bc in Bridge.} *)

(* No Query from Bc 0. *)

(** {6 Querying Bd in Bridge.} *)

(* No Query from Bd 0. *)

(** {6 Querying Bs in Bridge.} *)

(* No Query from Bs 0. *)

(** {6 Upgrading from Bc to Bridge.} *)

val bc : Bridge_symbol_t.bridge_symbol;;

(** {6 Upgrading from Bd to Bridge.} *)

val bd : Bridge_symbol_t.bridge_symbol;;

(** {6 Upgrading from Bs to Bridge.} *)

val bs : Bridge_symbol_t.bridge_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh bridge 12 January 2011. *)

