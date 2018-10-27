(** {3 A Symbol for a Bridge.} *)


let name :
  Bridge_symbol_t.bridge_symbol ->
    string
;;


val print : Format.Formatter ->
  Bridge_symbol_t.bridge_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Bc : Bridge_symbol_t.bridge_symbol;;

val Bd : Bridge_symbol_t.bridge_symbol;;

val Bs : Bridge_symbol_t.bridge_symbol;;



(** created by ./generator bridge v symbol at 9:28 26 Apr 2011. *)



