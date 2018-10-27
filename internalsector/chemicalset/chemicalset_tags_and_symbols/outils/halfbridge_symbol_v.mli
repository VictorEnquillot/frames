(** {3 A Symbol for a Halfbridge.} *)


let name :
  Halfbridge_symbol_t.halfbridge_symbol ->
    string
;;


val print : Format.Formatter ->
  Halfbridge_symbol_t.halfbridge_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Hbc : Halfbridge_symbol_t.halfbridge_symbol;;

val Hbd : Halfbridge_symbol_t.halfbridge_symbol;;

val Hbs : Halfbridge_symbol_t.halfbridge_symbol;;

val Hbt : Halfbridge_symbol_t.halfbridge_symbol;;



(** created by ./generator halfbridge v symbol at 9:28 26 Apr 2011. *)



