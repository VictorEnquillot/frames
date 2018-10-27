open Make_test_v;;

testing "Entity_symbol_constructor_tree_by_kind_trail_provider_u_naturalset_symbol.ml";;

(* toplevel 
   #use "Entity_symbol_constructor_tree_by_kind_trail_provider_u_naturalset_symbol.ml";; 

*)

let entity_basename_fulltree = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide;;

let sym_dos = Domain_symbol_v.make "naturalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_ent_t = entity_basename_fulltree tag_cat;;
let nam_ent_roo = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_son_tl = Tree_v.topson_tree_list_off_tree nam_ent_t;;

let sym_ent_t = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;
let nod_l = Tree_v.node_list_off_tree sym_ent_t;;

let nam_ent_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_ent_t) && (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_ent_t)) nam_ent_t ;;

let de4_tl = Tree_v.subtree_list_of_depth_off_tree 4 sym_ent_t;;
let de5_tl = Tree_v.subtree_list_of_depth_off_tree 5 sym_ent_t;;

let sym_ent_son_tl = List.map (Entity_symbol_constructor_tree_by_kind_trail_provider_v.leaf_entity_symbol_self_or_string_or_datastructure_of_tree nam_ent_t) nam_ent_son_tl;;

let vector_nam_t = Tree_v.subtree_of_node_predicate_off_tree (fun s -> s = "vector") nam_ent_t;;

let point_nam_t = Tree_v.subtree_of_node_predicate_off_tree (fun s -> s = "point") nam_ent_t;;

let fromid_nam_t = Tree_v.subtree_of_node_predicate_off_tree (fun s -> s = "fromid") nam_ent_t;;

let vector_sym_t = Tree_v.subtree_of_node_predicate_off_tree (fun e -> Entity_symbol_v.string_off e = "vector") sym_ent_t;;

let point_sym_t = Tree_v.subtree_of_node_predicate_off_tree (fun e -> Entity_symbol_v.string_off e = "point") sym_ent_t;;

let fromid_sym_t = Tree_v.subtree_of_node_predicate_off_tree (fun e -> Entity_symbol_v.string_off e = "fromid") sym_ent_t;;


test_number 1 (
nam_ent_roo
(* : string *)
= 
"naturalset"
);;

test_number 2 (
nam_ent_son_tl
(* : string Tree_t.tree list *)
=
[Tree_t.Inner ("triangle",
  [Tree_t.Leaf "triangle_equilateral";
   Tree_t.Inner ("triangle_isoceles",
    [Tree_t.Leaf "triangle_isoceles_right";
     Tree_t.Inner ("triangle_isoceles_oblique",
      [Tree_t.Leaf "triangle_isoceles_oblique_acute";
       Tree_t.Leaf "triangle_isoceles_oblique_obtuse"])]);
   Tree_t.Inner ("triangle_scalene",
    [Tree_t.Leaf "triangle_scalene_oblique";
     Tree_t.Leaf "triangle_scalene_right"])]);
 Tree_t.Inner ("vector", [Tree_t.Leaf "self"]);
 Tree_t.Inner ("point", [Tree_t.Inner ("fromid", [Tree_t.Leaf "string"])]);
 Tree_t.Inner ("coordinate",
  [Tree_t.Inner ("coordinate_cartesian",
    [Tree_t.Leaf "x"; Tree_t.Leaf "y"; Tree_t.Leaf "z"; Tree_t.Leaf "t"]);
   Tree_t.Inner ("coordinate_cylindrical",
    [Tree_t.Leaf "rho"; Tree_t.Leaf "phi"; Tree_t.Leaf "zed"]);
   Tree_t.Inner ("coordinate_polar",
    [Tree_t.Leaf "rho"; Tree_t.Leaf "theta"]);
   Tree_t.Inner ("coordinate_spherical",
    [Tree_t.Leaf "rho"; Tree_t.Leaf "phi"; Tree_t.Leaf "psi"])])]
);;

test_number 3 (
nam_ent_sut_l 
(* : string Tree_t.tree list *)
  =
[Tree_t.Inner ("vector", [Tree_t.Leaf "self"]);
 Tree_t.Inner ("fromid", [Tree_t.Leaf "string"])]
);;

test_number 4 (
sym_ent_son_tl 
(* : Entity_symbol_t.entity_symbol Tree_t.tree list *)
 =
[Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_equilateral")));
   Tree_t.Inner
    (Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    [Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary
            "triangle_isoceles_right")));
     Tree_t.Inner
      (Entity_symbol_t.Entity_proper_symbol
        (Entity_symbol_t.Entity_proper "triangle_isoceles_oblique"),
      [Tree_t.Leaf
        (Entity_symbol_t.Entity_fictive_symbol
          (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
            (Entity_fictive_nullary_symbol_t.Nonsonnullary
              "triangle_isoceles_oblique_acute")));
       Tree_t.Leaf
        (Entity_symbol_t.Entity_fictive_symbol
          (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
            (Entity_fictive_nullary_symbol_t.Nonsonnullary
              "triangle_isoceles_oblique_obtuse")))])]);
   Tree_t.Inner
    (Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle_scalene"),
    [Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary
            "triangle_scalene_oblique")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary
            "triangle_scalene_right")))])]);
 Tree_t.Leaf
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Selfentity "vector"));
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "point"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.String "fromid")))]);
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate"),
  [Tree_t.Inner
    (Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_cartesian"),
    [Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "x")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "y")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "z")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "t")))]);
   Tree_t.Inner
    (Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_cylindrical"),
    [Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "rho")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "phi")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "zed")))]);
   Tree_t.Inner
    (Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_polar"),
    [Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "rho")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "theta")))]);
   Tree_t.Inner
    (Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_spherical"),
    [Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "rho")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "phi")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "psi")))])])]
);;

test_number 5 (
Tree_v.is_complete sym_ent_t
);;

test_number 6 (
vector_nam_t
(* : string Tree_t.tree *)
= 
Tree_t.Inner ("vector", [Tree_t.Leaf "self"])
);;

test_number 7 (
vector_sym_t 
(* : Entity_symbol_t.entity_symbol *)
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Selfentity "vector"))
);;

test_number 8 (
fromid_nam_t 
(* : string Tree_t.tree *)
 = 
Tree_t.Inner ("fromid", [Tree_t.Leaf "string"])
);;

test_number 9 (
fromid_sym_t 
(* : Entity_symbol_t.entity_symbol *)
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
     (Entity_fictive_basicnullary_symbol_t.String "fromid")))
);;

test_number 10 (
point_nam_t 
(* : string Tree_t.tree *)
=
Tree_t.Inner ("point", [Tree_t.Inner ("fromid", [Tree_t.Leaf "string"])])
);;

test_number 11 (
point_sym_t 
(* : Entity_symbol_t.entity_symbol *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "point"),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.String "fromid")))])
);;

test_number 12 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "naturalset"),
 [Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary
           "triangle_equilateral")));
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "triangle_isoceles"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_isoceles_right")));
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "triangle_isoceles_oblique"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary
               "triangle_isoceles_oblique_acute")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary
               "triangle_isoceles_oblique_obtuse")))])]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "triangle_scalene"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_scalene_oblique")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_scalene_right")))])]);
  Tree_t.Leaf
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Selfentity "vector"));
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "point"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
         (Entity_fictive_basicnullary_symbol_t.String "fromid")))]);
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "coordinate_cartesian"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "x")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "y")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "t")))]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "coordinate_cylindrical"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "rho")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "phi")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "zed")))]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "coordinate_polar"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "rho")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "theta")))]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "coordinate_spherical"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "rho")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "phi")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "psi")))])])])
);;
