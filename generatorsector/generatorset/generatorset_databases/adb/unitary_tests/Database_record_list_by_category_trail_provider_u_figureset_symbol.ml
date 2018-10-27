open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_figureset_symbol.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "figure")];;

let dbr_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
dbr_l
(* : string list *)
=
  [
   "constructors figure                     =   coordinate   point   triangle   vector   fake";
   "constructors triangle                   =   triangle_isoceles   triangle_scalene";
   "constructors triangle_isoceles          =   triangle_isoceles_equilateral:ofstring   triangle_isoceles_right:ofstring   triangle_isoceles_acute:ofstring   triangle_isoceles_obtuse:ofstring";
   "constructors triangle_scalene           =   triangle_scalene_right:ofstring   triangle_scalene_acute:ofstring   triangle_scalene_obtuse:ofstring";
   "constructors fake                       =   fake_son ";
   "constructors fake_son                   =   fake_son_constructor";
   "constructors vector                     =   vector_constructor:ofstring";
   "constructors point                      =   point_constructor:ofstring";
   "constructors coordinate                 =   coordinate_cartesian   coordinate_cylindrical   coordinate_polar   coordinate_spherical ";
   "constructors coordinate_cartesian       =   x:ofstring   y:ofstring   z:ofstring ";
   "constructors coordinate_cylindrical     =   cylindrical_rho   cylindrical_phi   cylindrical_zed";
   "constructors coordinate_spherical       =   spherical_rho   spherical_phi   spherical_theta   ";
   "constructors coordinate_polar           =   polar_rho   polar_theta   ";
   "description spherical_rho      = distance to origin";
   "description spherical_phi      = angular coordinate in xy plane";
   "description spherical_psi      = angular coordinate to z axis";
   "description cylindrical_rho    = distance to z axis";
   "description cylindrical_phi    = angular coordinate in xy plane";
   "description cylindrical_zed    = projection on z axis"]
);;

