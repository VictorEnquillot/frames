(** {3 The Environment_state for chemical.} *)

(** {6 Abbreviations.} *)

val mi : Environment_state_t.environment_state;;
val mb : Environment_state_t.environment_state;;
val v : Environment_state_t.environment_state;;
val w : Environment_state_t.environment_state;;

(** {6 Converting.} *)

val string_of_environment_state : Environment_state_t.environment_state ->
  string
;;

val print :Format.formatter -> Environment_state_t.environment_state -> unit
;;

val read : Scanf.Scanning.scanbuf -> Environment_state_t.environment_state
;;

val name : Environment_state_t.environment_state ->
  string
;;
