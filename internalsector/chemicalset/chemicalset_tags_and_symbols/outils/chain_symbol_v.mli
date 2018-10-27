(** {3 A Symbol for a Chain.} *)


let name :
  Chain_symbol_t.chain_symbol ->
    string
;;


val print : Format.Formatter ->
  Chain_symbol_t.chain_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Blank : Chain_symbol_t.chain_symbol;;

val A : Chain_symbol_t.chain_symbol;;

val B : Chain_symbol_t.chain_symbol;;

val C : Chain_symbol_t.chain_symbol;;

val D : Chain_symbol_t.chain_symbol;;

val E : Chain_symbol_t.chain_symbol;;

val F : Chain_symbol_t.chain_symbol;;

val G : Chain_symbol_t.chain_symbol;;

val H : Chain_symbol_t.chain_symbol;;



(** created by ./generator chain v symbol at 9:28 26 Apr 2011. *)



