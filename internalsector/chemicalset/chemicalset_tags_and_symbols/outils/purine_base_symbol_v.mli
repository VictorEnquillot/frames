(** {3 A Symbol for a Purine_base.} *)


let name :
  Purine_base_symbol_t.purine_base_symbol ->
    string
;;


val print : Format.Formatter ->
  Purine_base_symbol_t.purine_base_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Adenosine : Purine_base_symbol_t.purine_base_symbol;;

val Guanine : Purine_base_symbol_t.purine_base_symbol;;



(** created by ./generator purine_base v symbol at 9:28 26 Apr 2011. *)



