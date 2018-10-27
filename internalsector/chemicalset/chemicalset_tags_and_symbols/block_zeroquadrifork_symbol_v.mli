(** {3 A Symbol for a Block_zeroquadrifork.} *)

(** {6 Displaying.} *)

val name :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_q from Block_zeroquadrifork.} *)

(* No Extraction from doublet c_q. *)

(** {6 Extracting N_q_1p from Block_zeroquadrifork.} *)

(* No Extraction from doublet n_q_1p. *)

(** {6 Querying.} *)

(** {6 Querying C_q in Block_zeroquadrifork.} *)

(* No Query from c_q 0. *)

(** {6 Querying N_q_1p in Block_zeroquadrifork.} *)

(* No Query from n_q_1p 0. *)

(** {6 Upgrading from C_q to Block_zeroquadrifork.} *)

val c_q : Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol;;

(** {6 Upgrading from N_q_1p to Block_zeroquadrifork.} *)

val n_q_1p : Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zeroquadrifork 12 January 2011. *)

