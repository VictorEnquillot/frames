(** {3 A Tag for Ml_symmetry_cartesian.} *)

module Mcs_t = Ml_symmetry_cartesian_symbol_t
module McS_t = Ml_symmetry_cartesian_state_t
module Mci_t = Ml_symmetry_cartesian_index_t

type ml_symmetry_cartesian_tag = (Mcs_t.ml_symmetry_cartesian_symbol, McS_t.ml_symmetry_cartesian_state, Mci_t.ml_symmetry_cartesian_index) Tag_t.tag
;;
