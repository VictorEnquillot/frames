open Make_test_v;;

testing "Son_database_db1_tag_list_by_father_database_db1_tag_provider_v with
   Son_database_db1_tag_list_by_father_database_db1_tag_provider_u_any.ml";;

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
   #use "Son_database_db1_tag_list_by_father_database_db1_tag_provider_u_any.ml";;

*)

let nam_dom = "database";;
let sof_dom = "db1";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up nam_dom sof_dom [];;
let tag_ddo = Database_db1_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 1 (
tag_ddo 
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
  (Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_d1d_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_ddo;;

(* Vertex T_A *)

let nam_d1d = "T_A";;
let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = nam_d1d) tag_d1d_l;;

test_number 2 (
(tag_d1d : Database_db1_symbol_t.database_db1_symbol Tag_t.tag ) =
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_element_symbol
      (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
        (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
          "T_A"))),
   [3; 3; 1; 3])
);;

let tag_d1d_clo = Son_database_db1_tag_list_by_father_database_db1_tag_provider_v.provide tag_d1d;;

test_number 3 (
 tag_d1d_clo 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag list *)
  =
  [(Database_db1_symbol_t.Database_db1_closure_symbol
     (Database_db1_closure_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000")),
    [1; 3; 3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_closure_symbol
     (Database_db1_closure_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "0.200000")),
    [2; 3; 3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_closure_symbol
     (Database_db1_closure_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor
         "-0.200000")),
    [3; 3; 3; 1; 3])]
);;

(* Triangle T *)

let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = "T") tag_d1d_l;;

test_number 4 (
(tag_d1d : Database_db1_symbol_t.database_db1_symbol Tag_t.tag ) =
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
        (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
          "T"))),
   [3; 1; 3])
);;

let tag_son_dd1_l = Son_database_db1_tag_list_by_father_database_db1_tag_provider_v.provide tag_d1d;;

test_number 5 (
tag_son_dd1_l
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag list *)
  =
 [(Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "nanometer"))),
    [1; 3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cartesian"))),
    [2; 3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_A"))),
    [3; 3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_B"))),
    [4; 3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_C"))),
    [5; 3; 1; 3])]
);;

(* Segment "BC" *)

let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = "BC") tag_d1d_l;;

test_number 6 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
        (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
          "BC"))),
   [1; 1; 3])
);;

let tag_son_dd1_l = Son_database_db1_tag_list_by_father_database_db1_tag_provider_v.provide tag_d1d;;

test_number 7 (
tag_son_dd1_l 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag list *)
  = 
  [(Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "angstrom"))),
    [1; 1; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
         (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
           "degree"))),
    [2; 1; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cylindrical"))),
    [3; 1; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "BC_B"))),
    [4; 1; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "BC_C"))),
    [5; 1; 1; 3])]
);;

(* Vertex "A" *)

let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = "A") tag_d1d_l;;

test_number 8 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
        (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
          "A"))),
   [6; 1; 3])
);;

let tag_son_dd1_l = Son_database_db1_tag_list_by_father_database_db1_tag_provider_v.provide tag_d1d;;

test_number 9 (
tag_son_dd1_l 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag list *)
  = 
  [(Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "meter"))),
    [1; 6; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
         (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
           "radian"))),
    [2; 6; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "spherical"))),
    [3; 6; 1; 3]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "A_A"))),
    [4; 6; 1; 3])]
);;

(* Vertex "A_A" *)

let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = "A_A") tag_d1d_l;;

test_number 10 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_element_symbol
      (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
        (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
          "A_A"))),
   [4; 6; 1; 3])
);;

let tag_son_dd1_l = Son_database_db1_tag_list_by_father_database_db1_tag_provider_v.provide tag_d1d;;

test_number 11 (
tag_son_dd1_l 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag list *)
  = 
  [(Database_db1_symbol_t.Database_db1_closure_symbol
     (Database_db1_closure_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000")),
    [1; 4; 6; 1; 3]);
   (Database_db1_symbol_t.Database_db1_closure_symbol
     (Database_db1_closure_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398")),
    [2; 4; 6; 1; 3]);
   (Database_db1_symbol_t.Database_db1_closure_symbol
     (Database_db1_closure_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398")),
    [3; 4; 6; 1; 3])]
);;
