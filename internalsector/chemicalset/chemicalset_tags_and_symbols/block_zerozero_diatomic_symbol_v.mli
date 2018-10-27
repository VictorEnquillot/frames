(** {3 A Symbol for a Block_zerozero_diatomic.} *)

(** {6 Displaying.} *)

val name :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Co_zz from Block_zerozero_diatomic.} *)

(* No Extraction from doublet co_zz. *)

(** {6 Querying.} *)

(** {6 Querying Co_zz in Block_zerozero_diatomic.} *)

(* No Query from co_zz 0. *)

(** {6 Upgrading from Co_zz to Block_zerozero_diatomic.} *)

val co_zz : Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zerozero_diatomic 12 January 2011. *)

