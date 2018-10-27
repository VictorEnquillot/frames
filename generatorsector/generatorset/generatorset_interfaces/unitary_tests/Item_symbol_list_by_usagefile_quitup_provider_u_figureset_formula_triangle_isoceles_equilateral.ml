open Make_test_v;;

testing "Item_symbol_list_by_usagefile_quitup_provider_v with
   Item_symbol_list_by_usagefile_quitup_provider_u_figure_formula_triangle_isoceles_equilateral.ml";;

(* toplevel 
   #use "Item_symbol_list_by_usagefile_quitup_provider_u_figure_formula_triangle_isoceles_equilateral.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_efn = "triangle_isoceles_equilateral"
let nam_cof = "value_alone";;
let nam_usf = "implementation";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_efn_l = Entity_fictive_nullary_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

test_number 1 (
 sym_efn_l 
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
=
  [Entity_fictive_nullary_symbol_t.Nonsonnullary "coordinate_1d";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_phi";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_rho";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_zed";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "point_1d";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "point";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_rho";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_theta";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_phi";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_rho";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_theta";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_acute";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_equilateral";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_obtuse";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_right";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_acute";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_obtuse";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_right";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "vector_1d";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "vector";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "vector";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "x";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "x_3d";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "y_3d";
   Entity_fictive_nullary_symbol_t.Nonsonnullary "z_3d"]
);;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

test_number 2 (
tag_cat
(* : Category_symbol_t.category_symbol Tag_t.tag *)
=
  (Category_symbol_t.Formula, [2; 4])
);;

let sym_efn = List.find (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn) sym_efn_l;;
let gss_ent = Generatorset_symbol_v.generatorset_symbol_of_entity_fictive_nullary_symbol sym_efn;;
Generatorset_symbol_by_sole_index_provider_v.store soi_efn gss_ent;;
let tag_efn = Tag_v.make sym_efn soi_efn;;

test_number 3 (
tag_efn
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol Tag_t.tag *)
=
  (Entity_fictive_nullary_symbol_t.Nonsonnullary
    "triangle_isoceles_equilateral",
   [14; 2; 4])
);;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

test_number 4 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag *)
=
 (Contentfile_symbol_t.Value_alone, [3; 14; 2; 4])
);;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

test_number 5 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag *)
=
(Usagefile_symbol_t.Implementation, [1; 3; 14; 2; 4])
);;

let ite_l = Item_symbol_list_by_usagefile_quitup_provider_v.provide tag_usf;;

test_number 6 (
ite_l
(* : Item_symbol_list_by_usagefile_quitup_provider_v.Item_symbol_t.item_symbol list *)
=
  [Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading;
   Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting;
   Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming;
   Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Iterating;
   Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making;
   Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending]
);;
