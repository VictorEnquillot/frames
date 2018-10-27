(** {3 A Symbol for a Block_zeroonetriple.} *)

(** {6 Displaying.} *)

val name :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch_t from Block_zeroonetriple.} *)

(* No Extraction from doublet ch_t. *)

(** {6 Querying.} *)

(** {6 Querying Ch_t in Block_zeroonetriple.} *)

(* No Query from ch_t 0. *)

(** {6 Upgrading from Ch_t to Block_zeroonetriple.} *)

val ch_t : Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zeroonetriple 12 January 2011. *)

