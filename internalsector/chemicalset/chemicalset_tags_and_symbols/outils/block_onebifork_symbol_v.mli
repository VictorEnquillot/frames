(** {3 A Symbol for a Block_onebifork.} *)


let name :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    unit
;;


(** {6 Extracting.} *)

val block_onebifork_symbol_off_block_onesinglebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    B1sbs_v
;;

val block_onebifork_symbol_off_block_onesinglebiforksinglesingle_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    B1s_v
;;

val block_onebifork_symbol_off_block_onedoublebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    B1dbs_v
;;


(** {6 Querying.} *)

val is_block_onebifork_symbol_off_block_onesinglebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    bool
;;

val is_block_onebifork_symbol_off_block_onesinglebiforksinglesingle_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    bool
;;

val is_block_onebifork_symbol_off_block_onedoublebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val block_onebifork_symbol_of_block_onesinglebifork_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    B1bs_v
;;

val block_onebifork_symbol_of_block_onesinglebiforksinglesingle_symbol :
  Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol ->
    B1bs_v
;;

val c_s2 : Block_onebifork_symbol_t.block_onebifork_symbol;;

val n_s2_1p : Block_onebifork_symbol_t.block_onebifork_symbol;;

val block_onesinglebiforksinglesingleconjugated : Block_onebifork_symbol_t.block_onebifork_symbol;;

val block_onebifork_symbol_of_block_onedoublebifork_symbol :
  Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol ->
    B1bs_v
;;

val c_ds2 : Block_onebifork_symbol_t.block_onebifork_symbol;;

val n_ds2_1p : Block_onebifork_symbol_t.block_onebifork_symbol;;



(** created by ./generator block_onebifork v symbol at 9:28 26 Apr 2011. *)



