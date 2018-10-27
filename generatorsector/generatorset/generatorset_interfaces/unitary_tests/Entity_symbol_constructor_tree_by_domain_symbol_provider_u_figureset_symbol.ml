open Make_test_v;;

testing "Entity_symbol_constructor_tree_by_domain_symbol_provider_v with
   Entity_symbol_constructor_tree_by_domain_symbol_provider_u_figureset_symbol.ml";;

(* toplevel 
   #use "Entity_symbol_constructor_tree_by_domain_symbol_provider_u_figureset_symbol.ml";; 

*)

let nam_dom = "figure";;
let nam_cat = "symbol";;

let tra_dom = Trail_v.make "domain" nam_dom [];;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let ban_con_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dom;;

test_number 1 (
ban_con_t
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
       [Tree_t.Leaf "triangle_isoceles_equilateral:ofstring";
        Tree_t.Leaf "triangle_isoceles_right:ofstring";
        Tree_t.Leaf "triangle_isoceles_acute:ofstring";
        Tree_t.Leaf "triangle_isoceles_obtuse:ofstring"]);
      Tree_t.Inner ("triangle_scalene",
       [Tree_t.Leaf "triangle_scalene_right:ofstring";
        Tree_t.Leaf "triangle_scalene_acute:ofstring";
        Tree_t.Leaf "triangle_scalene_obtuse:ofstring"])]);
    Tree_t.Inner ("vector", [Tree_t.Leaf "vector_constructor:ofstring"]);
    Tree_t.Inner ("fake",
     [Tree_t.Inner ("fake_son", [Tree_t.Leaf "fake_son_constructor"])])])
);;

let nam_ent_roo = Tree_v.root_off_tree ban_con_t;;

test_number 2 (
nam_ent_roo
(* : string *)
= 
"figure"
);;

let sym_ent_fut = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dom;;

test_number 3 (
sym_ent_fut 
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons
           "coordinate_cartesian"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring "x")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring "y")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring "z")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons
           "coordinate_cylindrical"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "polar_rho")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "polar_theta")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons
           "coordinate_spherical"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "spherical_rho")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "spherical_phi")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "spherical_theta")))])]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor")))]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring
               "triangle_isoceles_equilateral")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring
               "triangle_isoceles_right")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring
               "triangle_isoceles_acute")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring
               "triangle_isoceles_obtuse")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring
               "triangle_scalene_right")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring
               "triangle_scalene_acute")));
        Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Ofstring
               "triangle_scalene_obtuse")))])]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_one_son "vector"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Ofstring "vector_constructor")))]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_one_son "fake"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_proper_symbol_t.Entity_proper_with_one_son "fake_son"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_fictive_symbol
           (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
             (Entity_fictive_nullary_symbol_t.Bare "fake_son_constructor")))])])])
);;

test_number 4 (
Tree_v.is_complete sym_ent_fut
);;

test_number 5 (
Tree_v.has_all_node_unique_of_tree sym_ent_fut
);;

let nod_l = Tree_v.node_list_off_tree sym_ent_fut;;

test_number 6 (
nod_l
= 
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "figure");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "x"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "y"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "z"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "polar_rho"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "polar_theta"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "spherical_rho"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "spherical_phi"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "spherical_theta"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "triangle");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring
        "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_isoceles_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_isoceles_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_isoceles_obtuse"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_scalene_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_scalene_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_scalene_obtuse"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "vector_constructor"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "fake");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "fake_son");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "fake_son_constructor"))]
);;

let cou_nod = List.length nod_l;;

test_number 7 (
cou_nod
=
34
);;

let ban_con_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree 
    (fun n -> (Tree_v.is_inner_of_node_off_tree n ban_con_t) 
	&& (Tree_v.has_unique_leaf_son_of_node_of_tree n ban_con_t))
    ban_con_t ;;

test_number 8 (
ban_con_sut_l 
(* : Entity_symbol_t.entity_symbol list *)
  =
  [Tree_t.Inner ("point", [Tree_t.Leaf "point_constructor:ofstring"]);
   Tree_t.Inner ("vector", [Tree_t.Leaf "vector_constructor:ofstring"]);
   Tree_t.Inner ("fake_son", [Tree_t.Leaf "fake_son_constructor"])]
);;

let sym_ent_son_l = Tree_v.topson_node_list_off_tree sym_ent_fut;;

test_number 9 (
sym_ent_son_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "triangle");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "fake")]
);;

let sym_ent_lea_l = Tree_v.leaf_node_list_off_tree sym_ent_fut;;

test_number 10 (
sym_ent_lea_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "x"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "y"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "z"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "polar_rho"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "polar_theta"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "spherical_rho"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "spherical_phi"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "spherical_theta"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring
        "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_isoceles_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_isoceles_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_isoceles_obtuse"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_scalene_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_scalene_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "triangle_scalene_obtuse"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "vector_constructor"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "fake_son_constructor"))]
);;

