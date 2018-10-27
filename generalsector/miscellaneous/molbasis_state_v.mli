(** A State functionalities for a Molbasis_state Hsbf doublet. *)

(** {6 Extracting.} *)

val chemical_state_off_molbasis_state : Molbasis_state_t.molbasis_state ->
  Chemical_state_t.chemical_state
;;

val functional_state_off_molbasis_state : Molbasis_state_t.molbasis_state ->
  Functional_state_t.functional_state
;;

(** {6 Converting.} *)

val print : Format.formatter -> Molbasis_state_t.molbasis_state -> 
  unit
;;

val name : Molbasis_state_t.molbasis_state -> 
  string
;;




