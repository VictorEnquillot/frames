(** {3 Spherical Harmonics as Data functionnalities.} *)

(** {6 Making.} *)

val make :
    Quantum_numbers_p.quantum_numbers_ln ->
      Spherical_harmonics_data_t.spherical_harmonics_data
;;

val make_of_int_of_int : int -> int ->
    Spherical_harmonics_data_t.spherical_harmonics_data
;;

val make_cartesian : Index_p.index -> Index_p.index -> Index_p.index -> 
    Spherical_harmonics_data_t.spherical_harmonics_data
;;

val make_of_quantum_numbers :
    Quantum_numbers_p.quantum_numbers ->
      Spherical_harmonics_data_t.spherical_harmonics_data
;;

val spherical_harmonics_data_array_of_quantum_number_l :
    Quantum_numbers_p.quantum_number_l ->
      Spherical_harmonics_data_t.spherical_harmonics_data array
;;

(** {6 Extracting.} *)

val make_lm_off_spherical_harmonics_data :
  Spherical_harmonics_data_t.spherical_harmonics_data ->
    Quantum_numbers_p.quantum_number_l * 
      Quantum_numbers_p.quantum_number_m
;;

val quantum_number_l_of_spherical_harmonics_data :
  Spherical_harmonics_data_t.spherical_harmonics_data ->
    Quantum_numbers_p.quantum_number_l 
;;

val quantum_number_m_of_spherical_harmonics_data :
  Spherical_harmonics_data_t.spherical_harmonics_data ->
    Quantum_numbers_p.quantum_number_m 
;;

val spherical_harmonics_coefficients_of_make_lm :
    Quantum_numbers_p.quantum_numbers_ln ->
  float
;;

val print : Format.formatter -> 
  Spherical_harmonics_data_t.spherical_harmonics_data ->
    unit
;;

val name : Spherical_harmonics_data_t.spherical_harmonics_data ->
  string
;;
