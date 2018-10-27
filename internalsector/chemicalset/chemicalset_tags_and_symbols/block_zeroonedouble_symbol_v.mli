(** {3 A Symbol for a Block_zeroonedouble.} *)

(** {6 Displaying.} *)

val name :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch2_d from Block_zeroonedouble.} *)

(* No Extraction from doublet ch2_d. *)

(** {6 Extracting Co_d from Block_zeroonedouble.} *)

(* No Extraction from doublet co_d. *)

(** {6 Extracting Nh_d from Block_zeroonedouble.} *)

(* No Extraction from doublet nh_d. *)

(** {6 Extracting Nh2_d_1p from Block_zeroonedouble.} *)

(* No Extraction from doublet nh2_d_1p. *)

(** {6 Querying.} *)

(** {6 Querying Ch2_d in Block_zeroonedouble.} *)

(* No Query from ch2_d 0. *)

(** {6 Querying Co_d in Block_zeroonedouble.} *)

(* No Query from co_d 0. *)

(** {6 Querying Nh_d in Block_zeroonedouble.} *)

(* No Query from nh_d 0. *)

(** {6 Querying Nh2_d_1p in Block_zeroonedouble.} *)

(* No Query from nh2_d_1p 0. *)

(** {6 Upgrading from Ch2_d to Block_zeroonedouble.} *)

val ch2_d : Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol;;

(** {6 Upgrading from Co_d to Block_zeroonedouble.} *)

val co_d : Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol;;

(** {6 Upgrading from Nh_d to Block_zeroonedouble.} *)

val nh_d : Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol;;

(** {6 Upgrading from Nh2_d_1p to Block_zeroonedouble.} *)

val nh2_d_1p : Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zeroonedouble 12 January 2011. *)

