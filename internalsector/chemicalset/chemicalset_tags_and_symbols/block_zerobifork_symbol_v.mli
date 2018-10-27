(** {3 A Symbol for a Block_zerobifork.} *)

(** {6 Displaying.} *)

val name :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch_zsc from Block_zerobifork.} *)

(* No Extraction from doublet ch_zsc. *)

(** {6 Extracting Ch_zsd from Block_zerobifork.} *)

(* No Extraction from doublet ch_zsd. *)

(** {6 Extracting Nh_zs2 from Block_zerobifork.} *)

(* No Extraction from doublet nh_zs2. *)

(** {6 Querying.} *)

(** {6 Querying Ch_zsc in Block_zerobifork.} *)

(* No Query from ch_zsc 0. *)

(** {6 Querying Ch_zsd in Block_zerobifork.} *)

(* No Query from ch_zsd 0. *)

(** {6 Querying Nh_zs2 in Block_zerobifork.} *)

(* No Query from nh_zs2 0. *)

(** {6 Upgrading from Ch_zsc to Block_zerobifork.} *)

val ch_zsc : Block_zerobifork_symbol_t.block_zerobifork_symbol;;

(** {6 Upgrading from Ch_zsd to Block_zerobifork.} *)

val ch_zsd : Block_zerobifork_symbol_t.block_zerobifork_symbol;;

(** {6 Upgrading from Nh_zs2 to Block_zerobifork.} *)

val nh_zs2 : Block_zerobifork_symbol_t.block_zerobifork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zerobifork 12 January 2011. *)

