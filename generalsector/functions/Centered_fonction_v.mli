(** {3 A Center Function (Fonction).} *)

val make : Radial_fonction_t.radial_fonction ->
  Spherical_harmonics_data_t.spherical_harmonics_data ->
    Centered_fonction_t.centered_fonction 
;;

val radial_part_off_centered_function :
    Centered_fonction_t.centered_fonction ->
      Radial_fonction_t.radial_fonction 
;;

val spherical_part_off_centered_function :
    Centered_fonction_t.centered_fonction ->
      Spherical_harmonics_data_t.spherical_harmonics_data
;;

val print : Format.formatter -> Centered_fonction_t.centered_fonction ->
  unit
;;
