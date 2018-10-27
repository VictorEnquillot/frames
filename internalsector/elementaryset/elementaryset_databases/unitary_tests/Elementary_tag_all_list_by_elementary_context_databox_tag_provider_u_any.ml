open Make_test_v;;

testing "Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v with
   Elementary_tag_all_list_by_elementary_context_databox_tag_provider_u_any.ml";;

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
   #use "Elementary_tag_all_list_by_elementary_context_databox_tag_provider_u_any.ml";;

*)

let nam_dna = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

open Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v;;

let tag_eba = Elementary_context_databox_skeletondata_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
( tag_eba :
  Elementary_context_databox_skeletondata_symbol_t.elementary_context_databox_skeletondata_symbol Tag_t.tag ) =
  (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor "lanl2dz",
   [5; 5; 7])

);;

let tag_edf = Tag_v.map_entity Elementary_context_databox_symbol_v.elementary_context_databox_symbol_of_elementary_context_databox_skeletondata_symbol tag_eba;;

test_number 2 (
(tag_edf :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
    (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor "lanl2dz"),
   [5; 5; 7])
);;

let tag_ele_t = Elementary_tag_tree_by_elementary_context_databox_tag_provider_v.provide tag_edf;;

let tag_ele_tso_l = Tree_v.root_topson_node_list_off_tree tag_ele_t;;

test_number 3 (
(tag_ele_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
 [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
    [7]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem")),
    [5; 7])]
);;

let tag_ele_l = Tree_v.node_list_off_tree tag_ele_t;;
 
let tag_ele_top_l = List.filter 
    (fun (s, i) -> 
      (List.length i <= 4) && (List.hd i <= 3)
    ) 
    tag_ele_l;;

test_number 4 (
(tag_ele_top_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) = 
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "ne s 1 1"))),
    [1; 5; 5; 7]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "ne s 1 2"))),
    [2; 5; 5; 7]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "ne s 1 3"))),
    [3; 5; 5; 7])]
);;


test_number 5 (
tag_ele_l = provide tag_edf
);;

