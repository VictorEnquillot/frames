open Make_test_v;;

testing "Entity_basename_constructor_tree_by_kind_trail_provider_v with
   Entity_basename_constructor_tree_by_kind_trail_provider_u_figure_symbol.ml";;

(* toplevel 
   #use "Entity_basename_constructor_tree_by_kind_trail_provider_u_figure_symbol.ml";; 
*)

let sym_dos = Domain_symbol_v.make "figure";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_ent_t = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;

let nam_ent_top = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_nod_l = Tree_v.node_list_off_tree nam_ent_t;;
let nam_ent_top_son_l = Tree_v.topson_node_list_off_tree nam_ent_t;;
let nam_ent_nol_son_l = Tree_v.noleaf_topson_node_list_off_tree nam_ent_t;;
let nam_ent_cur_l = Tree_v.noroot_notopson_noleaf_node_list_off_tree nam_ent_t;; 
let nam_ent_lea_l = Tree_v.leaf_node_list_off_tree nam_ent_t;;

test_number 1 (
Tree_v.is_complete nam_ent_t
);;

test_number 2 (
nam_ent_top 
(* : string *)
= 
"figure"
);;

test_number 3 (
nam_ent_nol_son_l 
(* : string list *)
=
["triangle"; "vector"; "point"; "coordinate"]
);;

test_number 4 (
nam_ent_cur_l 
(* : string list *)
=
["triangle_isoceles"; "triangle_isoceles_oblique"; "triangle_scalene";
 "fromid"; "coordinate_cartesian"; "coordinate_cylindrical";
 "coordinate_polar"; "coordinate_spherical"]
);;

test_number 5 (
nam_ent_lea_l 
(* : string list *)
 =["triangle_equilateral"; "triangle_isoceles_right";
 "triangle_isoceles_oblique_acute"; "triangle_isoceles_oblique_obtuse";
 "triangle_scalene_oblique"; "triangle_scalene_right"; "self"; "string";
 "x"; "y"; "z"; "t"; "rho"; "phi"; "zed"; "rho"; "theta"; "rho"; "phi";
 "psi"]
);;

test_number 6 (
nam_ent_nod_l 
(* : string list *)
 =
["figure"; "triangle"; "triangle_equilateral"; "triangle_isoceles";
 "triangle_isoceles_right"; "triangle_isoceles_oblique";
 "triangle_isoceles_oblique_acute"; "triangle_isoceles_oblique_obtuse";
 "triangle_scalene"; "triangle_scalene_oblique"; "triangle_scalene_right";
 "vector"; "self"; 
 "point"; "fromid"; "string";
 "coordinate"; "coordinate_cartesian";
 "x"; "y"; "z"; "t"; "coordinate_cylindrical"; "rho"; "phi"; "zed";
 "coordinate_polar"; "rho"; "theta"; "coordinate_spherical"; "rho"; "phi";
 "psi"]
);;

