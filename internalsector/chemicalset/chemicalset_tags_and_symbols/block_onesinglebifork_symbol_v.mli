(** {3 A Symbol for a Block_onesinglebifork.} *)

(** {6 Displaying.} *)

val name :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_onesinglebiforksinglesingle from Block_onesinglebifork.} *)

val block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol
;;

(** {9 Extracting C_s2 from Block_onesinglebiforksinglesingle from Block_onesinglebifork.} *)

(* No Extraction from doublet c_s2. *)

(** {9 Extracting N_s2_1p from Block_onesinglebiforksinglesingle from Block_onesinglebifork.} *)

(* No Extraction from doublet n_s2_1p. *)

(** {6 Extracting Block_onesinglebiforksinglesingleconjugated from Block_onesinglebifork.} *)

(* No Extraction from doublet block_onesinglebiforksinglesingleconjugated. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesinglebiforksinglesingle in Block_onesinglebifork.} *)

val is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
  bool
;;

(** {9 Querying C_s2 in Block_onesinglebiforksinglesingle in Block_onesinglebifork.} *)

(* No Query from c_s2 0. *)

(** {9 Querying N_s2_1p in Block_onesinglebiforksinglesingle in Block_onesinglebifork.} *)

(* No Query from n_s2_1p 0. *)

(** {6 Querying Block_onesinglebiforksinglesingleconjugated in Block_onesinglebifork.} *)

(* No Query from block_onesinglebiforksinglesingleconjugated 0. *)

(** {6 Upgrading from Block_onesinglebiforksinglesingle to Block_onesinglebifork.} *)

val block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol :
  Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol ->
    Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol
;;

(** {9 Upgrading from C_s2 through Block_onesinglebiforksinglesingle to Block_onesinglebifork.} *)

val c_s2 : Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol;;

(** {9 Upgrading from N_s2_1p through Block_onesinglebiforksinglesingle to Block_onesinglebifork.} *)

val n_s2_1p : Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol;;

(** {6 Upgrading from Block_onesinglebiforksinglesingleconjugated to Block_onesinglebifork.} *)

val block_onesinglebiforksinglesingleconjugated : Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onesinglebifork 12 January 2011. *)

