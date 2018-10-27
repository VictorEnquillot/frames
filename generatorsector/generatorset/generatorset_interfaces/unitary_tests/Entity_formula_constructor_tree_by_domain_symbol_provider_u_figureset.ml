open Make_test_v;;

testing "Entity_formula_constructor_tree_by_domain_symbol_provider_v with
   Entity_formula_constructor_tree_by_domain_symbol_provider_u_figure.ml";;

(* toplevel 
   #use "Entity_formula_constructor_tree_by_domain_symbol_provider_u_figure.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_con_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dos;;
let nam_con_roo = Tree_v.root_off_tree nam_con_t;;
let nam_con_son_tl = Tree_v.topson_tree_list_off_tree nam_con_t;;

let sym_ent_t = Entity_formula_constructor_tree_by_domain_symbol_provider_v.provide sym_dos;;
let nod_l = Tree_v.node_list_off_tree sym_ent_t;;

let nam_con_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_con_t) && (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_con_t)) nam_con_t ;;

let sym_ent_son_l = Tree_v.topson_node_list_off_tree sym_ent_t;;
let sym_ent_lea_l = Tree_v.leaf_node_list_off_tree sym_ent_t;;

test_number 1 (
nam_con_roo
(* : string *)
= 
"figure"
);;

test_number 2 (
Tree_v.is_complete sym_ent_t
);;

test_number 3 (
nam_con_sut_l 
(* : string Tree_t.tree list *)
  =
[]
);;

test_number 4 (
sym_ent_son_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate")]
);;

test_number 5 (
sym_ent_lea_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary
      "triangle_isoceles_equilateral"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_right"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_acute"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_obtuse"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_right"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_acute"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_obtuse"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector_1d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "point"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_1d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "x_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_rho"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_phi"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_zed"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_rho"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_phi"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_theta"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_rho"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_theta"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "coordinate_1d"))]
);;

test_number 6 (
sym_ent_t
(* : Entity_symbol_t.entity_symbol list *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure")),
 [Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "triangle_isoceles"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_isoceles_equilateral")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_isoceles_right")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_isoceles_acute")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_isoceles_obtuse")))]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "triangle_scalene"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_scalene_right")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_scalene_acute")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary
             "triangle_scalene_obtuse")))])]);
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "vector"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector")));
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector")));
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector_1d")))]);
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "point"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d")));
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "point")));
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_1d")))]);
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "coordinate_3d"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "coordinate_cartesian_3d"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "x_3d")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_3d")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_3d")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "coordinate_cylindrical"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_rho")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_phi")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_zed")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "coordinate_spherical"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_rho")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_phi")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_theta")))])]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "coordinate_2d"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "x")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "coordinate_polar"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_rho")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_theta")))])]);
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "coordinate_1d")))])])
);;
