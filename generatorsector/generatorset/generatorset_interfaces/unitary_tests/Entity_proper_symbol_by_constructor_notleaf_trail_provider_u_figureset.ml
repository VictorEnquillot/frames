open Make_test_v;;

testing "Entity_proper_symbol_by_constructor_notleaf_trail_provider_v with
   Entity_proper_symbol_by_constructor_notleaf_trail_provider_u_figure.ml"

(* toplevel 
   #use "Entity_proper_symbol_by_constructor_notleaf_trail_provider_u_figure.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_cle = "point_constructor:ofstring";;

let tra_dos = Trail_v.make "domain" nam_dos [];;

  let nam_con_t = 
    Constructor_basename_tree_by_domain_trail_provider_v.provide 
      tra_dos;;

let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let ban_cnl_l = Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;
let tra_cnl_l = List.map (fun e -> Trail_v.make "entity" e tra_cat) ban_cnl_l;;

let sym_enp_l = List.map Entity_proper_symbol_by_constructor_notleaf_trail_provider_v.provide tra_cnl_l;;

test_number 1 (
sym_enp_l
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
=
  [Entity_proper_symbol_t.Entity_proper_with_sons "figure";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical";
   Entity_proper_symbol_t.Entity_proper_with_one_son "fake";
   Entity_proper_symbol_t.Entity_proper_with_one_son "fake_son";
   Entity_proper_symbol_t.Entity_proper_with_one_son "point";
   Entity_proper_symbol_t.Entity_proper_with_sons "triangle";
   Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles";
   Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene";
   Entity_proper_symbol_t.Entity_proper_with_one_son "vector"]
);;

