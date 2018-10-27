open Make_test_v;;

testing "Elementary_border_parameter_aopef_coefficient_envelope_v with
   Elementary_border_parameter_aopef_coefficient_envelope_u_test_ao.ml";;

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
   #use "Elementary_border_parameter_aopef_coefficient_envelope_u_test_ao.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;

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
          "test_ao"))),
   [6; 5; 7])
);;

(* Argument Elementary_border_parameter_aopef_symbol he s 1 1 *)

let pre_tag_epa (s, i) = Elementary_symbol_v.is_elementary_border_parameter_aopef_symbol_off_elementary_symbol s;;
let pre_tag_epa_sof sof (s, i) = (Elementary_symbol_v.is_elementary_border_parameter_aopef_symbol_off_elementary_symbol s)
    && (Elementary_symbol_v.string_off s = sof);;

let tag_ele_pae_l = List.filter pre_tag_epa tag_ele_l;;

let sof_epa = "he s 1 1";;

let tag_ele_pae_hes11_l = List.filter (pre_tag_epa_sof sof_epa) tag_ele_pae_l;;

let tag_eao_hes11_l = List.map
    (Tag_v.map_entity Elementary_symbol_v.elementary_border_parameter_aopef_symbol_off_elementary_symbol) tag_ele_pae_hes11_l;;

test_number 4 (
(tag_eao_hes11_l :
  Elementary_border_parameter_aopef_symbol_t.elementary_border_parameter_aopef_symbol
  Tag_t.tag list ) =
  [(Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
     (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
       "he s 1 1"),
    [1; 1; 6; 5; 7]);
   (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
     (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
       "he s 1 1"),
    [2; 1; 6; 5; 7])]
);;

let pre_tag_eac_sof sof (s, i) = Elementary_symbol_v.elementary_border_parameter_aopef_coefficient_constructor sof = s;;

let tag_ele_eac = List_v.only_element_of_predicate_off_list (pre_tag_eac_sof sof_epa) tag_ele_pae_l;;

test_number 5 (
( tag_ele_eac : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
          (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
            "he s 1 1")))),
   [2; 1; 6; 5; 7])
);;

open Elementary_border_parameter_aopef_coefficient_envelope_v;;

let tag_eac = Tag_v.map_entity Elementary_symbol_v.elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol tag_ele_eac;;

let con_eac = 
    Elementary_border_parameter_aopef_coefficient_container_v.container_of_tag 
      tag_eac;;

test_number 6 (
(con_eac :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol
  Tag_t.tag Uno_t.uno ) =
  (Elementary_fence_units_actual_length_symbol_t.Bohr, [1; 2; 1; 6; 5; 7])
);;

let mle_eac = measure_actual_length_of_tag tag_eac;;

test_number 7 (
( mle_eac : Measure_actual_length_t.measure_actual_length ) =
(0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let tag_eul = elementary_fence_units_actual_length_tag_of_tag tag_eac;;

test_number 8 (
(tag_eul :
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol ) =
Elementary_fence_units_actual_length_symbol_t.Bohr
);;

let env_eac = envelope_of_tag tag_eac;;

test_number 9 (
(env_eac : Measure_actual_length_t.measure_actual_length Uno_t.uno Uno_t.uno ) =
  (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let tml_eac_t = tagged_measure_actual_length_triplet_of_tag tag_eac;;

test_number 10 (
(tml_eac_t :  
   (Elementary_border_parameter_aopef_coefficient_symbol_t.elementary_border_parameter_aopef_coefficient_symbol
      Tag_t.tag, float,
    Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
   Triplet_t.triplet ) =
((Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
    "he s 1 1",
  [2; 1; 6; 5; 7]),
 0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let tpl_eac_d = tagged_readee_doublet_of_tag tag_eac;;

test_number 11 (
(tpl_eac_d :
  (Elementary_border_parameter_aopef_coefficient_symbol_t.elementary_border_parameter_aopef_coefficient_symbol
   Tag_t.tag, Readee_t.readee)
  Doublet_t.doublet ) =
  ((Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
     "he s 1 1",
    [2; 1; 6; 5; 7]),
   Readee_t.Readee_units
    (Measure_t.Measure_actual_length
      (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)))
);;

let flo_eac = float_of_tag tag_eac;;

test_number 12 (
(flo_eac : float ) = 
 0.17523
);; 

let tag_eul_eac = elementary_fence_units_actual_length_tag_of_tag tag_eac;;

test_number 13 (
(tag_eul_eac :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol ) =
  Elementary_fence_units_actual_length_symbol_t.Bohr
);;

let tex_eac = text_of_tag tag_eac ;;

test_number 14 (
(tex_eac : string ) = 
"coefficient 0.175230 bohr"
);;
