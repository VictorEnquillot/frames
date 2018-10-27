(** {3 The functionalities for a Symbol for a Chain.} *)

val make :
    string ->
      Chain_symbol_t.chain_symbol
;;

val of_char :
    char ->
      Chain_symbol_t.chain_symbol
;;

val name :
    Chain_symbol_t.chain_symbol ->
      string 
;;

val char_off :
    Chain_symbol_t.chain_symbol ->
      char
;;
(** {6 Abbreviating} *)


val blank : Chain_symbol_t.chain_symbol;;
val a : Chain_symbol_t.chain_symbol;;
val b : Chain_symbol_t.chain_symbol;;
val c : Chain_symbol_t.chain_symbol;;
val d : Chain_symbol_t.chain_symbol;;
val e : Chain_symbol_t.chain_symbol;;
val f : Chain_symbol_t.chain_symbol;;
val g : Chain_symbol_t.chain_symbol;;
val h : Chain_symbol_t.chain_symbol;;
