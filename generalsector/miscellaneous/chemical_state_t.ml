(** {3 A Chemical_state State for any Chemical_state entity.} *)

type chemical_state = 
  | Protonation_state of Protonation_state_t.protonation_state
  | Environment_state of Environment_state_t.environment_state
;;

(**
A Chemical_state must define 
- the Spin state of the Atom, Block, Fragment, Grouping, Molecule
- the Energy state : ground_state, lowest, excited (first, second ...)
- the Charge

these types are 'a option types ?
**)
