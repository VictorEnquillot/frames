open Make_test_v;;

testing "Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_u_generatorset_item_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_u_generatorset_item_symbol.ml";;

*)

let nam_dos = "generatorset_item";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
=
  [("generatorset_item", "constructors");
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

