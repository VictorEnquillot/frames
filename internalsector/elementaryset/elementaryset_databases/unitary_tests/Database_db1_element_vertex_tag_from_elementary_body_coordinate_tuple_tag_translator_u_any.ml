open Make_test_v;;

testing "Db1figure_element_vertex_tag_from_elementary_body_coordinate_tuple_tag_translator_v with
   Db1figure_element_vertex_tag_from_elementary_body_coordinate_tuple_tag_translator_u_any.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;













(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1figure_element_vertex_tag_from_elementary_body_coordinate_tuple_tag_translator_u_any.ml";;

*)

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_edo 
(* : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag *)
=
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary", [4])
);;

let tag_ele_l = Elementary_tag_all_list_by_elementary_context_domain_tag_provider_v.provide tag_edo;;

(* Vertex T_A *)

let nam_ele = "T_A";;
let tag_ele_ctu = List.find (fun t -> Elementary_tag_v.string_off t = nam_ele) tag_ele_l;;

let tag_ctu = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_symbol_off_elementary_symbol tag_ele_ctu;;

test_number 2 (
tag_ctu
(* : Elementary_body_coordinate_tuple_symbol_t.coordinate_tuple_symbol Tag_t.tag *)
=
  (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
    (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
      (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
        "T_A")),
   [1; 1; 4])
);;

let tag_dd1_ver = Db1figure_as_element_vertex_tag_from_elementary_body_coordinate_tuple_tag_translator_v.translate tag_ctu;;

test_number 3 (
tag_dd1_ver 
(* : Db1figure_symbol_t.db1figure_symbol Tag_t.tag *)
=
  (Db1figure_symbol_t.Db1figure_body_symbol
    (Db1figure_body_symbol_t.Db1figure_element_symbol
      (Db1figure_element_symbol_t.Db1figure_element_vertex_symbol
        (Db1figure_element_vertex_symbol_t.Db1figure_element_vertex_constructor
          "T_A"))),
   [3; 1; 1; 3])
);;

let tag_ver = Db1figure_element_vertex_tag_from_elementary_body_coordinate_tuple_tag_translator_v.translate tag_ctu;;

test_number 4 (
 tag_ver 
(* : Db1figure_element_vertex_symbol_t.db1figure_element_vertex_symbol
  Tag_t.tag *)
=
  (Db1figure_element_vertex_symbol_t.Db1figure_element_vertex_constructor
    "T_A",
   [3; 1; 1; 3])
);;

(* Vertex A_A *)

let nam_ele = "A_A";;
let tag_ele = List.find (fun t -> Elementary_tag_v.string_off t = nam_ele) tag_ele_l;;

let tag_ele_ctu = List.find (fun t -> Elementary_tag_v.string_off t = nam_ele) tag_ele_l;;

let tag_ctu = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_symbol_off_elementary_symbol tag_ele_ctu;;

test_number 5 (
tag_ctu
(* : Elementary_body_coordinate_tuple_symbol_t.coordinate_tuple_symbol Tag_t.tag *)
=
  (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
    (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol
      (Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_constructor
        "A_A")),
   [12; 1; 4])
);;

let tag_dd1_ver = Db1figure_as_element_vertex_tag_from_elementary_body_coordinate_tuple_tag_translator_v.translate tag_ctu;;

test_number 6 (
tag_dd1_ver 
(* : Db1figure_symbol_t.db1figure_symbol Tag_t.tag *)
=
   (Db1figure_symbol_t.Db1figure_body_symbol
    (Db1figure_body_symbol_t.Db1figure_element_symbol
      (Db1figure_element_symbol_t.Db1figure_element_vertex_symbol
        (Db1figure_element_vertex_symbol_t.Db1figure_element_vertex_constructor
          "A_A"))),
   [4; 5; 1; 3])
);;

let tag_ver = Db1figure_element_vertex_tag_from_elementary_body_coordinate_tuple_tag_translator_v.translate tag_ctu;;

test_number 7 (
 tag_ver 
(* : Db1figure_element_vertex_symbol_t.db1figure_element_vertex_symbol
  Tag_t.tag *)
=
  (Db1figure_element_vertex_symbol_t.Db1figure_element_vertex_constructor
    "A_A",
   [4; 5; 1; 3])
);;
