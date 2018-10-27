open Make_test_v;;

testing "Db1figure_float_tag_closure_from_elementary_body_coordinate_tuple_tag_translator_v with
   Db1figure_float_tag_closure_from_elementary_body_coordinate_tuple_tag_translator_u_any.ml";;

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
   #use "Db1figure_float_tag_closure_from_elementary_body_coordinate_tuple_tag_translator_u_any.ml";;

*)

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_edo 
(* : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag *)
=
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary", [4])
);;

let tag_ddo = Db1figure_domain_tag_by_unit_provider_v.provide ();;

test_number 2 (
tag_ddo
(* : Db1figure_domain_symbol_t.db1figure_domain_symbol Tag_t.tag *)
=
(Db1figure_domain_symbol_t.Db1figure_domain_constructor, [3])
);;


let tag_ele_l = Elementary_tag_all_list_by_elementary_context_domain_tag_provider_v.provide tag_edo;;

let tag_dd1_l = Db1figure_tag_all_list_by_db1figure_domain_tag_provider_v.provide tag_ddo;;

(* Vertex A_A *)

let nam_ver = "A_A";;
let tag_ele = List.find (fun t -> Elementary_tag_v.string_off t = nam_ver) tag_ele_l;;

test_number 3 (
tag_ele 
(* : Elementary_symbol_t.elementary_symbol Tag_t.tag *)
  =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
        (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol
          (Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_constructor
            "A_A")))),
   [12; 1; 4])
);;

let soi_ele = Tag_v.sole_index_off_tag tag_ele;;
let tag_ctu =
    Elementary_any_category_by_sole_index_extractor_v.coordinate_tuple_tag_off_sole_index 
      soi_ele;;

let tag_dd1_ver = List.find (fun t -> Db1figure_tag_v.string_off t = nam_ver) tag_dd1_l;;

test_number 4 (
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

let tag_uni_dfe = Elementary_fence_units_actual_tag_fence_by_elementary_tag_provider_v.provide tag_ele;;

test_number 5 (
tag_uni_dfe 
(* : Elementary_fence_units_symbol_t.units_symbol Tag_t.tag list *)
=
  [(Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_t.Meter,
    [1; 1; 12; 1; 4]);
   (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol Elementary_fence_units_angle_symbol_t.Radian,
    [1; 2; 12; 1; 4]);
   (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol Elementary_fence_units_angle_symbol_t.Radian,
    [1; 3; 12; 1; 4])]
);;

let tag_flo_clo = Db1figure_tag_float_closure_by_db1figure_tag_provider_v.provide tag_dd1_ver;;

test_number 6 (
tag_flo_clo 
(* : Db1figure_symbol_t.db1figure_symbol Tag_t.tag list *)
=
  [(Db1figure_float_symbol_t.Db1figure_float_constructor "1.000000",
    [1; 4; 5; 1; 3]);
   (Db1figure_float_symbol_t.Db1figure_float_constructor "0.785398",
    [2; 4; 5; 1; 3]);
   (Db1figure_float_symbol_t.Db1figure_float_constructor "0.785398",
    [3; 4; 5; 1; 3])]
);;


