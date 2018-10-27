open Make_test_v;;

testing "Elementary_parameter_tuple_aopef_envelope_v with
   Elementary_parameter_tuple_aopef_envelope_u_cc_pvtz.ml";;

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
   #use "Elementary_parameter_tuple_aopef_envelope_u_cc_pvtz.ml";;

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

open Elementary_parameter_tuple_aopef_envelope_v;;

(* Argument Elementary_parameter_tuple_aopef_symbol ne 2 p 1 *)

let pre_tag_pta (s, i) = Elementary_symbol_v.is_elementary_parameter_tuple_aopef_symbol_off_elementary_symbol s;;
let pre_tag_pta_sof sof (s, i) = (Elementary_symbol_v.is_elementary_parameter_tuple_aopef_symbol_off_elementary_symbol s)
    && (Elementary_symbol_v.string_off s = sof);;

let tag_ele_pta_l = List.filter pre_tag_pta tag_ele_l;;

let sof_pta = "ne p 2 1";;

let tag_ele_pta_nep21_l = List.filter (pre_tag_pta_sof sof_pta) tag_ele_pta_l;;

let tag_pta_nep21_l = List.map
    (Tag_v.map_entity Elementary_symbol_v.elementary_parameter_tuple_aopef_symbol_off_elementary_symbol) tag_ele_pta_nep21_l;;

test_number 4 (
(tag_pta_nep21_l :
  Elementary_parameter_tuple_aopef_symbol_t.elementary_parameter_tuple_aopef_symbol
  Tag_t.tag list ) =
  [(Elementary_parameter_tuple_aopef_symbol_t.Elementary_parameter_tuple_aopef_constructor
     "ne p 2 1",
    [156; 4; 5; 7])]
);;

let tag_ele_pta = List_v.only_element_of_predicate_off_list (pre_tag_pta_sof sof_pta) tag_ele_pta_l;;

test_number 5 (
( tag_ele_pta : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_parameter_tuple_symbol
      (Elementary_parameter_tuple_symbol_t.Elementary_parameter_tuple_aopef_symbol
        (Elementary_parameter_tuple_aopef_symbol_t.Elementary_parameter_tuple_aopef_constructor
          "ne p 2 1"))),
   [156; 4; 5; 7])
);;

let tag_pta = Tag_v.map_entity Elementary_symbol_v.elementary_parameter_tuple_aopef_symbol_off_elementary_symbol tag_ele_pta;;
let env_pta = build tag_pta;;

test_number 6 (
( env_pta : Measure_t.measure list Duo_t.duo ) =
  ([(54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)],
   [(0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)])
);;

let tag_ele_l = Elementary_parameter_tuple_aopef_container_v.deepfence_as_list tag_pta;;

test_number 7 (
(tag_ele_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 1; 156; 4; 5; 7]);
   (Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 2; 156; 4; 5; 7])]
);;

let tag_eun_l = List.map Elementary_fence_units_actual_tag_v.elementary_fence_units_actual_tag_off_elementary_tag tag_ele_l ;;

test_number 8 (
(tag_eun_l :
  Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr,
    [1; 1; 156; 4; 5; 7]);
   (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr,
    [1; 2; 156; 4; 5; 7])]
);;

let clo_uni = List.flatten (List.map Elementary_fence_units_belt_v.closure_units_as_list tag_eun_l);;

test_number 9 (
(clo_uni : Measure_t.measure list ) =
[(54.7,
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr);
 (0.017151,
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

test_number 10 (
clo_uni = closure_units_as_list tag_pta
);;

let cun_pta_t = closure_units_as_tuple tag_pta;;

test_number 11 (
(cun_pta_t : Measure_t.measure Tuple_t.tuple) =
  Tuple_t.Duo
   ((54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr),
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

let cun_pta_tl = closure_units_as_tuple_list tag_pta;;

test_number 12 (
(cun_pta_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((54.7,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr),
     (0.017151,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr))]
);;

let mea_d = measure_duo_of_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 13 (
( mea_d : Measure_t.measure Duo_t.duo ) =
  ((54.7,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr),
   (0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

let mea_t = measure_tuple_of_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 14 (
( mea_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Duo
   ((54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr),
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

let mea_tl = measure_tuple_list_of_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 15 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((54.7,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr),
     (0.017151,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr))]
);;

let mea_l = measure_list_of_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 16 (
(mea_l : Measure_t.measure list ) =
  [(54.7,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr);
   (0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)]
);; 

let env_pac = elementary_border_parameter_aopef_coefficient_envelope_off_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 17 (
( env_pac :
  Elementary_body_parameter_tuple_aopef_envelope_t.elementary_body_parameter_tuple_aopef_envelope ) =
  Elementary_body_parameter_tuple_aopef_envelope_t.Elementary_border_parameter_aopef_exponent_envelope
   [(54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let mea_pac = elementary_border_parameter_aopef_coefficient_measure_actual_off_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 18 (
(mea_pac : Measure_t.measure ) =
  (54.7,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let env_pae = elementary_border_parameter_aopef_exponent_envelope_off_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 19 ( 
(env_pae :
  Elementary_body_parameter_tuple_aopef_envelope_t.elementary_body_parameter_tuple_aopef_envelope ) =
  Elementary_body_parameter_tuple_aopef_envelope_t.Elementary_border_parameter_aopef_coefficient_envelope
   [(0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let env_pae = elementary_border_parameter_aopef_exponent_measure_actual_off_elementary_parameter_tuple_aopef_tag tag_pta;;

test_number 20 (
(env_pae : Measure_t.measure ) =
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;
