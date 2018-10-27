(** {3 A Symbol for a Block_onezero.} *)


let name :
  Block_onezero_symbol_t.block_onezero_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_onezero_symbol_t.block_onezero_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val onesinglezero : Block_onezero_symbol_t.block_onezero_symbol;;

val oneconjugatedzero : Block_onezero_symbol_t.block_onezero_symbol;;

val onedoublelezero : Block_onezero_symbol_t.block_onezero_symbol;;

val onetriplezero : Block_onezero_symbol_t.block_onezero_symbol;;



(** created by ./generator block_onezero v symbol at 9:28 26 Apr 2011. *)



