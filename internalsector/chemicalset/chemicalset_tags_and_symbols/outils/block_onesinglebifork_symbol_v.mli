(** {3 A Symbol for a Block_onesinglebifork.} *)


let name :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    unit
;;


(** {6 Extracting.} *)

val block_onesinglebifork_symbol_off_block_onesinglebiforksinglesingle_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    B1s_v
;;


(** {6 Querying.} *)

val is_block_onesinglebifork_symbol_off_block_onesinglebiforksinglesingle_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol :
  Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol ->
    B1sbs_v
;;

val c_s2 : Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol;;

val n_s2_1p : Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol;;

val block_onesinglebiforksinglesingleconjugated : Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol;;



(** created by ./generator block_onesinglebifork v symbol at 9:28 26 Apr 2011. *)



