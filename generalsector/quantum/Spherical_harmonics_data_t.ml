(** {3 Spherical Harmonics as Data.} *)

module Quantum_numbers_p = Quantum_numbers_p

type spherical_harmonics_data = 
  | Cartesian of Index_p.index * Index_p.index * Index_p.index
  | Spherical of Quantum_numbers_p.quantum_numbers_ln
;;

