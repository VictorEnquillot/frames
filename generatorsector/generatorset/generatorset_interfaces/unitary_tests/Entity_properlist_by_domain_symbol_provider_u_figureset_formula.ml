open Make_test_v;;

testing "Entity_proper_symbol_list_by_domain_symbol_provider_v with
   Entity_proper_symbol_list_by_domain_symbol_provider_u_figure_formula.ml";;

(* toplevel 
   #use "Entity_proper_symbol_list_by_domain_symbol_provider_u_figure_formula.ml";; 

*)

let nam_dos = "figure";;
let nam_enp = "figure";;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat_sym = Tag_v.make sym_cat soi_cat;;

let sym_enp_l_sym = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide tag_cat_sym;;

test_number 1 (
sym_enp_l_sym
(* : Entity_propert.entity_proper_symbol list *)
=
  [Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_scalene");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "vector");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "point");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate_3d");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
      "coordinate_cartesian_3d");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
      "coordinate_cylindrical");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_spherical");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate_2d");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
      "coordinate_cartesian_2d");
   Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_polar")]
);;

(* Category Formula *)

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat_for = Tag_v.make sym_cat soi_cat;;

let sym_enp_l_for = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide tag_cat_for;;

test_number 2 (
sym_enp_l_for = sym_enp_l_sym
);;
