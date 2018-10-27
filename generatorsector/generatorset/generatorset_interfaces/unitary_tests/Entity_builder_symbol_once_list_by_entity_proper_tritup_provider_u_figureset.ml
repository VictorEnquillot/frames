open Make_test_v;;

testing "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v with
   Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_figure.ml"

(* toplevel 
   #use "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_figure.ml";;

*)

let nam_cod = "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_figure.ml"

let nam_dom = "figure";;
let tra_dom = Trail_v.make "domain" nam_dom [];;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dom;;

(* Figure *)

let nam_ent = "figure"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

test_number 1 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_sons "figure")
  
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;

let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 2 (
sym_enl_l
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
  =
 [Entity_fictive_nullary_symbol_t.Ofstring "x";
   Entity_fictive_nullary_symbol_t.Ofstring "y";
   Entity_fictive_nullary_symbol_t.Ofstring "z";
   Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho";
   Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi";
   Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed";
   Entity_fictive_nullary_symbol_t.Bare "polar_rho";
   Entity_fictive_nullary_symbol_t.Bare "polar_theta";
   Entity_fictive_nullary_symbol_t.Bare "spherical_rho";
   Entity_fictive_nullary_symbol_t.Bare "spherical_phi";
   Entity_fictive_nullary_symbol_t.Bare "spherical_theta";
   Entity_fictive_nullary_symbol_t.Ofstring "point_constructor";
   Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral";
   Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right";
   Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute";
   Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse";
   Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right";
   Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute";
   Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse";
   Entity_fictive_nullary_symbol_t.Bare "vector_constructor";
   Entity_fictive_nullary_symbol_t.Bare "fake_son_constructor"]
);;

(* Triangle *)

let nam_ent = "triangle"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

test_number 3 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
  Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "triangle")
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;

let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 4 (
sym_enl_l
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
  =
 [Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral";
   Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right";
   Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute";
   Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse";
   Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right";
   Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute";
   Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse"]
);;

let sym_ebu_ol = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 5 (
sym_ebu_ol 
(* : Entity_symbol_t.entity_symbol list *) 
=
 [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector")]
);;

(* Vector *)

let nam_ent = "vector"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

test_number 6 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
  Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_one_son "vector")
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;
let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 7 (
sym_enl_l
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
  =
  [Entity_fictive_nullary_symbol_t.Bare "vector_constructor"]
);;

