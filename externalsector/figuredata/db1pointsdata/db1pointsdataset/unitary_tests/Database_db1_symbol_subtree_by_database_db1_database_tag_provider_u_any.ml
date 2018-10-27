open Make_test_v;;

testing "Database_db1_symbol_subtree_by_database_db1_database_tag_provider_v
   Database_db1_symbol_subtree_by_database_db1_database_tag_provider_u_any.ml";;


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
   #use "Database_db1_symbol_subtree_by_database_db1_database_tag_provider_u_any.ml";;

*)

let tag_ddo = Database_db1_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_ddo
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
(Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_ddd = Database_db1_database_tag_by_unit_provider_v.provide ();;
test_number 2 (
 tag_ddd
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
   [1; 3])
);;

(* Full Builder-Tree *)
 let con_dd1_doll = 
    Database_db1_content_list_list_by_database_db1_database_tag_provider_v.provide 
      tag_ddd 
 ;;
  
(* Components Tree list *)
  let sym_dd1_com_tl = List.map 
      Database_db1_symbol_subtree_by_database_db1_database_tag_provider_v.database_db1_component_symbol_tree_of_database_db1_content_list
      con_dd1_doll
 ;;
  
(* Full Tree *)

  let sym_dld = Tag_v.entity_off_tag tag_ddd;;
  let sym_dd1_dld =                                          (* coerce up *) 
    Database_db1_symbol_v.database_db1_symbol_of_database_db1_database_symbol 
      sym_dld 
 ;;

let sym_dd1_t = Tree_v.make_of_node sym_dd1_dld sym_dd1_com_tl;;

let sym_dd1_t = Database_db1_symbol_subtree_by_database_db1_database_tag_provider_v.provide tag_ddd;;

(* Root node *)

let sym_dd1_roo = Tree_v.root_node_off_tree sym_dd1_t;;

test_number 3 (
sym_dd1_roo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  Database_db1_symbol_t.Database_db1_context_symbol
   (Database_db1_context_symbol_t.Database_db1_database_symbol
     (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"))
);;

(* Root Topson nodes *)

let sym_dd1_l = Tree_v.topson_node_list_off_tree sym_dd1_t;;

test_number 4 (
( sym_dd1_l : Database_db1_symbol_t.database_db1_symbol list ) =
  [Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
        (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
          "BC")));
   Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
        (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
          "S")));
   Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
        (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
          "T")));
   Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
        (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
          "V")));
   Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
        (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
          "U")));
   Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
        (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
          "A")))]
);;

(* Triangle "T" Builder-Tree *)

let sym_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_symbol_v.string_off t = "T") sym_dd1_t;; 

test_number 5 (
sym_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
         (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "T"))),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
           (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
             "nanometer"))));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
           (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
             "cartesian"))));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "T_A"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.100000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.200000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-0.200000")))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "T_B"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-0.200000")))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "T_C"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.200000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-0.200000")))])])
);;

(* Triangle "V" Builder-Tree *)

let sym_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_symbol_v.string_off t = "V") sym_dd1_t;; 

test_number 6 (
sym_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
         (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "V"))),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
           (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
             "nanometer"))));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
           (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
             "cartesian"))));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "V_A"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "1.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.500000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-2.000000")))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "V_B"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-2.000000")))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "V_C"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "2.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "-2.000000")))])])
);;

(* Segment BC Builder-Tree *)

let sym_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_symbol_v.string_off t = "BC") sym_dd1_t;; 

test_number 7 (
sym_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
         (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
           "BC"))),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
           (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
             "angstrom"))));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
           (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
             "degree"))));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
           (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
             "cylindrical"))));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "BC_B"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "1.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.000000")))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "BC_C"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "1.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "90.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "1.000000")))])])
);;

(* Vertex A Builder-Tree *)

let sym_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_symbol_v.string_off t = "A") sym_dd1_t;; 

test_number 8 (
sym_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
         (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
           "A"))),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
           (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
             "meter"))));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
           (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
             "radian"))));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
           (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
             "spherical"))));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_body_symbol
       (Database_db1_body_symbol_t.Database_db1_element_symbol
         (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
           (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
             "A_A"))),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "1.000000")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.785398")));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_closure_symbol
         (Database_db1_closure_symbol_t.Database_db1_float_symbol
           (Database_db1_float_symbol_t.Database_db1_float_constructor
             "0.785398")))])])
);;

(* Vertex T_A Builder-Tree *)

let sym_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_symbol_v.string_off t = "T_A") sym_dd1_t;; 

test_number 9 (
 sym_dd1_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =  
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_A"))),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_closure_symbol
       (Database_db1_closure_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor
           "0.100000")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_closure_symbol
       (Database_db1_closure_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor
           "0.200000")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_closure_symbol
       (Database_db1_closure_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor
           "-0.200000")))])
);;

(* Triangle V Builder-Tree *)

let sym_dd1_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> Database_db1_symbol_v.string_off t = "V") sym_dd1_t;; 

let wha_coo = 
    Tree_v.node_find_of_node_predicate_off_tree
      Database_db1_symbol_v.is_database_db1_element_coordinates_kind_constructor 
      sym_dd1_st;;

test_number 10 (
 wha_coo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  Database_db1_symbol_t.Database_db1_body_symbol
   (Database_db1_body_symbol_t.Database_db1_element_symbol
     (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
       (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
         "cartesian")))
);;
