(** {3 A Symbol for a Block_onetripleonesingle.} *)

(** {6 Displaying.} *)

val name :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_ts from Block_onetripleonesingle.} *)

(* No Extraction from doublet c_ts. *)

(** {6 Extracting N_ts_1p from Block_onetripleonesingle.} *)

(* No Extraction from doublet n_ts_1p. *)

(** {6 Querying.} *)

(** {6 Querying C_ts in Block_onetripleonesingle.} *)

(* No Query from c_ts 0. *)

(** {6 Querying N_ts_1p in Block_onetripleonesingle.} *)

(* No Query from n_ts_1p 0. *)

(** {6 Upgrading from C_ts to Block_onetripleonesingle.} *)

val c_ts : Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol;;

(** {6 Upgrading from N_ts_1p to Block_onetripleonesingle.} *)

val n_ts_1p : Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onetripleonesingle 12 January 2011. *)

