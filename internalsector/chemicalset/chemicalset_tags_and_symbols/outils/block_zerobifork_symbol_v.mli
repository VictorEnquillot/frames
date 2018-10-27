(** {3 A Symbol for a Block_zerobifork.} *)


let name :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val ch_zsc : Block_zerobifork_symbol_t.block_zerobifork_symbol;;

val ch_zsd : Block_zerobifork_symbol_t.block_zerobifork_symbol;;

val nh_zs2 : Block_zerobifork_symbol_t.block_zerobifork_symbol;;



(** created by ./generator block_zerobifork v symbol at 9:28 26 Apr 2011. *)



