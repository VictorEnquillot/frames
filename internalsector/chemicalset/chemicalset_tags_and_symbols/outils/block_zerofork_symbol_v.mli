(** {3 A Symbol for a Block_zerofork.} *)


let name :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    unit
;;


(** {6 Extracting.} *)

val block_zerofork_symbol_off_block_zerobifork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    B0bs_v
;;

val block_zerofork_symbol_off_block_zerotrifork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    B0ts_v
;;

val block_zerofork_symbol_off_block_zeroquadrifork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    B0qs_v
;;


(** {6 Querying.} *)

val is_block_zerofork_symbol_off_block_zerobifork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    bool
;;

val is_block_zerofork_symbol_off_block_zerotrifork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    bool
;;

val is_block_zerofork_symbol_off_block_zeroquadrifork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val block_zerofork_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    B0s_v
;;

val ch_zsc : Block_zerofork_symbol_t.block_zerofork_symbol;;

val ch_zsd : Block_zerofork_symbol_t.block_zerofork_symbol;;

val nh_zs2 : Block_zerofork_symbol_t.block_zerofork_symbol;;

val block_zerofork_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    B0s_v
;;

val ch_s3 : Block_zerofork_symbol_t.block_zerofork_symbol;;

val n_s3 : Block_zerofork_symbol_t.block_zerofork_symbol;;

val block_zerofork_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    B0s_v
;;

val c_q : Block_zerofork_symbol_t.block_zerofork_symbol;;

val n_q_1p : Block_zerofork_symbol_t.block_zerofork_symbol;;



(** created by ./generator block_zerofork v symbol at 9:28 26 Apr 2011. *)



