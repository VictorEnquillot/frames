open Make_test_v;;

testing "Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v with
   Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure.ml"

(* toplevel 
   #use "Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure.ml";;

*)

let nam_dom = "figure";;
let tra_dom = Trail_v.make "domain" nam_dom [];;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dom;;

(* Triangle *)

let nam_ent = "triangle"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

test_number 1 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_sons "triangle")
  
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;
let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 2 (
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

(* "triangle_isoceles_right" *)

let nam_efn = "triangle_isoceles_right";;
let sym_efn = List.find (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn) sym_enl_l;;
let tri_efn = (sym_efn, sym_cat, sym_dom);;
let sym_ebu_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 3 (
 sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector")]
);;

let tri_enl_l = List.map 
    (fun s -> Triplet_v.reset_of_left_off_triplet s tri_enp) 
    sym_enl_l;;

let sym_ebu_ll = List.map 
      Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide
      tri_enl_l;;

let sym_ebu_l = List.flatten sym_ebu_ll;;

test_number 4 (
sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector")]
);;

let sym_ebu_ol = List_v.left_once_list_off_list sym_ebu_l;;

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

(* "vector_constructor" *)

let nam_efn = "vector_constructor";;
let sym_efn = List.find (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn) sym_enl_l;;
let tri_efn = (sym_efn, sym_cat, sym_dom);;
let sym_ebu_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 8 (
 sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]
);;

let tri_enl_l = List.map 
    (fun s -> Triplet_v.reset_of_left_off_triplet s tri_enp) 
    sym_enl_l;;

let sym_ebu_ll = List.map 
      Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide
      tri_enl_l;;

let sym_ebu_l = List.flatten sym_ebu_ll;;

test_number 9 (
sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]
);;

let sym_ebu_ol = List_v.left_once_list_off_list sym_ebu_l;;

test_number 10 (
sym_ebu_ol
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]
);;
