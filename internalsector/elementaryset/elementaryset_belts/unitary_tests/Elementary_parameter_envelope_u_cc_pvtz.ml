open Make_test_v;;

testing "Elementary_parameter_envelope_v with
   Elementary_parameter_envelope_u_cc_pvtz.ml";;

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
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;








(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_parameter_envelope_u_cc_pvtz.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;

(* Context *) 
let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary",
   [7])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem")),
   [5; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_dbo)
	&&
      (Elementary_symbol_v.is_elementary_context_databox_skeletondata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "cc_pvtz"))),
   [4; 5; 7])
);;

open Elementary_parameter_envelope_v;;

(* Argument Elementary_parameter_symbol ne 2 p 1 *)

let tag_ele_par_l = List.filter 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_parameter_symbol_off_elementary_symbol s)
    tag_ele_l;;

let tag_ele_par_nep21_l = List.filter
    (fun (s, i) -> Elementary_symbol_v.string_off s = "ne p 2 1")
    tag_ele_par_l;;

let tag_epa_nep21_l = List.map
    (Tag_v.map_entity Elementary_symbol_v.elementary_parameter_symbol_off_elementary_symbol) tag_ele_par_nep21_l;;

test_number 4 (
(tag_epa_nep21_l :
  Elementary_parameter_symbol_t.elementary_parameter_symbol Tag_t.tag list ) =
  [(Elementary_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
       (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
         "ne p 2 1")),
    [1; 156; 4; 5; 7]);
   (Elementary_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
       (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
         "ne p 2 1")),
    [2; 156; 4; 5; 7])]
);;

let tag_epa = List.nth tag_epa_nep21_l 1;;

let env_epa = build tag_epa;;

test_number 5 (
( env_epa : Elementary_parameter_envelope_t.elementary_parameter_envelope ) =
  Elementary_parameter_envelope_t.Elementary_body_parameter_tuple_aopef_envelope
   (Elementary_body_parameter_tuple_aopef_envelope_t.Elementary_border_parameter_aopef_coefficient_envelope
     [(0.017151,
       Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Bohr)])
);;

let env_epa_t = envelope_as_tuple tag_epa;;

test_number 6 (
( env_epa_t : Measure_t.measure list Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   [(0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let cun_epa_l = closure_units_as_list tag_epa;;

test_number 7 (
( cun_epa_l : Measure_t.measure list ) =
  [(0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let cun_epa_t = closure_units_as_tuple tag_epa;;

test_number 8 (
(cun_epa_t : Measure_t.measure Tuple_t.tuple) =
Tuple_t.Uno
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let cun_epa_tl = closure_units_as_tuple_list tag_epa;;

test_number 9 (
(cun_epa_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let mea_u = measure_uno_of_elementary_parameter_tag tag_epa;;

test_number 10 (
(mea_u : Measure_t.measure Uno_t.uno ) =
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_t = measure_tuple_of_elementary_parameter_tag tag_epa;;

test_number 11 (
(mea_t : Measure_t.measure Tuple_t.tuple ) =
Tuple_t.Uno
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_tl = measure_tuple_list_of_elementary_parameter_tag tag_epa;;

test_number 12 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let mea_l = measure_list_of_elementary_parameter_tag tag_epa;;

test_number 13 (
(mea_l : Measure_t.measure list ) =
  [(0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)]
);; 

let bou_u = boundary_uno tag_epa;;

test_number 14 (
(bou_u : Boundary_t.boundary Uno_t.uno ) =
  Boundary_t.Boundary_units
   (0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let bou_l = boundary_list tag_epa;;

test_number 15 (
(bou_l : Boundary_t.boundary Uno_t.uno list ) =
  [Boundary_t.Boundary_units
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;
