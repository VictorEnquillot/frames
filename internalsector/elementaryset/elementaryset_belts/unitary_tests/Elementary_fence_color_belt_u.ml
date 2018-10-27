open Make_test_v;;

testing "Elementary_fence_color_belt_v with
   Elementary_fence_color_belt_u.ml";;

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

(* toplevel 
   #use "Elementary_fence_color_belt_u.ml";;

*)

let nam_mod = "Elementary_fence_color_belt_v";;

let tag_efc = (Elementary_fence_color_symbol_t.Yellow, [9; 9; 9; 9; 9]) ;; (* Fake *)

let tag_ele_col = Elementary_fence_color_tag_v.elementary_tag_of_elementary_fence_color_tag tag_efc;;

test_number 1 (
(tag_ele_col : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_color_symbol
      Elementary_fence_color_symbol_t.Yellow),
   [9; 9; 9; 9; 9])
);;

open Elementary_fence_color_belt_v;;

let bel_efc = belt_of_tag tag_efc;;

test_number 2 (
(bel_efc :
  (Elementary_fence_color_symbol_t.elementary_fence_color_symbol * int list)
  Uno_t.uno ) = 
(Elementary_fence_color_symbol_t.Yellow, [9; 9; 9; 9; 9])
);;

let rea_efc = readee_off_belt bel_efc;;

test_number 3 (
(rea_efc : Readee_t.readee ) =
  Readee_t.Readee_color Elementary_fence_color_symbol_t.Yellow
);;

let clo_efc = closure_off_belt bel_efc;;

test_number 4 (
(clo_efc : Readee_t.readee list ) =
  [Readee_t.Readee_color Elementary_fence_color_symbol_t.Yellow]
);;

test_number 5 (
clo_efc = closure_of_tag tag_efc
);;

