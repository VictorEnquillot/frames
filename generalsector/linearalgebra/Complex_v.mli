(* $Id: Exp $ *)

open Complex_t;;

val real_off_complex : complex -> float
;;

val imaginary_off_complex : complex -> float
;;

val float_radius_off_complex : complex -> float
;;

val radius_off_complex : complex -> Radius_p.radius
;;

val float_argument_off_complex : complex -> float
;;

val zenith_off_complex : complex -> Angle_p.zenith
;;

val conjugate : complex -> complex 
;;

val cartesian_off_complex :  complex -> complex
;;

val polar_off_complex : complex -> complex
;;

val addition : complex -> complex -> complex
;;

val multiplication : complex -> complex -> complex
;;

val division : complex -> complex -> complex
;;

val real_power : complex -> float -> complex
;;
