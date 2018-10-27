open Make_test_v;;

testing "Translating_entity_symbol_of_entity_basename_v with
   Translating_entity_symbol_of_entity_basename_u_figure_symbol.ml";;

(* toplevel 
   #use "Translating_entity_symbol_of_entity_basename_u_figure_symbol.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let nam_con_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_con_t
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("figure",
   [Tree_t.Inner ("coordinate",
     [Tree_t.Inner ("coordinate_cartesian",
       [Tree_t.Leaf "x:ofstring"; Tree_t.Leaf "y:ofstring";
        Tree_t.Leaf "z:ofstring"]);
      Tree_t.Inner ("coordinate_cylindrical",
       [Tree_t.Leaf "cylindrical_rho"; Tree_t.Leaf "cylindrical_phi";
        Tree_t.Leaf "cylindrical_zed"]);
      Tree_t.Inner ("coordinate_polar",
       [Tree_t.Leaf "polar_rho"; Tree_t.Leaf "polar_theta"]);
      Tree_t.Inner ("coordinate_spherical",
       [Tree_t.Leaf "spherical_rho"; Tree_t.Leaf "spherical_phi";
        Tree_t.Leaf "spherical_theta"])]);
    Tree_t.Inner ("point", [Tree_t.Leaf "point_constructor:ofstring"]);
    Tree_t.Inner ("triangle",
     [Tree_t.Inner ("triangle_isoceles",
       [Tree_t.Leaf "triangle_isoceles_equilateral";
        Tree_t.Leaf "triangle_isoceles_right";
        Tree_t.Leaf "triangle_isoceles_acute";
        Tree_t.Leaf "triangle_isoceles_obtuse"]);
      Tree_t.Inner ("triangle_scalene",
       [Tree_t.Leaf "triangle_scalene_right";
        Tree_t.Leaf "triangle_scalene_acute";
        Tree_t.Leaf "triangle_scalene_obtuse"])]);
    Tree_t.Inner ("vector", [Tree_t.Leaf "vector_constructor"]);
    Tree_t.Inner ("fake",
     [Tree_t.Inner ("fake_son", [Tree_t.Leaf "fake_son_constructor"])])])
);;

test_number 2 (
Tree_v.is_complete nam_con_t
);;

test_number 3 (
Tree_v.has_all_node_unique_of_tree nam_con_t
);;

let boo = Translating_entity_symbol_of_constructor_basename_v.is_entity_fictive_basicnullary "integer";;

test_number 4 (
boo 
(* : bool *)
=
true
);;

let boo = Translating_entity_symbol_of_constructor_basename_v.is_entity_fictive_nullary_ofstring_of_string "point:ofstring";;

test_number 5 (
boo 
(* : bool *)
=
true
);;

let boo = Translating_entity_symbol_of_constructor_basename_v.is_entity_fictive_nullary_ofstring_of_string "spherical_rho";;

test_number 6 (
boo 
(* : bool *)
=
false
);;

let sym_enp = Translating_entity_symbol_of_constructor_basename_v.entity_proper_symbol_of_constructor_notleaf_basename_of_son_count "vector" 1;;

test_number 7 (
sym_enp
(* : Entity_proper_symbol_t.entity_proper_symbol *)
=
  Entity_proper_symbol_t.Entity_proper_with_one_son "vector"
);;
