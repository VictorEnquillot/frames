(** {3 A Symbol for a Purine_base.} *)

(** {6 Displaying.} *)

val name :
  Purine_base_symbol_t.purine_base_symbol ->
    string
;;

val print : Format.formatter ->
  Purine_base_symbol_t.purine_base_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Adenosine from Purine_base.} *)

(* No Extraction from doublet Adenosine. *)

(** {6 Extracting Guanine from Purine_base.} *)

(* No Extraction from doublet Guanine. *)

(** {6 Querying.} *)

(** {6 Querying Adenosine in Purine_base.} *)

(* No Query from Adenosine 0. *)

(** {6 Querying Guanine in Purine_base.} *)

(* No Query from Guanine 0. *)

(** {6 Upgrading from Adenosine to Purine_base.} *)

val adenosine : Purine_base_symbol_t.purine_base_symbol;;

(** {6 Upgrading from Guanine to Purine_base.} *)

val guanine : Purine_base_symbol_t.purine_base_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh purine_base 12 January 2011. *)

