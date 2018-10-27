
val theta_fonction_of_quantum_numbers_lm :
    Quantum_numbers_p.quantum_numbers_lm ->
      Fonction_t.fonction
;;

val phi_fonction_of_quantum_number_m :
    Quantum_numbers_p.quantum_number_m -> 
      Fonction_t.fonction
;;

val real_fonction_of_spherical_harmonics_data :
    Spherical_harmonics_data_t.spherical_harmonics_data ->
      Fonction_t.fonction
;;

val real_data_of_spherical_harmonics_data_of_float_triplet :
    Spherical_harmonics_data_t.spherical_harmonics_data -> 
      Float_triplet_t.float_triplet -> 
	float
;;(* *** TODO *** which one ? *)
	
val value_of_theta_of_phi : Angle_p.azimuth -> Angle_p.zenith -> 
  Complex_t.complex 
;;

