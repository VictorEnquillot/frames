open Make_test_v;;

testing "Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v with
   Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_formula_coordinate_list.ml"

(* toplevel 
   #use "Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_formula_coordinate_list.ml";;

*)

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let nam_ent = "coordinate_constructor";;
let sym_ent = Entity_symbol_v.ofstring nam_ent;;

test_number 1 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Ofstring "coordinate_constructor"))
);;

let nam_ent = Entity_symbol_v.name sym_ent;;

test_number 2 (
nam_ent
(* : string *)
  =
"ofstring"
);;

let str_ent = Entity_symbol_v.string_off sym_ent;;

test_number 3 (
str_ent
(* : string *)
  =
"coordinate_constructor"
);;

let tri_ent = Triplet_v.make sym_ent sym_cat sym_dos;;

test_number 4 (
tri_ent 
(* : (Entity_symbol_t.entity_symbol, Category_symbol_t.category_symbol,
   Domain_symbol_t.domainset_symbol) Triplet_t.triplet *)
=
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "coordinate_constructor")),
   Category_symbol_t.Formula, Domain_symbol_t.Figure)
);;

let tra_ent = Translating_trail_of_symbol_v.entity_trail_of_entity_tritup tri_ent;;

let tra_ent = 
  [("entity", "coordinate_constructor:ofstring"); 
   ("category", "formula");
   ("domain", "figure")];;

test_number 5 (
tra_ent 
(* : Trail_t.trail *)
=
[("entity", "coordinate_constructor:ofstring"); 
 ("category", "formula");
 ("domain", "figure")]
);;

let nam_ent_lea_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 6 (
 nam_ent_lea_l 
(* : String.t list *)
=
  ["triangle_isoceles_equilateral";
   "triangle_isoceles_right";
   "triangle_isoceles_acute";
   "triangle_isoceles_obtuse";
   "triangle_scalene_right";
   "triangle_scalene_acute";
   "triangle_scalene_obtuse";
   "fake_son_constructor";
   "vector_constructor";
   "point_constructor:ofstring";
   "x:ofstring";
   "y:ofstring";
   "z:ofstring";
   "cylindrical_rho";
   "cylindrical_phi";
   "cylindrical_zed";
   "spherical_rho";
   "spherical_phi";
   "spherical_theta";
   "polar_rho";
   "polar_theta"]
);;

(* "x" *)

let sym_efn = Entity_fictive_nullary_symbol_v.ofstring "x";;
let tri_efn = (sym_efn, sym_cat, sym_dos);;
let sym_ent_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 7 (
sym_ent_l
(*: string list *)
= 
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.Float ""))]
);;

let sym_enp_l = Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 8 (
sym_enp_l 
(* : Entity_symbol_t.entity_symbol list *)
=
 []
);;

(* "cylindrical_zed" *)

let sym_efn = Entity_fictive_nullary_symbol_v.bare "cylindrical_zed";;
let tri_efn = (sym_efn, sym_cat, sym_dos);;
let sym_ent_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 9 (
sym_ent_l
(*: string list *)
= 
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.Float ""))]
);;

let sym_enp_l = Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 10 (
sym_enp_l 
(* : Entity_symbol_t.entity_symbol list *)
=
 []
);;

