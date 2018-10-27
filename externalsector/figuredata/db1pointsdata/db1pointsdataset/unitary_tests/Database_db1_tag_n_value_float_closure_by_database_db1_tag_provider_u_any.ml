open Make_test_v;;

testing "Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_v
   Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_u_any.ml";;

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
   #use "Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_u_any.ml";;

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
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_element_symbol
      (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
        (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
          "T_A"))),
   [3; 1; 1; 3])
);;

let tag_d1d_clo = Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_v.provide tag_d1d;;

test_number 3 (
 tag_d1d_clo 
(* : (Database_db1_tag_t.database_db1_tag, float) Doublet_list_t.doublet_list *)
 =
  [((Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000",
     [1; 3; 1; 1; 3]),
    0.1);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.200000",
     [2; 3; 1; 1; 3]),
    0.2);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "-0.200000",
     [3; 3; 1; 1; 3]),
    -0.2)]
);;

(* Triangle T *)

let nam_d1d = "T";;
let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = nam_d1d) tag_d1d_l;;

test_number 4 (
tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
        (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
          "T"))),
   [1; 1; 3])
);;

let tag_d1d_clo = Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_v.provide tag_d1d;;

test_number 5 (
tag_d1d_clo
(* : (Database_db1_tag_t.database_db1_tag, float) Doublet_list_t.doublet_list *)
=
  [((Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000",
     [1; 3; 1; 1; 3]),
    0.1);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.200000",
     [2; 3; 1; 1; 3]),
    0.2);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "-0.200000",
     [3; 3; 1; 1; 3]),
    -0.2);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000",
     [1; 4; 1; 1; 3]),
    0.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000",
     [2; 4; 1; 1; 3]),
    0.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "-0.200000",
     [3; 4; 1; 1; 3]),
    -0.2);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.200000",
     [1; 5; 1; 1; 3]),
    0.2);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000",
     [2; 5; 1; 1; 3]),
    0.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "-0.200000",
     [3; 5; 1; 1; 3]),
    -0.2)]
);;

(* Segment "BC" *)

let nam_d1d = "BC";;
let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = nam_d1d) tag_d1d_l;;

test_number 6 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
        (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
          "BC"))),
   [4; 1; 3])
);;

let tag_d1d_clo = Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_v.provide tag_d1d;;

test_number 7 (
tag_d1d_clo 
(* : (Database_db1_tag_t.database_db1_tag, float) Doublet_list_t.doublet_list *)
=
   [((Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000",
     [1; 4; 4; 1; 3]),
    1.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000",
     [2; 4; 4; 1; 3]),
    0.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000",
     [3; 4; 4; 1; 3]),
    0.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000",
     [1; 5; 4; 1; 3]),
    1.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "90.000000",
     [2; 5; 4; 1; 3]),
    90.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000",
     [3; 5; 4; 1; 3]),
    1.)]
);;

(* Vertex "A" *)

let nam_d1d = "A";;
let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = nam_d1d) tag_d1d_l;;

test_number 8 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_component_symbol
      (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
        (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
          "A"))),
   [5; 1; 3])
);;

let tag_d1d_clo = Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_v.provide tag_d1d;;

test_number 9 (
tag_d1d_clo 
(* : (Database_db1_tag_t.database_db1_tag, float) Doublet_list_t.doublet_list *)
=
   [((Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000",
     [1; 4; 5; 1; 3]),
    1.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398",
     [2; 4; 5; 1; 3]),
    0.785398);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398",
     [3; 4; 5; 1; 3]),
    0.785398)]
);;

(* Vertex "A_A" *)

let nam_d1d = "A_A";;
let tag_d1d = List.find (fun t -> Database_db1_tag_v.string_off t = nam_d1d) tag_d1d_l;;

test_number 10 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_body_symbol
    (Database_db1_body_symbol_t.Database_db1_element_symbol
      (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
        (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
          "A_A"))),
   [4; 5; 1; 3])
);;

let tag_d1d_clo = Database_db1_tag_n_value_float_closure_by_database_db1_tag_provider_v.provide tag_d1d;;

test_number 11 (
tag_d1d_clo 
(* : (Database_db1_tag_t.database_db1_tag, float) Doublet_list_t.doublet_list *)
=
  [((Database_db1_float_symbol_t.Database_db1_float_constructor "1.000000",
     [1; 4; 5; 1; 3]),
    1.);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398",
     [2; 4; 5; 1; 3]),
    0.785398);
   ((Database_db1_float_symbol_t.Database_db1_float_constructor "0.785398",
     [3; 4; 5; 1; 3]),
    0.785398)]
);;


let tag_d1d_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_ddo;;


let tag_d1d_flo_l = List.filter (fun t -> Database_db1_symbol_v.is_database_db1_float_symbol_off_database_db1_symbol (Tag_v.entity_off_tag t)) tag_d1d_l;;

let str_l = List.map Database_db1_tag_v.string_off tag_d1d_flo_l;;

test_number 12 (
str_l 
(* : string list *)
  =
["0.100000"; "0.200000"; "-0.200000"; "0.000000"; "0.000000"; "-0.200000";
 "0.200000"; "0.000000"; "-0.200000"; "1.000000"; "0.500000"; "-2.000000";
 "0.000000"; "0.000000"; "-2.000000"; "2.000000"; "0.000000"; "-2.000000";
 "0.000000"; "0.000000"; "-3.000000"; "0.000000"; "1.000000"; "-3.000000";
 "1.000000"; "0.000000"; "-3.000000"; "1.000000"; "0.000000"; "0.000000";
 "1.000000"; "90.000000"; "1.000000"; "1.000000"; "0.785398"; "0.785398"]
);;

let flo_l = List.map String_v.float_of_string str_l;;

test_number 13 (
flo_l 
(* : float list *)
  =
[0.1; 0.2; -0.2; 0.; 0.; -0.2; 0.2; 0.; -0.2; 1.; 0.5; -2.; 0.; 0.; -2.;
 2.; 0.; -2.; 0.; 0.; -3.; 0.; 1.; -3.; 1.; 0.; -3.; 1.; 0.; 0.; 1.; 90.;
 1.; 1.; 0.785398; 0.785398]
);;
