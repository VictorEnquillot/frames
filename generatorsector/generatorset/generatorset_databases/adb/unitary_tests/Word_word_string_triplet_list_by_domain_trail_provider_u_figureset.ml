open Make_test_v;;

testing "Word_word_string_triplet_list_by_domain_trail_provider_v with
   Word_word_string_triplet_list_by_domain_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_domain_trail_provider_u_figureset.ml";; 

*)

let tra_dos = [("domain", "figure")];;
let wws_trl = Word_word_string_triplet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
   [("constructors", "figure", "coordinate point triangle vector fake");
   ("constructors", "triangle", "triangle_isoceles triangle_scalene");
   ("constructors", "triangle_isoceles",
    "triangle_isoceles_equilateral:ofstring triangle_isoceles_right:ofstring triangle_isoceles_acute:ofstring triangle_isoceles_obtuse:ofstring");
   ("constructors", "triangle_scalene",
    "triangle_scalene_right:ofstring triangle_scalene_acute:ofstring triangle_scalene_obtuse:ofstring");
   ("constructors", "fake", "fake_son");
   ("constructors", "fake_son", "fake_son_constructor");
   ("constructors", "vector", "vector_constructor:ofstring");
   ("constructors", "point", "point_constructor:ofstring");
   ("constructors", "coordinate",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("constructors", "coordinate_cartesian",
    "x:ofstring y:ofstring z:ofstring");
   ("constructors", "coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("constructors", "coordinate_spherical",
    "spherical_rho spherical_phi spherical_theta");
   ("constructors", "coordinate_polar", "polar_rho polar_theta");
   ("description", "spherical_rho", "distance to origin");
   ("description", "spherical_phi", "angular coordinate in xy plane");
   ("description", "spherical_psi", "angular coordinate to z axis");
   ("description", "cylindrical_rho", "distance to z axis");
   ("description", "cylindrical_phi", "angular coordinate in xy plane");
   ("description", "cylindrical_zed", "projection on z axis");
   ("builders", "fake_son_constructor", "list string");
   ("builders", "point_constructor:ofstring", "trio coordinate");
   ("builders", "triangle_isoceles_acute:ofstring", "doublet point vector");
   ("builders", "triangle_isoceles_equilateral:ofstring",
    "doublet point vector");
   ("builders", "triangle_isoceles_obtuse:ofstring", "doublet point vector");
   ("builders", "triangle_isoceles_right:ofstring", "doublet point vector");
   ("builders", "triangle_scalene_acute:ofstring", "doublet point vector");
   ("builders", "triangle_scalene_obtuse:ofstring", "doublet point vector");
   ("builders", "triangle_scalene_right:ofstring", "doublet point vector");
   ("builders", "vector_constructor:ofstring", "duo point");
   ("builders", "cylindrical_phi", "doublet float string");
   ("builders", "cylindrical_rho", "doublet float string");
   ("builders", "cylindrical_zed", "doublet float string");
   ("builders", "polar_rho", "doublet float string");
   ("builders", "polar_theta", "doublet float string");
   ("builders", "spherical_phi", "doublet float string");
   ("builders", "spherical_rho", "doublet float string");
   ("builders", "spherical_theta", "doublet float string");
   ("builders", "x:ofstring", "doublet float string");
   ("builders", "y:ofstring", "doublet float string");
   ("builders", "z:ofstring", "doublet float string")]
);;

