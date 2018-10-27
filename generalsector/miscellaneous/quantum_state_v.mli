(** {3 The Quantum_state State for a Chemical_state entity.} *)

val string_of_quantum_state : Quantum_state_t.quantum_state ->
  string
;;

val print : Format.formatter -> Quantum_state_t.quantum_state ->
  unit
;;

val read : Scanf.Scanning.scanbuf -> Quantum_state_t.quantum_state
;;

val name : Quantum_state_t.quantum_state ->
  string
;;

