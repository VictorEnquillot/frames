(** {3 A State for any Entity.} *)

module Cst_t = Chemical_state_t
module Fst_t = Functional_state_t
module Mty_t = Multiplicity_t
module Mbs_t = Molbasis_state_t
module Qst_t = Quantum_state_t
module Par_t = Pair_t

type entity_state = 
  | Bond_state of Mty_t.multiplicity
  | Chemical_state of Cst_t.chemical_state
  | Functional_state of Fst_t.functional_state
  | Mixed of entity_state Par_t.pair 
  | Molbasis_state of Mbs_t.molbasis_state 
  | Quantum_state of Qst_t.quantum_state
;;

(****

***)
