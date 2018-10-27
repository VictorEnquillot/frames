(** {3 The Coordinate Types functionalities.} *)

val make_cartesian_2d : Coordinate_t.coordinate -> Coordinate_t.coordinate ->
  Coordinate_t.cartesian_2d
;;

val make_polar : Coordinate_t.coordinate -> Coordinate_t.coordinate -> 
Coordinate_t.polar
;;

val make_cartesian_3d : Coordinate_t.coordinate -> Coordinate_t.coordinate -> 
  Coordinate_t.coordinate -> Coordinate_t.cartesian_3d
;;

val make_cylindrical : Coordinate_t.coordinate -> Coordinate_t.coordinate -> 
  Coordinate_t.coordinate -> Coordinate_t.cylindrical
;;

val make_spherical : Coordinate_t.coordinate -> Coordinate_t.coordinate -> 
  Coordinate_t.coordinate -> Coordinate_t.spherical
;;
(** let s = make_spherical r theta phi
;;*)

val make_internal : 
  Coordinate_t.coordinate * 'a -> 
    Coordinate_t.coordinate * 'a -> 
    Coordinate_t.coordinate * 'a -> 
      'a Coordinate_t.internal
;;
(** let i = make_internal (b, p1) (v, p2) (d, p3);;
    the internal coordinate [i] of p0 is obtained from:
    - [b] the distance p0-P1
    - [v] the angle p0-p1-p2
    - [d] the dihedral angle (around p1-p2) between planes p0-p1-p2 and p1-p2-p3. *) 

val cartesian_3d_of_internal : 'a Coordinate_t.internal -> Coordinate_t.cartesian_3d
;;

val internal_of_cartesian_3d : Coordinate_t.cartesian_3d -> 
  'a Coordinate_t.internal 
;;

val cartesian_3d_of_absolute : Coordinate_t.absolute -> Coordinate_t.cartesian_3d 
;;

val spherical_of_absolute : Coordinate_t.absolute -> Coordinate_t.spherical
;;

val print_absolute : Format.formatter -> Coordinate_t.absolute -> unit
;; 

val print_internal : Format.formatter -> 'a Coordinate_t.internal -> unit
;; 

val read_absolute : Scanf.Scanning.scanbuf -> Coordinate_t.absolute 
;;

val read_internal : Scanf.Scanning.scanbuf -> 'a Coordinate_t.internal
;;
