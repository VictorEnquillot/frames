open Make_test_v;;

testing "Component_what_by_db1_entity_component_tag_provider_v
   Component_what_by_db1_entity_component_tag_provider_u_any.ml";;

(* toplevel 
   #use "Component_what_by_db1_entity_component_tag_provider_u_any.ml";;

*)

Register_v.delete Component_filename_list_by_db1_entity_local_database_tag_register_v.register;;
Register_v.delete Db1_entity_content_list_list_by_db1_entity_local_database_tag_register_v.register;;
Register_v.delete Db1_entity_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Db1_entity_local_database_tag_by_domain_tag_register_v.register;;
Register_v.delete Db1_entity_symbol_by_sole_index_register_v.register;;
Register_v.delete Db1_entity_tag_tree_by_db1_entity_local_database_tag_register_v.register;;
Register_v.delete Filename_by_db1_entity_component_tag_register_v.register;;
Register_v.delete Filename_by_db1_entity_tag_register_v.register;;
Register_v.delete Float_by_db1_entity_float_tag_register_v.register;;
Register_v.delete Son_db1_entity_tag_list_by_father_db1_entity_tag_register_v.register;;
Register_v.delete String_by_db1_entity_component_tag_register_v.register;;
Register_v.delete String_by_db1_entity_local_database_tag_register_v.register;;
Register_v.delete String_by_db1_entity_tag_register_v.register;;
Register_v.delete String_list_by_db1_entity_component_tag_register_v.register;;
Register_v.delete String_list_by_db1_entity_element_tag_register_v.register;;
Register_v.delete String_list_by_db1_entity_tag_register_v.register;;


Parameters_figureset_general_register_v.store_force "trace-store" "true";;
Parameters_figureset_general_register_v.store_force "trace-translate" "true";;
Parameters_figureset_general_register_v.store_force "trace-provide" "true";;
Parameters_figureset_general_register_v.store_force "trace-extract" "true";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Figure, [3])
);;

let tag_eld = Db1_entity_local_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_eld 
(* : Db1_entity_symbol_t.db1_entity_local_database_symbol Tag_t.tag *)
=
  (Db1_entity_local_database_symbol_t.Db1_entity_local_database_constructor
    "db1",
   [1; 3])
);;

(* Full Builder-Tree *)

let tag_den_t = Db1_entity_tag_tree_by_db1_entity_local_database_tag_provider_v.provide tag_eld;;

(* Root node *)

let tag_den_roo = Tree_v.root_node_off_tree tag_den_t;;

test_number 3 (
tag_den_roo 
(* : Db1_entity_symbol_t.db1_entity_symbol *)
=
  (Db1_entity_symbol_t.Db1_entity_local_database_symbol
    (Db1_entity_local_database_symbol_t.Db1_entity_local_database_constructor
      "db1"),
   [1; 3])
);;

(* Root Topson nodes *)

let tag_den_l = Tree_v.topson_node_list_off_tree tag_den_t;;

test_number 4 (
tag_den_l 
(* : Db1_entity_symbol_t.db1_entity_symbol *)
=
  [(Db1_entity_symbol_t.Db1_entity_component_symbol
     (Db1_entity_component_symbol_t.Db1_entity_component_triangle_symbol
       (Db1_entity_component_triangle_symbol_t.Db1_entity_component_triangle_constructor
         "T")),
    [1; 1; 3]);
   (Db1_entity_symbol_t.Db1_entity_component_symbol
     (Db1_entity_component_symbol_t.Db1_entity_component_triangle_symbol
       (Db1_entity_component_triangle_symbol_t.Db1_entity_component_triangle_constructor
         "V")),
    [2; 1; 3]);
   (Db1_entity_symbol_t.Db1_entity_component_symbol
     (Db1_entity_component_symbol_t.Db1_entity_component_triangle_symbol
       (Db1_entity_component_triangle_symbol_t.Db1_entity_component_triangle_constructor
         "U")),
    [3; 1; 3]);
   (Db1_entity_symbol_t.Db1_entity_component_symbol
     (Db1_entity_component_symbol_t.Db1_entity_component_vector_symbol
       (Db1_entity_component_vector_symbol_t.Db1_entity_component_vector_constructor
         "BC")),
    [4; 1; 3]);
   (Db1_entity_symbol_t.Db1_entity_component_symbol
     (Db1_entity_component_symbol_t.Db1_entity_component_vertex_symbol
       (Db1_entity_component_vertex_symbol_t.Db1_entity_component_vertex_constructor
         "A")),
    [5; 1; 3])]
);;

(* Triangle T Builder-Tree *)

let tag_den = (Db1_entity_symbol_t.Db1_entity_component_symbol
        (Db1_entity_component_symbol_t.Db1_entity_component_triangle_symbol
          (Db1_entity_component_triangle_symbol_t.Db1_entity_component_triangle_constructor
            "T")),
       [1; 1; 3]);;

let tag_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = tag_den) tag_den_t;; 

test_number 5 (
tag_den_st 
(* : Db1_entity_symbol_t.db1_entity_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Db1_entity_symbol_t.Db1_entity_component_symbol
      (Db1_entity_component_symbol_t.Db1_entity_component_triangle_symbol
        (Db1_entity_component_triangle_symbol_t.Db1_entity_component_triangle_constructor
          "T")),
     [1; 1; 3]),
   [Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_element_symbol
       (Db1_entity_element_symbol_t.Db1_entity_element_coordinates_units_length_symbol
         (Db1_entity_element_coordinates_units_length_symbol_t.Db1_entity_element_coordinates_units_length_constructor
           "nanometer")),
      [1; 1; 1; 3]);
    Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_element_symbol
       (Db1_entity_element_symbol_t.Db1_entity_element_coordinates_kind_symbol
         (Db1_entity_element_coordinates_kind_symbol_t.Db1_entity_element_coordinates_kind_constructor
           "cartesian")),
      [2; 1; 1; 3]);
    Tree_t.Inner
     ((Db1_entity_symbol_t.Db1_entity_element_symbol
        (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
          (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
            "T_A")),
       [3; 1; 1; 3]),
     [Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "1.000000"),
        [1; 3; 1; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "2.000000"),
        [2; 3; 1; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-2.000000"),
        [3; 3; 1; 1; 3])]);
    Tree_t.Inner
     ((Db1_entity_symbol_t.Db1_entity_element_symbol
        (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
          (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
            "T_B")),
       [4; 1; 1; 3]),
     [Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.000000"),
        [1; 4; 1; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.000000"),
        [2; 4; 1; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-2.000000"),
        [3; 4; 1; 1; 3])]);
    Tree_t.Inner
     ((Db1_entity_symbol_t.Db1_entity_element_symbol
        (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
          (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
            "T_C")),
       [5; 1; 1; 3]),
     [Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "2.000000"),
        [1; 5; 1; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.000000"),
        [2; 5; 1; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-2.000000"),
        [3; 5; 1; 1; 3])])])
);;

(* Triangle V Builder-Tree *)

let tag_den = (Db1_entity_symbol_t.Db1_entity_component_symbol
        (Db1_entity_component_symbol_t.Db1_entity_component_triangle_symbol
          (Db1_entity_component_triangle_symbol_t.Db1_entity_component_triangle_constructor
            "V")),
       [2; 1; 3]);;

let tag_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = tag_den) tag_den_t;; 
test_number 6 (
tag_den_st 
(* : Db1_entity_symbol_t.db1_entity_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Db1_entity_symbol_t.Db1_entity_component_symbol
      (Db1_entity_component_symbol_t.Db1_entity_component_triangle_symbol
        (Db1_entity_component_triangle_symbol_t.Db1_entity_component_triangle_constructor
          "V")),
     [2; 1; 3]),
   [Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_element_symbol
       (Db1_entity_element_symbol_t.Db1_entity_element_coordinates_units_length_symbol
         (Db1_entity_element_coordinates_units_length_symbol_t.Db1_entity_element_coordinates_units_length_constructor
           "nanometer")),
      [1; 2; 1; 3]);
    Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_element_symbol
       (Db1_entity_element_symbol_t.Db1_entity_element_coordinates_kind_symbol
         (Db1_entity_element_coordinates_kind_symbol_t.Db1_entity_element_coordinates_kind_constructor
           "cartesian")),
      [2; 2; 1; 3]);
    Tree_t.Inner
     ((Db1_entity_symbol_t.Db1_entity_element_symbol
        (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
          (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
            "V_A")),
       [3; 2; 1; 3]),
     [Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "1.000000"),
        [1; 3; 2; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.500000"),
        [2; 3; 2; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-2.000000"),
        [3; 3; 2; 1; 3])]);
    Tree_t.Inner
     ((Db1_entity_symbol_t.Db1_entity_element_symbol
        (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
          (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
            "V_B")),
       [4; 2; 1; 3]),
     [Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.000000"),
        [1; 4; 2; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.000000"),
        [2; 4; 2; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-2.000000"),
        [3; 4; 2; 1; 3])]);
    Tree_t.Inner
     ((Db1_entity_symbol_t.Db1_entity_element_symbol
        (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
          (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
            "V_C")),
       [5; 2; 1; 3]),
     [Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "2.000000"),
        [1; 5; 2; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.000000"),
        [2; 5; 2; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-2.000000"),
        [3; 5; 2; 1; 3])])])
);;

(* Vertex A Builder-Tree *)

let tag_den = (Db1_entity_symbol_t.Db1_entity_component_symbol
        (Db1_entity_component_symbol_t.Db1_entity_component_vertex_symbol
          (Db1_entity_component_vertex_symbol_t.Db1_entity_component_vertex_constructor
            "A")),
       [5; 1; 3]);;

let tag_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = tag_den) tag_den_t;; 

test_number 7 (
tag_den_st 
(* : Db1_entity_symbol_t.db1_entity_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Db1_entity_symbol_t.Db1_entity_component_symbol
      (Db1_entity_component_symbol_t.Db1_entity_component_vertex_symbol
        (Db1_entity_component_vertex_symbol_t.Db1_entity_component_vertex_constructor
          "A")),
     [5; 1; 3]),
   [Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_element_symbol
       (Db1_entity_element_symbol_t.Db1_entity_element_coordinates_units_length_symbol
         (Db1_entity_element_coordinates_units_length_symbol_t.Db1_entity_element_coordinates_units_length_constructor
           "meter")),
      [1; 5; 1; 3]);
    Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_element_symbol
       (Db1_entity_element_symbol_t.Db1_entity_element_coordinates_units_angle_symbol
         (Db1_entity_element_coordinates_units_angle_symbol_t.Db1_entity_element_coordinates_units_angle_constructor
           "degree")),
      [2; 5; 1; 3]);
    Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_element_symbol
       (Db1_entity_element_symbol_t.Db1_entity_element_coordinates_kind_symbol
         (Db1_entity_element_coordinates_kind_symbol_t.Db1_entity_element_coordinates_kind_constructor
           "spherical")),
      [3; 5; 1; 3]);
    Tree_t.Inner
     ((Db1_entity_symbol_t.Db1_entity_element_symbol
        (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
          (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
            "A_A")),
       [4; 5; 1; 3]),
     [Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "2.000000"),
        [1; 4; 5; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.000000"),
        [2; 4; 5; 1; 3]);
      Tree_t.Leaf
       (Db1_entity_symbol_t.Db1_entity_float_symbol
         (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-1.000000"),
        [3; 4; 5; 1; 3])])])
);;

(* Vertex T_A *)

let tag_den = 
  (Db1_entity_symbol_t.Db1_entity_element_symbol
     (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
        (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
           "T_A")),
   [3; 1; 1; 3]);;
   
let tag_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = tag_den) tag_den_t;; 

test_number 8 (
 tag_den_st 
(* : Db1_entity_symbol_t.db1_entity_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Db1_entity_symbol_t.Db1_entity_element_symbol
      (Db1_entity_element_symbol_t.Db1_entity_element_vertex_symbol
        (Db1_entity_element_vertex_symbol_t.Db1_entity_element_vertex_constructor
          "T_A")),
     [3; 1; 1; 3]),
   [Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_float_symbol
       (Db1_entity_float_symbol_t.Db1_entity_float_constructor "1.000000"),
      [1; 3; 1; 1; 3]);
    Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_float_symbol
       (Db1_entity_float_symbol_t.Db1_entity_float_constructor "2.000000"),
      [2; 3; 1; 1; 3]);
    Tree_t.Leaf
     (Db1_entity_symbol_t.Db1_entity_float_symbol
       (Db1_entity_float_symbol_t.Db1_entity_float_constructor "-2.000000"),
      [3; 3; 1; 1; 3])])
);;

