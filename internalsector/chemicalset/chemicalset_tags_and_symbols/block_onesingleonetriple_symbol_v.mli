(** {3 A Symbol for a Block_onesingleonetriple.} *)

(** {6 Displaying.} *)

val name :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_st from Block_onesingleonetriple.} *)

(* No Extraction from doublet c_st. *)

(** {6 Extracting N_st_1p from Block_onesingleonetriple.} *)

(* No Extraction from doublet n_st_1p. *)

(** {6 Querying.} *)

(** {6 Querying C_st in Block_onesingleonetriple.} *)

(* No Query from c_st 0. *)

(** {6 Querying N_st_1p in Block_onesingleonetriple.} *)

(* No Query from n_st_1p 0. *)

(** {6 Upgrading from C_st to Block_onesingleonetriple.} *)

val c_st : Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol;;

(** {6 Upgrading from N_st_1p to Block_onesingleonetriple.} *)

val n_st_1p : Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onesingleonetriple 12 January 2011. *)

