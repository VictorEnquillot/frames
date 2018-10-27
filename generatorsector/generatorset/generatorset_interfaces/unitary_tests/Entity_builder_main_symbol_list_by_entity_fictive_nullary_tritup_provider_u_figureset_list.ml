open Make_test_v;;

testing "Entity_builder_main_symbol_list_by_entity_fictive_nullary_tritup_provider_v 
   Entity_builder_main_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_list.ml"

(* toplevel 
   #use "Entity_builder_main_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_list.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_efn_l = Entity_fictive_nullary_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let tri_efn_l = List.map (fun e -> Triplet_v.make e sym_cat sym_dos) sym_efn_l;;

let sym_eda_l = List.map Entity_builder_main_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn_l;;
let dou_l = List.map2 Doublet_v.make sym_efn_l sym_eda_l;;

test_number 1 (
dou_l
(* : (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol,
   Entity_symbol_t.entity_symbol list)
   Doublet_t.doublet list *)
=
 [(Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);

   (Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Bare "fake_son_constructor",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.String ""))]);
   (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")]);
   (Entity_fictive_nullary_symbol_t.Bare "polar_rho",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Bare "polar_theta",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_phi",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_rho",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_theta",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);

   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_fictive_nullary_symbol_t.Bare "vector_constructor",
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_fictive_nullary_symbol_t.Ofstring "x",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);
   (Entity_fictive_nullary_symbol_t.Ofstring "y",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))]);

   (Entity_fictive_nullary_symbol_t.Ofstring "z",
    [Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))])]
);;
