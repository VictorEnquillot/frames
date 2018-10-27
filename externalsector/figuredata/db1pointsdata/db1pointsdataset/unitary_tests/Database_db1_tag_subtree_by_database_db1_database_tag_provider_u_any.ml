open Make_test_v;;

testing "Database_db1_tag_subtree_by_database_db1_database_tag_provider_v
   Database_db1_tag_subtree_by_database_db1_database_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Component_filename_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_content_list_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_database_tag_by_domain_tag_register_v.register;;
Register_v.delete  Database_db1_symbol_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_symbol_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_all_list_by_database_db1_domain_tag_register_v.register;;
Register_v.delete  Database_db1_tag_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_n_value_float_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_database_db1_tag_list_by_father_database_db1_tag_register_v.register;;
Register_v.delete  String_by_database_db1_component_tag_register_v.register;;
Register_v.delete  String_by_database_db1_database_tag_register_v.register;;
Register_v.delete  String_list_by_database_db1_tag_register_v.register;;



(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Database_db1_tag_subtree_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_dom = "database";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Database, [2])
);;

let tag_d1d = Database_db1_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 2])
);;

(* Full Builder-Tree *)

let tag_dd1_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

(* Root node *)

let tag_dd1_roo = Tree_v.root_node_off_tree tag_dd1_t;;

test_number 3 (
tag_dd1_roo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  (Database_db1_symbol_t.Database_db1_context_symbol
    (Database_db1_context_symbol_t.Database_db1_database_symbol
      (Database_db1_database_symbol_t.Database_db1_database_constructor "db1")),
   [1; 2])
);;

(* Root Topson nodes *)

let tag_dd1_l = Tree_v.topson_node_list_off_tree tag_dd1_t;;

test_number 4 (
tag_dd1_l 
(* : Database_db1_symbol_t.database_db1_symbol *)
=  [(Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
         (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "T"))),
    [1; 1; 2]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
         (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "V"))),
    [2; 1; 2]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
         (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "U"))),
    [3; 1; 2]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
         (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
           "BC"))),
    [4; 1; 2]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
         (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
           "A"))),
    [5; 1; 2])]
);;

(* Triangle "T" Builder-Tree *)

let tag_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_tag_v.string_off t = "T") tag_dd1_t;; 

test_number 5 (
tag_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_component_symbol
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "T"))),
     [1; 1; 2]),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
           (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
             "nanometer"))),
      [1; 1; 1; 2]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
           (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
             "cartesian"))),
      [2; 1; 1; 2]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_body_symbol
        (Database_db1_body_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "T_A"))),
       [3; 1; 1; 2]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.100000")),
        [1; 3; 1; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.200000")),
        [2; 3; 1; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-0.200000")),
        [3; 3; 1; 1; 2])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_body_symbol
        (Database_db1_body_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "T_B"))),
       [4; 1; 1; 2]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")),
        [1; 4; 1; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")),
        [2; 4; 1; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-0.200000")),
        [3; 4; 1; 1; 2])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_body_symbol
        (Database_db1_body_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "T_C"))),
       [5; 1; 1; 2]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.200000")),
        [1; 5; 1; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")),
        [2; 5; 1; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-0.200000")),
        [3; 5; 1; 1; 2])])])
);;

(* Triangle V Builder-Tree *)

let tag_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_tag_v.string_off t = "V") tag_dd1_t;; 

test_number 6 (
tag_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_component_symbol
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "V"))),
     [2; 1; 2]),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
           (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
             "nanometer"))),
      [1; 2; 1; 2]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
           (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
             "cartesian"))),
      [2; 2; 1; 2]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_body_symbol
        (Database_db1_body_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "V_A"))),
       [3; 2; 1; 2]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "1.000000")),
        [1; 3; 2; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.500000")),
        [2; 3; 2; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-2.000000")),
        [3; 3; 2; 1; 2])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_body_symbol
        (Database_db1_body_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "V_B"))),
       [4; 2; 1; 2]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")),
        [1; 4; 2; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")),
        [2; 4; 2; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-2.000000")),
        [3; 4; 2; 1; 2])]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_body_symbol
        (Database_db1_body_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "V_C"))),
       [5; 2; 1; 2]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "2.000000")),
        [1; 5; 2; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")),
        [2; 5; 2; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-2.000000")),
        [3; 5; 2; 1; 2])])])
);;

(* Vertex T_A *)

let tag_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_tag_v.string_off t = "T_A") tag_dd1_t;;    

test_number 7 (
 tag_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "T_A"))),
     [3; 1; 1; 2]),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_closure_symbol
       (Database_db1_closure_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor
           "0.100000")),
      [1; 3; 1; 1; 2]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_closure_symbol
       (Database_db1_closure_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor
           "0.200000")),
      [2; 3; 1; 1; 2]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_closure_symbol
       (Database_db1_closure_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor
           "-0.200000")),
      [3; 3; 1; 1; 2])])
);;

(* Vertex A Builder-Tree *)

let tag_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_tag_v.string_off t = "A") tag_dd1_t;; 

test_number 8 (
tag_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_component_symbol
        (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
          (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
            "A"))),
     [5; 1; 2]),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
           (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
             "meter"))),
      [1; 5; 1; 2]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
           (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
             "radian"))),
      [2; 5; 1; 2]);
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
           (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
             "spherical"))),
      [3; 5; 1; 2]);
    Tree_t.Inner
     ((Database_db1_symbol_t.Database_db1_body_symbol
        (Database_db1_body_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "A_A"))),
       [4; 5; 1; 2]),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "1.000000")),
        [1; 4; 5; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.785398")),
        [2; 4; 5; 1; 2]);
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.785398")),
        [3; 4; 5; 1; 2])])])
);;

