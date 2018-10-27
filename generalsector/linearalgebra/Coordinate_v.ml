(** {3 The Coordinate Types functionalities.} *)

let nam_mod = "Coordinate_v";;



let make_cartesian_2d x y = {
 Coordinate_t.x_2d = x;
 Coordinate_t.y_2d = y;
}
;;

let make_polar r theta = {
 Coordinate_t.r_pol = r;
 Coordinate_t.theta_pol = theta;
}
;;

let make_cartesian_3d x y z = {
 Coordinate_t.x_3d = x;
 Coordinate_t.y_3d = y;
 Coordinate_t.z_3d = z;
}
;;
 
let make_cylindrical r theta z = {
 Coordinate_t.r_cyl = r;
 Coordinate_t.theta_cyl = theta; 
 Coordinate_t.z_cyl = z;
}
;;

let make_spherical r phi theta = {
 Coordinate_t.r_sph = r;
 Coordinate_t.phi_sph = phi;
 Coordinate_t.theta_sph = theta;
}
;;

let make_internal (bnd, p1) (vln, p2) (dhd, p2) = {
 Coordinate_t.bond = (bnd, p1);
 Coordinate_t.valence = (vln, p2);
 Coordinate_t.dihedral = (dhd, p2);
}
;;
 
let cartesian_3d_of_internal ics = 
  Utilities_v.not_yet_implemented nam_mod "cartesian_3d_of_internal"
;;
 
 let internal_of_cartesian_3d ccs = 
   Utilities_v.not_yet_implemented nam_mod "internal_of_cartesian_3d"
;;
 
let cartesian_3d_of_absolute = function
 | Coordinate_t.Cartesian_2d (cas) -> 
     failwith ("Coordinates.cartesian_3d: cannot provide")
 | Coordinate_t.Polar (cas) -> 
     failwith ("Coordinates.cartesian_3d: cannot provide")

 | Coordinate_t.Cartesian_3d (ccs) -> ccs

 | Coordinate_t.Cylindrical (ccs) ->
     let r = ccs.Coordinate_t.r_cyl 
     and theta = ccs.Coordinate_t.theta_cyl 
     and z = ccs.Coordinate_t.z_cyl
     in 
     let x = r *. cos ( theta ) in
     let y = r *. sin ( z ) in
     let z = z in

     make_cartesian_3d x y z 
       
 | Coordinate_t.Spherical (ccs) ->
   let r = ccs.Coordinate_t.r_sph 
   and phi = ccs.Coordinate_t.phi_sph 
   and theta = ccs.Coordinate_t.theta_sph
   in  
   let x = r *. cos (phi) *. cos (theta) in
   let y = r *. cos (phi) *. sin (theta) in 
   let z = r *. sin (phi) in
     make_cartesian_3d x y z 
;;

let spherical_of_absolute = function
 | Coordinate_t.Cartesian_2d (ccs) -> failwith ("Coordinates.spherical_3d: cannot provide")
 | Coordinate_t.Polar (ccs) -> failwith ("Coordinates.spherical_3d: cannot provide")
    
 | Coordinate_t.Spherical (css) -> css
	
 | Coordinate_t.Cartesian_3d (ccs) ->
   let x = ccs.Coordinate_t.x_3d 
   and y = ccs.Coordinate_t.y_3d
   and z = ccs.Coordinate_t.z_3d
   in 
   let  r = sqrt (x*.x +. y*.y +. z*.z) in
   let phi = atan (y /. x ) in
   let theta = acos (z /. (sqrt (x*.x +. y*.y +. z*.z)) ) in 

   make_spherical r phi theta 
     
 | Coordinate_t.Cylindrical (ccs) ->
   let r = ccs.Coordinate_t.r_cyl in
   let z = ccs.Coordinate_t.z_cyl in
   let phi = ccs.Coordinate_t.theta_cyl in 
   let theta = acos (z /. r) in

   make_spherical r phi theta 
;;

let print_coordinate ppf crd =
 Format.fprintf ppf "%f" crd
;;
 
let print_absolute ppf = function
 | Coordinate_t.Cartesian_2d (ccs) ->
    let x = ccs.Coordinate_t.x_2d 
    and y = ccs.Coordinate_t.y_2d in
	 Format.fprintf ppf "@[<h>x = %a y = %a@]" 
	  print_coordinate x
	  print_coordinate y
 
 | Coordinate_t.Polar (ccs) -> 
    let r = ccs.Coordinate_t.r_pol 
    and theta = ccs.Coordinate_t.theta_pol in  
	 Format.fprintf ppf "@[<h>r = %a theta = %a@]" 
	  print_coordinate r
	  print_coordinate theta

 | Coordinate_t.Cartesian_3d (ccs) ->
    let x = ccs.Coordinate_t.x_3d 
    and y = ccs.Coordinate_t.y_3d 
    and z = ccs.Coordinate_t.z_3d in 
	 Format.fprintf ppf "@[<h>x = %a y = %a z = %a@]" 
	  print_coordinate x
	  print_coordinate y
	  print_coordinate z

 | Coordinate_t.Cylindrical (ccs) ->
    let r = ccs.Coordinate_t.r_cyl
    and theta = ccs.Coordinate_t.theta_cyl 
    and z = ccs.Coordinate_t.z_cyl in 
	 Format.fprintf ppf "@[<h>r = %a theta = %a z = %a@]" 
	  print_coordinate r
	  print_coordinate theta
	  print_coordinate z
     
 | Coordinate_t.Spherical (ccs) ->
    let r = ccs.Coordinate_t.r_sph 
    and phi = ccs.Coordinate_t.phi_sph 
    and theta = ccs.Coordinate_t.theta_sph in  
	 Format.fprintf ppf "@[<h>r = %a phi = %a theta = %a@]" 
	  print_coordinate r
	  print_coordinate phi
	  print_coordinate theta
;;

let print_internal ppf ics =
 let (b, _) = ics.Coordinate_t.bond in
 let (v, _) = ics.Coordinate_t.valence in 
 let (d, _) = ics.Coordinate_t.dihedral in 
 Format.fprintf ppf "@[<h>bond length = %a valence angle = %a dihedral = %a@]" 
 print_coordinate b
 print_coordinate v
 print_coordinate d
;;

let read_absolute ib =
  Utilities_v.not_yet_implemented nam_mod "read_absolute"
;;

let read_internal ib =
  Utilities_v.not_yet_implemented nam_mod "read_internal"
;;
