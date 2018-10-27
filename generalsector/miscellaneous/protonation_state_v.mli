(** {3 The Protonation_state State functionalities for polar chemical groups and Sidechains.} *)

(** {6 Abbreviations.} *)

val a : Protonation_state_t.protonation_state;;
val h : Protonation_state_t.protonation_state;;
val m : Protonation_state_t.protonation_state;;
val n : Protonation_state_t.protonation_state;;
val p : Protonation_state_t.protonation_state;;
val z : Protonation_state_t.protonation_state;;

val od : Protonation_state_t.protonation_state;;
val odh : Protonation_state_t.protonation_state;;
val oe : Protonation_state_t.protonation_state;;
val oeh : Protonation_state_t.protonation_state;;
val nde : Protonation_state_t.protonation_state;;
val ndeh : Protonation_state_t.protonation_state;;
val ndh : Protonation_state_t.protonation_state;;
val ne : Protonation_state_t.protonation_state;;
val neh : Protonation_state_t.protonation_state;;
val nz : Protonation_state_t.protonation_state;;
val nzh : Protonation_state_t.protonation_state;;

val string_of_protonation_state : Protonation_state_t.protonation_state ->
  string
;;

val print :Format.formatter -> Protonation_state_t.protonation_state -> unit
;;

val name : Protonation_state_t.protonation_state ->
  string
;;

val read : Scanf.Scanning.scanbuf -> Protonation_state_t.protonation_state
;;

val fail_protonation_state : Protonation_state_t.protonation_state ->
  string -> string -> 
    'a
;;
