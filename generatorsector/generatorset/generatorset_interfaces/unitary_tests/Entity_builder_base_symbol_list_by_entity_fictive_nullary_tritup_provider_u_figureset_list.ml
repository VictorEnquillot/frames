open Make_test_v;;

testing "Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v 
   Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_list.ml"

(* toplevel 
   #use "Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_list.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_efn_l = Entity_fictive_nullary_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let tri_efn_l = List.map (fun e -> Triplet_v.make e sym_cat sym_dos) sym_efn_l;;

let sym_edb_l = List.map Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn_l;;

test_number 1 (
sym_edb_l
=
  [[]; []; []; [];
   [Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"];
   []; []; []; []; [];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"];
   [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]; 
   []; 
   []; 
   []]
);;

let dou_l = List.map2 Doublet_v.make sym_efn_l sym_edb_l;;

test_number 2 (
dou_l
(* : (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol,
   Entity_symbol_t.entity_symbol list)
   Doublet_t.doublet list *)
=
  [(Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi", []);
   (Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho", []);
   (Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed", []);
   (Entity_fictive_nullary_symbol_t.Bare "fake_son_constructor", []);
   (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor",
    [Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"]);
   (Entity_fictive_nullary_symbol_t.Bare "polar_rho", []);
   (Entity_fictive_nullary_symbol_t.Bare "polar_theta", []);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_phi", []);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_rho", []);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_theta", []);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Bare "vector_constructor",
    [Entity_proper_symbol_t.Entity_proper_with_one_son "point"]);
   (Entity_fictive_nullary_symbol_t.Ofstring "x", []);
   (Entity_fictive_nullary_symbol_t.Ofstring "y", []);
   (Entity_fictive_nullary_symbol_t.Ofstring "z", [])]
);;
