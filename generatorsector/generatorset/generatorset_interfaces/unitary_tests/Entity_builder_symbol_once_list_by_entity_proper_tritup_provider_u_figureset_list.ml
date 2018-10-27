open Make_test_v;;

testing "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v with
   Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_figure_list.ml"

(* toplevel 
   #use "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_figure_list.ml";;

*)

let nam_cod = "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_figure_list.ml"

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_ent_t = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos;;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

(* Figureset *)

let nam_enp = "figure";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_l = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;
    
test_number 1 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.Float ""));

   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian");

   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");

   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

(* Triangle *)

let nam_enp = "triangle";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_l = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 2 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
 =
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]
);;

(* Vector *)

let nam_enp = "vector";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_one_son" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_l = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 3 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
 =
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point")]
);;

(* Coordinate *)

let nam_enp = "coordinate";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_l = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 4 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
 =
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.Float ""))]
);;

(* Fake *)

let nam_enp = "fake";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_one_son" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_l = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 5 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
 =
[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;


