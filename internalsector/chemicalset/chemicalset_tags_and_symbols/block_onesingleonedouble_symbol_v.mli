(** {3 A Symbol for a Block_onesingleonedouble.} *)

(** {6 Displaying.} *)

val name :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch_sd from Block_onesingleonedouble.} *)

(* No Extraction from doublet ch_sd. *)

(** {6 Extracting N_sd from Block_onesingleonedouble.} *)

(* No Extraction from doublet n_sd. *)

(** {6 Extracting N_sd_1p from Block_onesingleonedouble.} *)

(* No Extraction from doublet n_sd_1p. *)

(** {6 Querying.} *)

(** {6 Querying Ch_sd in Block_onesingleonedouble.} *)

(* No Query from ch_sd 0. *)

(** {6 Querying N_sd in Block_onesingleonedouble.} *)

(* No Query from n_sd 0. *)

(** {6 Querying N_sd_1p in Block_onesingleonedouble.} *)

(* No Query from n_sd_1p 0. *)

(** {6 Upgrading from Ch_sd to Block_onesingleonedouble.} *)

val ch_sd : Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol;;

(** {6 Upgrading from N_sd to Block_onesingleonedouble.} *)

val n_sd : Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol;;

(** {6 Upgrading from N_sd_1p to Block_onesingleonedouble.} *)

val n_sd_1p : Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onesingleonedouble 12 January 2011. *)

