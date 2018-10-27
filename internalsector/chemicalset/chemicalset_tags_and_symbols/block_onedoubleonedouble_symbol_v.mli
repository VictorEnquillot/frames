(** {3 A Symbol for a Block_onedoubleonedouble.} *)

(** {6 Displaying.} *)

val name :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_dd from Block_onedoubleonedouble.} *)

(* No Extraction from doublet c_dd. *)

(** {6 Extracting N_dd_1p from Block_onedoubleonedouble.} *)

(* No Extraction from doublet n_dd_1p. *)

(** {6 Querying.} *)

(** {6 Querying C_dd in Block_onedoubleonedouble.} *)

(* No Query from c_dd 0. *)

(** {6 Querying N_dd_1p in Block_onedoubleonedouble.} *)

(* No Query from n_dd_1p 0. *)

(** {6 Upgrading from C_dd to Block_onedoubleonedouble.} *)

val c_dd : Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol;;

(** {6 Upgrading from N_dd_1p to Block_onedoubleonedouble.} *)

val n_dd_1p : Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onedoubleonedouble 12 January 2011. *)

