(** {3 Spherical, Polar, Cylindrical Coordinates to Cartesian} *)

let coordinate_cartesian_trio_off_coordinate_spherical_trio (rho, phi, theta) =
  let x = rho *. (sin theta) *. (cos phi) in
  let y = rho *. (sin theta) *. (sin phi) in
  let z = rho *. (cos theta) in
  (x, y, z)
;;

let coordinate_cartesian_trio_off_coordinate_cylindrical_trio (rho, phi, zed) =
  let x = rho *. (cos phi) in
  let y = rho *. (sin phi) in
  let z = zed in
  (x, y, z)
;;

let coordinate_cartesian_duo_off_coordinate_polar_duo (rho, theta) =
  let x = rho *. (cos theta) in
  let y = rho *. (sin theta) in
  (x, y)
;;
