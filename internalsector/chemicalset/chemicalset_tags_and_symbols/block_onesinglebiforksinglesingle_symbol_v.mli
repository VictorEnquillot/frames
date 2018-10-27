(** {3 A Symbol for a Block_onesinglebiforksinglesingle.} *)

(** {6 Displaying.} *)

val name :
  Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_s2 from Block_onesinglebiforksinglesingle.} *)

(* No Extraction from doublet c_s2. *)

(** {6 Extracting N_s2_1p from Block_onesinglebiforksinglesingle.} *)

(* No Extraction from doublet n_s2_1p. *)

(** {6 Querying.} *)

(** {6 Querying C_s2 in Block_onesinglebiforksinglesingle.} *)

(* No Query from c_s2 0. *)

(** {6 Querying N_s2_1p in Block_onesinglebiforksinglesingle.} *)

(* No Query from n_s2_1p 0. *)

(** {6 Upgrading from C_s2 to Block_onesinglebiforksinglesingle.} *)

val c_s2 : Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol;;

(** {6 Upgrading from N_s2_1p to Block_onesinglebiforksinglesingle.} *)

val n_s2_1p : Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onesinglebiforksinglesingle 12 January 2011. *)

