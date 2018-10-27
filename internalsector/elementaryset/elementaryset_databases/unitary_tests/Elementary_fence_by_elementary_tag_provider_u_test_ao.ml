open Make_test_v;;

testing "Elementary_fence_by_elementary_tag_provider_v with
   Elementary_fence_by_elementary_tag_provider_u_test_ao.ml";;

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
   #use "Elementary_fence_by_elementary_tag_provider_u_test_ao.ml";;

*)

let nam_dbo = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo) ;;

let pre_tag_eta_sof sof (s, i) = (Elementary_symbol_v.elementary_body_parameter_tuple_aopef_constructor sof = s);; 

(* Argument Tag_ele_eta "he s 1 1" *)

let sof_eta = "he s 1 1";;
let tag_ele_eta = List_v.only_element_of_predicate_off_list (pre_tag_eta_sof sof_eta) tag_ele_l;;

test_number 1 (
( tag_ele_eta : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 1"))),
   [1; 6; 5; 7])
);;

open Elementary_fence_by_elementary_tag_provider_v;;

let tag_ele = tag_ele_eta;;
let tag_ele_st = Elementary_tag_subtree_by_elementary_tag_provider_v.provide tag_ele;;

let bor_ele = Elementary_border_by_elementary_tag_provider_v.provide tag_ele;;

test_number 2 (
(bor_ele : Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_parameter_symbol
     (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
       (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
         (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
           "he s 1 1"))),
    [1; 1; 6; 5; 7]);
   (Elementary_border_symbol_t.Elementary_border_parameter_symbol
     (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
       (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
         (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
           "he s 1 1"))),
    [2; 1; 6; 5; 7])]
);;

let soi_bor_l = List.map Tag_v.sole_index_off_tag bor_ele;;

let is_father_of_sole_index_son_of_sole_index_father soi_son soi_fat =
  soi_fat = List.tl soi_son
;;

let is_son_of_sole_index_son_of_sole_index_father soi_son soi_fat =
  soi_fat = List.tl soi_son
;;

let soi_son_l soi_fat = List.filter (fun (s, i) -> is_son_of_sole_index_son_of_sole_index_father i soi_fat ) tag_ele_l;;

let tag_son_l = List.flatten (List.map soi_son_l soi_bor_l);;

test_number 3 (
(tag_son_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 1; 1; 6; 5; 7]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 2; 1; 6; 5; 7])]
);;

test_number 4 (
tag_son_l = provide tag_ele
);; 
