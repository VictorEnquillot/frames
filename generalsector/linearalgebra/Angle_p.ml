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

let between_zero_and_twopi_of_float f =
  let ang = mod_float f Constants_v.two_pi in
  if ang < 0. 
  then ang +. Constants_v.two_pi
  else ang
;;

let make_zenith f =
  let ang = between_zero_and_twopi_of_float f in
  Zenith ang
;;

let make_azimuth f =
  let ang = between_zero_and_twopi_of_float f in
  if ang <= Constants_v.pi
  then Azimuth ang
  else failwith ("Not_azimuth:make_azimuth")
;;

let float_off_zenith = function
  | Zenith ang -> ang
;;

let float_off_azimuth = function
  | Azimuth ang -> ang
;;

let scaled_of_float_of_zenith f zen =
  let ang = float_off_zenith zen in
  Zenith (f *. ang)
;;

let scaled_of_float_of_azimuth f azi =
  let ang = float_off_azimuth azi in
  Azimuth (f *. ang)
;;
