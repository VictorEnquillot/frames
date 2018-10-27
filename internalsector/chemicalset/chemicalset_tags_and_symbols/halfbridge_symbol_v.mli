(** {3 A Symbol for a Halfbridge.} *)

(** {6 Displaying.} *)

val name :
  Halfbridge_symbol_t.halfbridge_symbol ->
    string
;;

val print : Format.formatter ->
  Halfbridge_symbol_t.halfbridge_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Hbc from Halfbridge.} *)

(* No Extraction from doublet Hbc. *)

(** {6 Extracting Hbd from Halfbridge.} *)

(* No Extraction from doublet Hbd. *)

(** {6 Extracting Hbs from Halfbridge.} *)

(* No Extraction from doublet Hbs. *)

(** {6 Extracting Hbt from Halfbridge.} *)

(* No Extraction from doublet Hbt. *)

(** {6 Querying.} *)

(** {6 Querying Hbc in Halfbridge.} *)

(* No Query from Hbc 0. *)

(** {6 Querying Hbd in Halfbridge.} *)

(* No Query from Hbd 0. *)

(** {6 Querying Hbs in Halfbridge.} *)

(* No Query from Hbs 0. *)

(** {6 Querying Hbt in Halfbridge.} *)

(* No Query from Hbt 0. *)

(** {6 Upgrading from Hbc to Halfbridge.} *)

val hbc : Halfbridge_symbol_t.halfbridge_symbol;;

(** {6 Upgrading from Hbd to Halfbridge.} *)

val hbd : Halfbridge_symbol_t.halfbridge_symbol;;

(** {6 Upgrading from Hbs to Halfbridge.} *)

val hbs : Halfbridge_symbol_t.halfbridge_symbol;;

(** {6 Upgrading from Hbt to Halfbridge.} *)

val hbt : Halfbridge_symbol_t.halfbridge_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh halfbridge 12 January 2011. *)

