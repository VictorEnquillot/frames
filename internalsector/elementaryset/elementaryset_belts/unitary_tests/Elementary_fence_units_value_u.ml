open Make_test_v;;

testing "Elementary_fence_units_value_v with
   Elementary_fence_units_value_u.ml";;

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
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-trace" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_fence_units_value_u.ml";;

*)

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

let tag_ele_ule_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_symbol s) tag_ele_l;;

(* First Elementary_fence_units_actual_length Tag *)

let tag_ele_ule = List.nth tag_ele_ule_l 0;;

test_number 2 (
(tag_ele_ule : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_closure_symbol
    (Elementary_closure_symbol_t.Elementary_fence_units_actual_symbol
      (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Nanometer)),
   [1; 1; 1; 1; 4])
);;

let tag_eul = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_symbol tag_ele_ule;;

test_number 3 (
(tag_eul : Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol Tag_t.tag ) =
  (Elementary_fence_units_actual_length_symbol_t.Nanometer, [1; 1; 1; 1; 4])
);;

let tag_ele_ule_st = Tree_v.subtree_of_node_predicate_off_tree (fun (s, i) -> Elementary_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_symbol s) tag_ele_t;;

test_number 4 (
(tag_ele_ule_st : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Nanometer)),
    [1; 1; 1; 1; 4])
);;

let tag_eun = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_actual_symbol_off_elementary_symbol tag_ele_ule;;

test_number 5 (
(tag_eun : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag ) =
  (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Nanometer,
   [1; 1; 1; 1; 4])
);;

let can_eun = Elementary_fence_units_value_v.value_of_tag tag_eun;;

test_number 6 (
(can_eun :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet Uno_t.uno ) =
  (0.1,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Nanometer)

);;

let closure_as_tuple tag_eun =
  Measure_list_by_elementary_fence_units_actual_tag_provider_v.provide tag_eun
;;

test_number 7 (
(clo_eun : (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
    Doublet_t.doublet list ) =
[(0.1,
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
   Elementary_fence_units_actual_length_symbol_t.Nanometer)]
;;
