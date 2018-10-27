(* $Id: Exp $ *)

let real_off_complex = function
  | Complex_t.Cartesian (re, im) -> re
  | Complex_t.Polar (rds, zen) -> 
      let r = Radius_p.float_off_radius rds in
      let phi = Angle_p.float_off_zenith zen in
      r *. cos (phi)
;;

let imaginary_off_complex = function
  | Complex_t.Cartesian (re, im) -> im
  | Complex_t.Polar (rds, zen) -> 
      let r = Radius_p.float_off_radius rds in
      let phi = Angle_p.float_off_zenith zen in
	  r *. sin (phi)
;;

let float_radius_off_complex = function 
  | Complex_t.Cartesian (re, im) -> 
      sqrt ((re *. re) +. (im *. im))
  | Complex_t.Polar (rds, _) -> 
      Radius_p.float_off_radius rds
;;

let radius_off_complex c =
  let r = float_radius_off_complex c in
  Radius_p.make r
;;

let float_argument_off_complex = function 
  | Complex_t.Cartesian (re, im) -> 
      if im = 0.
      then failwith "Zero_imaginary:argument_off_complex"
      else atan2 re im
  | Complex_t.Polar (_, zen) -> 
      Angle_p.float_off_zenith zen
;;

let zenith_off_complex c =
  let phi = float_argument_off_complex c in
  Angle_p.make_zenith phi
;;

let conjugate = function 
  | Complex_t.Cartesian (re, im) -> 
      Complex_t.Cartesian (re, -. im)
  | Complex_t.Polar (r, phi) -> 
      let phm = Angle_p.scaled_of_float_of_zenith (-1.) phi in
      Complex_t.Polar (r, phm)
;;

let cartesian_off_complex = function 
  | Complex_t.Cartesian (re, im) as c -> c 
  | Complex_t.Polar (rds, zen) -> 
      let r = Radius_p.float_off_radius rds in
      let phi = Angle_p.float_off_zenith zen in
      let re = r *. cos (phi) in
      let im = r *. sin (phi) in
      Complex_t.Cartesian (re, im)
;;

let polar_off_complex = function 
  | Complex_t.Cartesian (re, im) as c ->
      let zen = zenith_off_complex c in
      let rds = radius_off_complex c in
      Complex_t.Polar (rds, zen)
  | Complex_t.Polar (r, phi) as c -> c 
;;

let addition c1 c2 =
  let re1 = real_off_complex c1 in
  let im1 = imaginary_off_complex c1 in
  let re2 = real_off_complex c2 in
  let im2 = imaginary_off_complex c2 in

  Complex_t.Cartesian (re1 +. re2, im1 +. im2)
;;

let multiplication c1 c2 =
  let r1 = float_radius_off_complex c1 in
  let phi1 = float_argument_off_complex c1 in
  let r2 = float_radius_off_complex c2 in
  let phi2 = float_argument_off_complex c2 in
  let rds = Radius_p.make (r1 *. r2) in
  let zen = Angle_p.make_zenith (phi1 +. phi2) in 
  Complex_t.Polar (rds, zen)
;;

let division  c1 c2 =
  let r1 = float_radius_off_complex c1 in
  let phi1 = float_argument_off_complex c1 in
  let r2 = float_radius_off_complex c2 in
  let phi2 = float_argument_off_complex c2 in
  let rds = 
    if r2 = 0.
    then failwith ("Division_by_zero:division")  
    else Radius_p.make (r1 /. r2) 
  in
  let zen = Angle_p.make_zenith (phi1 -. phi2) in 
  Complex_t.Polar (rds, zen)
;;

let real_power c f =
  let r = float_radius_off_complex c in
  let phi = float_argument_off_complex c in
  let rds = Radius_p.make (r**f) in
  let zen = Angle_p.make_zenith (f *. phi) in
  Complex_t.Polar (rds, zen)
;;

