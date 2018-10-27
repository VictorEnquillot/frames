(** {3 A Symbol for a Block_zerotrifork.} *)

(** {6 Displaying.} *)

val name :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch_s3 from Block_zerotrifork.} *)

(* No Extraction from doublet ch_s3. *)

(** {6 Extracting N_s3 from Block_zerotrifork.} *)

(* No Extraction from doublet n_s3. *)

(** {6 Querying.} *)

(** {6 Querying Ch_s3 in Block_zerotrifork.} *)

(* No Query from ch_s3 0. *)

(** {6 Querying N_s3 in Block_zerotrifork.} *)

(* No Query from n_s3 0. *)

(** {6 Upgrading from Ch_s3 to Block_zerotrifork.} *)

val ch_s3 : Block_zerotrifork_symbol_t.block_zerotrifork_symbol;;

(** {6 Upgrading from N_s3 to Block_zerotrifork.} *)

val n_s3 : Block_zerotrifork_symbol_t.block_zerotrifork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zerotrifork 12 January 2011. *)

