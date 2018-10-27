open Make_test_v;;

testing "Coordinate_v";;

(* toplevel 
   #"tcoordinate_v.ml";; 
 *)

module Crd_t = Coordinate_t 
module Crd_v = Coordinate_v
module P3d_t = Point_3d_t
module P3d_v = Point_3d_v
module V3d_v = Vector_3d_v

let p1 = P3d_v.make "P1" Vector_3d_v.unity_x;;
let p2 = P3d_v.make "P2" Vector_3d_v.unity_y;;
let p3 = P3d_v.make "P3" Vector_3d_v.unity_z;;

let pi = acos (-.1.0);;

let r = 1.0;;
let chi = pi /. 2.0;;
let phi = pi /. 4.0;;
let theta = (2.0 *. pi /. 3.0);;

let x = r *. cos (phi) *. cos (theta) ;;
let y = r *. cos (phi) *. sin (theta) ;; 
let z = r *. sin (phi) ;;

test_number 1 (
Crd_t.Cartesian_2d (Crd_v.make_cartesian_2d  x  y ) =
Crd_t.Cartesian_2d
 {Crd_t.x_2d = x;  Crd_t.y_2d = y}
);;

test_number 2 (
Crd_t.Cartesian_3d (Crd_v.make_cartesian_3d  x  y  z) =
Crd_t.Cartesian_3d {Crd_t.x_3d = x; Crd_t.y_3d = y; Crd_t.z_3d = z;}
);;


test_number 3 (
Crd_t.Polar (Crd_v.make_polar r theta) =
Crd_t.Polar {
  Crd_t.r_pol = r;
  theta_pol = theta;
}
);;

test_number 4 (
Crd_t.Cylindrical (Crd_v.make_cylindrical r theta z) =
Crd_t.Cylindrical {
  Crd_t.r_cyl = r;
  theta_cyl = theta;
  z_cyl = z;
}
);;

test_number 5 (
Crd_t.Spherical (Crd_v.make_spherical  r  phi  theta) =
Crd_t.Spherical {
  Crd_t.r_sph = r;
  theta_sph = theta;
  phi_sph = phi;
}
);;

test_number 6 ( 
Crd_v.make_internal (1.0, p1) (theta, p2) (chi, p3) =
  {Crd_t.bond =
  (1., {P3d_t.name = "P1"; P3d_t.position = (1., 0., 0.)});
     Crd_t.valence =
  (2.09439510239319526,
   {P3d_t.name = "P3"; P3d_t.position = (0., 0., 1.)});
       Crd_t.dihedral =
  (1.57079632679489656,
   {P3d_t.name = "P3"; P3d_t.position = (0., 0., 1.)})}
);;

test_number 7 (
Crd_t.Cartesian_3d (Crd_v.cartesian_3d_of_absolute  
(Crd_t.Spherical (Crd_v.make_spherical  r  phi  theta)) )
 =
Crd_t.Cartesian_3d
 {Crd_t.x_3d = -0.35355339059327362; 
  Crd_t.y_3d = 0.612372435695794581;
  Crd_t.z_3d = 0.707106781186547462}
);;


test_number 8 (
Crd_t.Spherical (
Crd_v.spherical_of_absolute 
  (Crd_t.Cartesian_3d {
   Crd_t.x_3d = x;
   Crd_t.y_3d = y;
   Crd_t.z_3d = z;
 } )
)
  =
Crd_t.Spherical
 {Crd_t.r_sph = 0.999999999999999889; 
  phi_sph = -1.04719755119659785;
  theta_sph = 0.785398163397448279}
);;
