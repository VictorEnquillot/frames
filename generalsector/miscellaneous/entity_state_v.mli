(** {3 The State functionalities for any Entity.} *)

(** {6 Extracting.} *)

val chemical_state_off_entity_state :  
    Entity_state_t.entity_state ->
      Chemical_state_t.chemical_state
;;

val protonation_state_off_entity_state :
    Entity_state_t.entity_state ->
      Protonation_state_t.protonation_state
;;

val environment_state_off_entity_state :
    Entity_state_t.entity_state ->
      Environment_state_t.environment_state
;;

val functional_state_off_entity_state :  
    Entity_state_t.entity_state ->
      Functional_state_t.functional_state
;;

val multiplicity_off_entity_state :
    Entity_state_t.entity_state ->
      Multiplicity_t.multiplicity
;;

val quantum_state_off_entity_state :  
    Entity_state_t.entity_state ->
      Quantum_state_t.quantum_state
;;

(** {6 Converting.} *)

val print : Format.formatter -> 
  Entity_state_t.entity_state -> 
    unit
;;

val name : Entity_state_t.entity_state -> 
    string
;;

