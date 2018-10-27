open Make_test_v;;

testing "Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v with
   Entity_builder_symbol_tree_by_entity_proper_tritup_provider_u_figure.ml"

(* toplevel 
   #use "Entity_builder_symbol_tree_by_entity_proper_tritup_provider_u_figure.ml";;

*)

let nam_cod = "Entity_builder_symbol_tree_by_entity_proper_tritup_provider_u_figure.ml"

let nam_dom = "figure";;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let sym_ent_ct = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dom;;
let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dom;;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

(* Figure *)

let nam_ent = "figure";;
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dom;;

test_number 1 (
tri_enp
(* : (Entity_proper_symbol_t.entity_proper_symbol,
   Category_symbol_t.category_symbol, 
   Domain_symbol_t.domain_symbol)
   Triplet_t.triplet *)
  =
(Entity_proper_symbol_t.Entity_proper_with_sons "figure",
 Category_symbol_t.Formula, 
 Domain_symbol_t.Figure)
);;

let sym_ebu_ol = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 2 (
sym_ebu_ol 
(* : Entity_symbol_t.entity_symbol list *)
  =
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "expression_atomic");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

let sym_efb_l = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.entity_basic_son_tritup_list_of_entity_builder_symbol_once_list sym_ebu_ol;;

test_number 3 (
sym_efb_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

let lea_son_l = List.map Tree_v.make_of_leaf sym_efb_l;;


let tri_eps_l = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.entity_proper_son_tritup_list_of_entity_builder_symbol_once_list tri_enp sym_ebu_ol;;

test_number 4 (
tri_eps_l 
(* : (Entity_proper_symbol_t.entity_proper_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domain_symbol)
  Triplet_t.triplet list *)
  =
[(Entity_proper_symbol_t.Entity_proper_with_sons "expression",
  Category_symbol_t.Formula, Domain_symbol_t.Figure)]
);;

let sym_ent_bt = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;
    
let sym_ent_bt = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;
    
test_number 1 (
sym_ent_bt
(* : : Entity_symbol_t.entity_symbol Tree_t.tree *)
      =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
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
             (Entity_fictive_basicnullary_symbol_t.Float "")))])]);
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
               (Entity_fictive_basicnullary_symbol_t.Float "")))])])])])
   );;

let is_btstem = Tree_v.has_some_topson_leaf_of_tree sym_ent_bt;;

test_number 2 (
(is_btstem)
);;

(* Triangle *)

let nam_ent = "triangle";;
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dom;;
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
         (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
             (Entity_fictive_basicnullary_symbol_t.Float "")))])]);
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
               (Entity_fictive_basicnullary_symbol_t.Float "")))])])])])
);;

let is_stem = Tree_v.has_some_topson_leaf_of_tree sym_ent_t;;

test_number 4 (
not (is_stem)
);;

(* Vector*)

let nam_ent = "vector"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dom;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 5 (
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

(* Point*)

let nam_ent = "point"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dom;;
let sym_ent_t = Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 6 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol tree *)
 =
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
           (Entity_fictive_basicnullary_symbol_t.Float "")))])])
);;

(* Check Once list of BT-Sons for Triangle *)

let sym_ebo_l = 
  Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide 
    tri_enp
;;

let sym_ent_l = List.filter 
    Entity_symbol_v.is_entity_proper_symbol_off_entity_symbol 
    sym_ebo_l 
;;

let tri_ent_l = List.map 
    (fun s -> Triplet_v.reset_of_left_off_triplet s tri_enp)
    sym_ent_l
;;
  
let sym_ebm_l = List.map
    Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.entity_proper_builder_main_of_entity_tritup 
    tri_ent_l
;;
  
let tri_enp_l = List.map 
    (fun s -> Triplet_v.reset_of_left_off_triplet s tri_enp)
      sym_ebm_l
;;

let sym_efb_l = List.filter 
    Entity_symbol_v.is_entity_fictive_basicnullary_symbol_off_entity_symbol
    sym_ebo_l 
;;



