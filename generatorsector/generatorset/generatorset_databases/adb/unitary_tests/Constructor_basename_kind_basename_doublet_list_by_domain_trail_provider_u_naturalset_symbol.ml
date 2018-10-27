open Make_test_v;;

testing "Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v with
   Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_u_naturalset_symbol.ml"


(* toplevel 
   #use "Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_u_naturalset_symbol.ml";;

*)

let nam_dos = "natural";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tri_ckr_l = Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
tri_ckr_l
(* : (string, string) Doublet_t.doublet list *)
=
  [("natural", "constructors");
   ("triangle", "constructors");
   ("triangle_isoceles", "constructors");
   ("triangle_scalene", "constructors");
   ("fake", "constructors");
   ("fake_son", "constructors");
   ("vector", "constructors");
   ("point", "constructors");
   ("coordinate", "constructors");
   ("coordinate_cartesian", "constructors");
   ("coordinate_cylindrical", "constructors");
   ("coordinate_spherical", "constructors");
   ("coordinate_polar", "constructors")]
);;

