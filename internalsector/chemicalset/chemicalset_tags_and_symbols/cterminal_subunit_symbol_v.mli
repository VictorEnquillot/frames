(** {3 A Symbol for a Cterminal_subunit.} *)

(** {6 Displaying.} *)

val name :
  Cterminal_subunit_symbol_t.cterminal_subunit_symbol ->
    string
;;

val print : Format.formatter ->
  Cterminal_subunit_symbol_t.cterminal_subunit_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Carboxyl_leftextended from Cterminal_subunit.} *)

(* No Extraction from doublet Carboxyl_leftextended. *)

(** {6 Extracting Carboxylate_leftextended from Cterminal_subunit.} *)

(* No Extraction from doublet Carboxylate_leftextended. *)

(** {6 Querying.} *)

(** {6 Querying Carboxyl_leftextended in Cterminal_subunit.} *)

(* No Query from Carboxyl_leftextended 0. *)

(** {6 Querying Carboxylate_leftextended in Cterminal_subunit.} *)

(* No Query from Carboxylate_leftextended 0. *)

(** {6 Upgrading from Carboxyl_leftextended to Cterminal_subunit.} *)

val carboxyl_leftextended : Cterminal_subunit_symbol_t.cterminal_subunit_symbol;;

(** {6 Upgrading from Carboxylate_leftextended to Cterminal_subunit.} *)

val carboxylate_leftextended : Cterminal_subunit_symbol_t.cterminal_subunit_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh cterminal_subunit 12 January 2011. *)

