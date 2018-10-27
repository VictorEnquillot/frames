(** {3 A Symbol for a Block_zerofork.} *)

(** {6 Displaying.} *)

val name :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_zerobifork from Block_zerofork.} *)

val block_zerobifork_symbol_off_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Block_zerobifork_symbol_t.block_zerobifork_symbol
;;

(** {9 Extracting Ch_zsc from Block_zerobifork from Block_zerofork.} *)

(* No Extraction from doublet ch_zsc. *)

(** {9 Extracting Ch_zsd from Block_zerobifork from Block_zerofork.} *)

(* No Extraction from doublet ch_zsd. *)

(** {9 Extracting Nh_zs2 from Block_zerobifork from Block_zerofork.} *)

(* No Extraction from doublet nh_zs2. *)

(** {6 Extracting Block_zerotrifork from Block_zerofork.} *)

val block_zerotrifork_symbol_off_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Block_zerotrifork_symbol_t.block_zerotrifork_symbol
;;

(** {9 Extracting Ch_s3 from Block_zerotrifork from Block_zerofork.} *)

(* No Extraction from doublet ch_s3. *)

(** {9 Extracting N_s3 from Block_zerotrifork from Block_zerofork.} *)

(* No Extraction from doublet n_s3. *)

(** {6 Extracting Block_zeroquadrifork from Block_zerofork.} *)

val block_zeroquadrifork_symbol_off_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol
;;

(** {9 Extracting C_q from Block_zeroquadrifork from Block_zerofork.} *)

(* No Extraction from doublet c_q. *)

(** {9 Extracting N_q_1p from Block_zeroquadrifork from Block_zerofork.} *)

(* No Extraction from doublet n_q_1p. *)

(** {6 Querying.} *)

(** {6 Querying Block_zerobifork in Block_zerofork.} *)

val is_block_zerobifork_symbol_off_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
  bool
;;

(** {9 Querying Ch_zsc in Block_zerobifork in Block_zerofork.} *)

(* No Query from ch_zsc 0. *)

(** {9 Querying Ch_zsd in Block_zerobifork in Block_zerofork.} *)

(* No Query from ch_zsd 0. *)

(** {9 Querying Nh_zs2 in Block_zerobifork in Block_zerofork.} *)

(* No Query from nh_zs2 0. *)

(** {6 Querying Block_zerotrifork in Block_zerofork.} *)

val is_block_zerotrifork_symbol_off_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
  bool
;;

(** {9 Querying Ch_s3 in Block_zerotrifork in Block_zerofork.} *)

(* No Query from ch_s3 0. *)

(** {9 Querying N_s3 in Block_zerotrifork in Block_zerofork.} *)

(* No Query from n_s3 0. *)

(** {6 Querying Block_zeroquadrifork in Block_zerofork.} *)

val is_block_zeroquadrifork_symbol_off_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
  bool
;;

(** {9 Querying C_q in Block_zeroquadrifork in Block_zerofork.} *)

(* No Query from c_q 0. *)

(** {9 Querying N_q_1p in Block_zeroquadrifork in Block_zerofork.} *)

(* No Query from n_q_1p 0. *)

(** {6 Upgrading from Block_zerobifork to Block_zerofork.} *)

val block_zerofork_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {9 Upgrading from Ch_zsc through Block_zerobifork to Block_zerofork.} *)

val ch_zsc : Block_zerofork_symbol_t.block_zerofork_symbol;;

(** {9 Upgrading from Ch_zsd through Block_zerobifork to Block_zerofork.} *)

val ch_zsd : Block_zerofork_symbol_t.block_zerofork_symbol;;

(** {9 Upgrading from Nh_zs2 through Block_zerobifork to Block_zerofork.} *)

val nh_zs2 : Block_zerofork_symbol_t.block_zerofork_symbol;;

(** {6 Upgrading from Block_zerotrifork to Block_zerofork.} *)

val block_zerofork_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {9 Upgrading from Ch_s3 through Block_zerotrifork to Block_zerofork.} *)

val ch_s3 : Block_zerofork_symbol_t.block_zerofork_symbol;;

(** {9 Upgrading from N_s3 through Block_zerotrifork to Block_zerofork.} *)

val n_s3 : Block_zerofork_symbol_t.block_zerofork_symbol;;

(** {6 Upgrading from Block_zeroquadrifork to Block_zerofork.} *)

val block_zerofork_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {9 Upgrading from C_q through Block_zeroquadrifork to Block_zerofork.} *)

val c_q : Block_zerofork_symbol_t.block_zerofork_symbol;;

(** {9 Upgrading from N_q_1p through Block_zeroquadrifork to Block_zerofork.} *)

val n_q_1p : Block_zerofork_symbol_t.block_zerofork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zerofork 12 January 2011. *)

