open Make_test_v;;

testing "Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v with
   Entity_builder_symbol_tree_by_entity_proper_tritup_provider_u_chemicalset_list.ml"

(* toplevel 
   #use "Entity_builder_symbol_tree_by_entity_proper_tritup_provider_u_chemicalset_list.ml";;

*)

let nam_cod = "Entity_builder_symbol_tree_by_entity_proper_tritup_provider_u_chemicalset_list.ml"

let nam_dos = "chemicalset";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_ent_t = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos;;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

(* Chemicalset *)

let nam_enp = "chemicalset";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;
    
test_number 1 (
sym_ent_t
(* : : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "chemicalset"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
         (Entity_fictive_basicnullary_symbol_t.Float "")));
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
         (Entity_fictive_basicnullary_symbol_t.String "")));

    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
           (Entity_fictive_basicnullary_symbol_t.Float "")))]);

    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
             (Entity_fictive_basicnullary_symbol_t.Float "")))])])])
   );;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 2 (
(is_stem)
);;

(* Triangle *)

let nam_enp = "triangle";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 3 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol tree *)
 =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons
           "coordinate"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
             (Entity_fictive_basicnullary_symbol_t.Float "")))])])])
);;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 4 (
not (is_stem)
);;

(* Triangle_isoceles *)

let nam_enp = "triangle_isoceles";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 5 (
sym_ent_t 
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
 =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
             (Entity_fictive_basicnullary_symbol_t.Float "")))])])])
);;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 6 (
not (is_stem)
);;

(* Vector *)

let nam_enp = "vector";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_one_son" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 7 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol tree *)
 =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "vector"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
             (Entity_fictive_basicnullary_symbol_t.Float "")))])])])
);;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 8 (
not (is_stem)
);;

(* Coordinate *)

let nam_enp = "coordinate";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 9 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol tree *)
 =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
         (Entity_fictive_basicnullary_symbol_t.Float "")))])
);;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 10 (
(is_stem)
);;

(* Coordinate_polar *)

let nam_enp = "coordinate_polar";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_sons" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 11 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol tree *)
 =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
         (Entity_fictive_basicnullary_symbol_t.Float "")))])
);;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 12 (
is_stem
);;

(* Fake *)

let nam_enp = "fake";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_one_son" nam_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 13 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol tree *)
 =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "fake"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
         (Entity_fictive_basicnullary_symbol_t.String "")))])
);;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 14 (
is_stem
);;

