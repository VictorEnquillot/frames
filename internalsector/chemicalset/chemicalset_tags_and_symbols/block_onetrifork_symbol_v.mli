(** {3 A Symbol for a Block_onetrifork.} *)

(** {6 Displaying.} *)

val name :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork.} *)

val block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol
;;

(** {9 Extracting C_ss3 from Block_onesingletriforksinglesinglesingle from Block_onetrifork.} *)

(* No Extraction from doublet c_ss3. *)

(** {9 Extracting N_ss3_1p from Block_onesingletriforksinglesinglesingle from Block_onetrifork.} *)

(* No Extraction from doublet n_ss3_1p. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork.} *)

val is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
  bool
;;

(** {9 Querying C_ss3 in Block_onesingletriforksinglesinglesingle in Block_onetrifork.} *)

(* No Query from c_ss3 0. *)

(** {9 Querying N_ss3_1p in Block_onesingletriforksinglesinglesingle in Block_onetrifork.} *)

(* No Query from n_ss3_1p 0. *)

(** {6 Upgrading from Block_onesingletriforksinglesinglesingle to Block_onetrifork.} *)

val block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol :
  Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol ->
    Block_onetrifork_symbol_t.block_onetrifork_symbol
;;

(** {9 Upgrading from C_ss3 through Block_onesingletriforksinglesinglesingle to Block_onetrifork.} *)

val c_ss3 : Block_onetrifork_symbol_t.block_onetrifork_symbol;;

(** {9 Upgrading from N_ss3_1p through Block_onesingletriforksinglesinglesingle to Block_onetrifork.} *)

val n_ss3_1p : Block_onetrifork_symbol_t.block_onetrifork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onetrifork 12 January 2011. *)

