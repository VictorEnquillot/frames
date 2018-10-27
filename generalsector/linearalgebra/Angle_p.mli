(* $Id: Exp $ *)

(* http://en.wikipedia.org/wiki/Coordinates_(mathematics)#Spherical_coordinates *)
(*
type angle = 
  | Zenith of float  (* [0, pi]   *)
  | Azimuth of float (* [0, 2 pi] *)
;;

and zenith = Zenith of float
and azimuth = Azimuth of float

*)

type zenith = Zenith of float
;;
(** Zenith : The angular value is always defined in radian 
    and between zero and two pi *)


type azimuth = Azimuth of float
;;
(** Azimuth : The angular value is always defined in radian 
              and between zero and pi *)
val make_zenith : float -> zenith 
;;

val make_azimuth : float -> azimuth
;;

val between_zero_and_twopi_of_float : float -> float
;;

val float_off_zenith : zenith -> float
;;

val float_off_azimuth : azimuth -> float
;;

val scaled_of_float_of_zenith : float -> zenith -> zenith
;;

val scaled_of_float_of_azimuth : float -> azimuth -> azimuth
;;

