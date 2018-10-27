(** {3 A Molbasis_state State doublet.} *)

module Fst_t = Functional_state_t
module Cst_t = Chemical_state_t
module Dbt_t = Doublet_t

type molbasis_state = (Cst_t.chemical_state, Fst_t.functional_state) Dbt_t.doublet

;;
(** It couples a Molecule chemical_state
    with a Hsbf functional state. *)

