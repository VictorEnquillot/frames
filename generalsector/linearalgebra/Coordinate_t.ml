(** {3 The Coordinate Types.} *)

(**
 (Wikipedia: List of canonical coordinate transformations)
 (Wikipedia: Internal Coordinate Mechanics)
  http://www.ingentaconnect.com/content/tandf/tmph/2004/00000101/F0020023/art00013
*)

type coordinate = float;;

type absolute =
  | Cartesian_2d of cartesian_2d
  | Cartesian_3d of cartesian_3d
  | Cylindrical of cylindrical
  | Polar of polar
  | Spherical of spherical
      
and cartesian_2d = {
    x_2d : coordinate;
    y_2d : coordinate;
  }
and cartesian_3d = {
    x_3d : coordinate;
    y_3d : coordinate;
    z_3d : coordinate;
}
and cylindrical = {
    r_cyl : coordinate;
    theta_cyl : coordinate;
    z_cyl : coordinate;
}
and polar = {
    r_pol : coordinate;
    theta_pol : coordinate;
  }
and spherical = {
    r_sph : coordinate;
    phi_sph : coordinate;
    theta_sph : coordinate;
  }
;;

type 'a internal = {
    bond : coordinate * 'a;
    valence : coordinate * 'a;
    dihedral : coordinate * 'a;
  }

(**                 
  Internal coordinates are three couples of some value and some point used to 
  define the position of a fourth point p0 relatively to the position of the
  three others p1, p2, p3.
  
  p_3------p_2      p_0 is defined by :
             \          its bond length with (p_1, length)        
              \         its valence angle with (p_2, angle)
               \        its dihedral angle (p_3, angle)     
                \     
                 \
                 p_1--------p_0

  p_0 is the apex
  p_1, p_2 the anchors
  p_2 the end  (ref: Wilson, Decius and Cross p.59)
*)
  
