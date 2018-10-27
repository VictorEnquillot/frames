open Make_test_v;;

testing "Entity_trail_constructor_tree_by_kind_trail_provider_u_figure_symbol.ml";;

(* toplevel 
   #use "Entity_trail_constructor_tree_by_kind_trail_provider_u_figure_symbol.ml";; 
*)

let tra_cat = [("category", "symbol"); ("domain", "figure")];;
let et_dos = Entity_trail_constructor_tree_by_kind_trail_provider_v.provide tra_cat;;
let tos_l = Tree_v.topson_node_list_off_tree et_dos;;
let nod_l = Tree_v.node_list_off_tree et_dos;;
let lea_l = Tree_v.leaf_node_list_off_tree et_dos;;
let de3_tl = Tree_v.subtree_list_of_depth_off_tree 3 et_dos;;
let de4_tl = Tree_v.subtree_list_of_depth_off_tree 4 et_dos;;
let de5_tl = Tree_v.subtree_list_of_depth_off_tree 5 et_dos;;

test_number 1 (
tos_l 
(* : Entity_trail_constructor_tree_by_kind_trail_provider_u_symbol.Trail_t.trail list *)
=
  [[("entity", "triangle"); ("category", "symbol"); ("domain", "figure")];
   [("entity", "vector"); ("category", "symbol"); ("domain", "figure")];
   [("entity", "point"); ("category", "symbol"); ("domain", "figure")];
   [("entity", "coordinate"); ("category", "symbol"); ("domain", "figure")]]
);;

test_number 2 (
List_v.sublist_of_int_of_int_of_list 0 16 lea_l
(* : Trail_t.trail list *)
 =
[[("entity", "triangle_equilateral"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles_right"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles_oblique_acute"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles_oblique_obtuse"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_scalene_oblique"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_scalene_right"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "self"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "string"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "x"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "y"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "z"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "t"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "rho"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "phi"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "zed"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "rho"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "theta"); ("category", "symbol"); ("domain", "figure")]]
);;

test_number 3 (
 List_v.sublist_of_int_of_int_of_list 16 50 lea_l
(* : Trail_t.trail list *)
=
[[("entity", "theta"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "rho"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "phi"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "psi"); ("category", "symbol"); ("domain", "figure")]]
);;

test_number 4 (
List_v.sublist_of_int_of_int_of_list 0 18 nod_l
(* : Trail_t.trail list *)
=
[[("entity", "figure"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_equilateral"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles_right"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles_oblique"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles_oblique_acute"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_isoceles_oblique_obtuse"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_scalene"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_scalene_oblique"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "triangle_scalene_right"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "vector"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "self"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "point"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "fromid"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "string"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "coordinate"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "coordinate_cartesian"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "x"); ("category", "symbol"); ("domain", "figure")]]
);;

test_number 5 (
List_v.sublist_of_int_of_int_of_list 19 50 nod_l
(* : Trail_t.trail list *)
=[[("entity", "y"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "z"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "t"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "coordinate_cylindrical"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "rho"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "phi"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "zed"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "coordinate_polar"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "rho"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "theta"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "coordinate_spherical"); ("category", "symbol");
  ("domain", "figure")];
 [("entity", "rho"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "phi"); ("category", "symbol"); ("domain", "figure")];
 [("entity", "psi"); ("category", "symbol"); ("domain", "figure")]]
);;

test_number 6 (
de5_tl 
(* : Tree_t.tree list *)
  =
[Tree_t.Leaf
  [("entity", "triangle_isoceles_oblique_acute"); ("category", "symbol");
   ("domain", "figure")];
 Tree_t.Leaf
  [("entity", "triangle_isoceles_oblique_obtuse"); ("category", "symbol");
   ("domain", "figure")]]
);;

