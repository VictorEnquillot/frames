open Make_test_v;;

testing "Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v 
   Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_u_figure_list.ml"

(* toplevel 
   #use "Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_u_figure_list.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let tri_ent_l = List.map (fun e -> Triplet_v.make e sym_cat sym_dos) sym_ent_l;;

(* Point *)

let tri_ent = Triplet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "point") tri_ent_l;;
let sym_eda = Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide tri_ent;;

test_number 1 (
sym_eda
=
[Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")]
  
);;

(* Coordinate *)

let tri_ent = Triplet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "coordinate") tri_ent_l;;
let sym_eda = Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide tri_ent;;

test_number 2 (
sym_eda
=
[]
);;

(* Triangle_isoceles *)

let tri_ent = Triplet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "triangle_isoceles") tri_ent_l;;
let sym_eda = Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide tri_ent;;

test_number 3 (
sym_eda
=
 [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]
);;

(* Triangle_isoceles_right *)

let tri_ent = Triplet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "triangle_isoceles_right") tri_ent_l;;
let sym_eda = Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide tri_ent;;

test_number 4 (
sym_eda
=
 [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]
);;

(* Not_root *)

let sym_nor_l = List_v.right_list_exclude_of_predicate_of_list (fun e -> Entity_symbol_v.string_off e = "figure") sym_ent_l;; 
let tri_nor_l = List.map (fun e -> Triplet_v.make e sym_cat sym_dos) sym_nor_l;;

let sym_eda_l = List.map Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide tri_nor_l;;

test_number 5 (
sym_eda_l
=
  [[Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")];
   []; []; []; []; [];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point")];
   []; []; []]
);;

let dou_l = List.map2 Doublet_v.make sym_nor_l sym_eda_l;;

test_number 6 (
dou_l
(* : (Entity_symbol_t.entity_symbol, Entity_symbol_t.entity_symbol list)
  Doublet_t.doublet list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "polar_rho")),
    []);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "polar_theta")),
    []);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "spherical_phi")),
    []);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "spherical_rho")),
    []);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "spherical_theta")),
    []);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene"),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "vector"),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "vector_constructor")),
    [Entity_symbol_t.Entity_proper_symbol
      (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Ofstring "x")),
    []);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Ofstring "y")),
    []);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Ofstring "z")),
    [])]
);;
