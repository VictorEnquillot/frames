open Make_test_v;;

testing "Entity_symbol_constructor_subtree_list_by_domain_symbol_provider_v with
   Entity_symbol_constructor_subtree_list_by_domain_symbol_provider_u_figure_symbol.ml";;

(* toplevel 
   #use "Entity_symbol_constructor_subtree_list_by_domain_symbol_provider_u_figure_symbol.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_sut_l = Entity_symbol_constructor_subtree_list_by_domain_symbol_provider_v.provide sym_dos;;

let par_1 = List_v.sublist_of_int_of_int_of_list 0 0 sym_ent_sut_l;;

test_number 1 (
par_1
(* : Entity_symbol_t.entity_symbol Tree_t.tree list *)
=
 [Tree_t.Inner
    (Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
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
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Sonnullary "vector")));
     Tree_t.Leaf
      (Entity_symbol_t.Entity_fictive_symbol
        (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
          (Entity_fictive_nullary_symbol_t.Sonnullary "point")));
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
              (Entity_fictive_nullary_symbol_t.Nonsonnullary "z")))]);
       Tree_t.Inner
        (Entity_symbol_t.Entity_proper_symbol
          (Entity_symbol_t.Entity_proper "coordinate_cylindrical"),
        [Tree_t.Leaf
          (Entity_symbol_t.Entity_fictive_symbol
            (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
              (Entity_fictive_nullary_symbol_t.Nonsonnullary
                "cylindrical_rho")));
         Tree_t.Leaf
          (Entity_symbol_t.Entity_fictive_symbol
            (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
              (Entity_fictive_nullary_symbol_t.Nonsonnullary
                "cylindrical_phi")));
         Tree_t.Leaf
          (Entity_symbol_t.Entity_fictive_symbol
            (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
              (Entity_fictive_nullary_symbol_t.Nonsonnullary
                "cylindrical_zed")))]);
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
              (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_theta")))]);
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
              (Entity_fictive_nullary_symbol_t.Nonsonnullary
                "spherical_theta")))])])])]
);;

let par_2 = List_v.sublist_of_int_of_int_of_list 1 1 sym_ent_sut_l;;

test_number 2 (
par_2
(* : Entity_symbol_t.entity_symbol Tree_t.tree list *)
=
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
            "triangle_scalene_obtuse")))])])]
);;

let par_3 = List_v.sublist_of_int_of_int_of_list 5 5 sym_ent_sut_l;;

test_number 3 (
par_3
(* : Entity_symbol_t.entity_symbol Tree_t.tree list *)
=
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
          (Entity_fictive_nullary_symbol_t.Nonsonnullary "z")))])]
);;

let sym_ent_roo_l = List.map Tree_v.root_off_tree sym_ent_sut_l;;

test_number 4 (
sym_ent_roo_l
(* : Entity_symbol_t.entity_symbol list *)
=
 [Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_scalene");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate_cartesian");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate_cylindrical");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate_polar");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate_spherical")]
);;

