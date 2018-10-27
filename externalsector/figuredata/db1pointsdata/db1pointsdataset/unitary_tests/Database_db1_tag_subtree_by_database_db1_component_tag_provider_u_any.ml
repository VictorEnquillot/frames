open Make_test_v;;

testing "Database_db1_tag_subtree_by_database_db1_component_tag_provider_v
   Database_db1_tag_subtree_by_database_db1_component_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_tag_subtree_by_database_db1_component_tag_provider_u_any.ml";;

*)


Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Figure, [3])
);;

let tag_eld = Database_db1_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_eld 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

(* Full Builder-Tree *)

let tag_den_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_eld;;

(* Root node *)

let tag_den_roo = Tree_v.root_node_off_tree tag_den_t;;

test_number 3 (
tag_den_roo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  (Database_db1_symbol_t.Database_db1_database_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor
      "db1"),
   [1; 3])
);;

(* Root Topson nodes *)

let tag_den_l = Tree_v.topson_node_list_off_tree tag_den_t;;

test_number 4 (
tag_den_l 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  [(Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "T")),
    [1; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "V")),
    [2; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "U")),
    [3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
       (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
         "BC")),
    [4; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
       (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
         "A")),
    [5; 1; 3])]
);;

(* Triangle T Builder-Tree *)

let tag_dec = (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
		 (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
		    "T"),
	       [1; 1; 3]);;

let tag_den_st = Database_db1_tag_subtree_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 5 (
tag_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Database_db1_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
        (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
          "T")),
     [1; 1; 3]),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "nanometer")),
      [1; 1; 1; 3]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cartesian")),
      [2; 1; 1; 3]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "T_A")),
       [3; 1; 1; 3]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000"),
        [1; 3; 1; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.200000"),
        [2; 3; 1; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-0.200000"),
        [3; 3; 1; 1; 3])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "T_B")),
       [4; 1; 1; 3]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"),
        [1; 4; 1; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"),
        [2; 4; 1; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-0.200000"),
        [3; 4; 1; 1; 3])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "T_C")),
       [5; 1; 1; 3]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.200000"),
        [1; 5; 1; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"),
        [2; 5; 1; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-0.200000"),
        [3; 5; 1; 1; 3])])])
);;

(* Triangle V Builder-Tree *)

let tag_dec = 
  (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
    (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
       "V"),
       [2; 1; 3]);;

let tag_den_st = Database_db1_tag_subtree_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 6 (
tag_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Database_db1_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
        (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
          "V")),
     [2; 1; 3]),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "nanometer")),
      [1; 2; 1; 3]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cartesian")),
      [2; 2; 1; 3]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "V_A")),
       [3; 2; 1; 3]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000"),
        [1; 3; 2; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.500000"),
        [2; 3; 2; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"),
        [3; 3; 2; 1; 3])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "V_B")),
       [4; 2; 1; 3]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"),
        [1; 4; 2; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"),
        [2; 4; 2; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"),
        [3; 4; 2; 1; 3])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "V_C")),
       [5; 2; 1; 3]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "2.000000"),
        [1; 5; 2; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"),
        [2; 5; 2; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"),
        [3; 5; 2; 1; 3])])])
);;

(* Vertex A Builder-Tree *)

let tag_dec =
        (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
          (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
            "A"),
       [5; 1; 3]);;

let tag_den_st = Database_db1_tag_subtree_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 7 (
tag_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Database_db1_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
        (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
          "A")),
     [5; 1; 3]),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "meter")),
      [1; 5; 1; 3]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
         (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
           "radian")),
      [2; 5; 1; 3]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "spherical")),
      [3; 5; 1; 3]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "A_A")),
       [4; 5; 1; 3]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000"),
        [1; 4; 5; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398"),
        [2; 4; 5; 1; 3]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398"),
        [3; 4; 5; 1; 3])])])
);;

