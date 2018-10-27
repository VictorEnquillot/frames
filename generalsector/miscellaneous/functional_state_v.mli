(** {3 The State functionalities for a Peptidechain.} *)

(** {6 Converting.} *)

val print : Format.formatter -> 
  Functional_state_t.functional_state -> 
    unit
;;

val name : Functional_state_t.functional_state -> 
  string
;;

