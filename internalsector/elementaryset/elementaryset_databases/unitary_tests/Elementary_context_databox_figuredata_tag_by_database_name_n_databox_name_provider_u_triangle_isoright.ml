  open Make_test_v;;

testing "Elementary_context_databox_figuredata_tag_by_databox_name_provider with
   Elementary_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_u_triangle_isoright.ml";;

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
   #use "Elementary_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_u_triangle_isoright.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "triangle_isoright";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

open Elementary_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_v;;

let nam_dom = "elementary";;
let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom;;

test_number 1 (
(idx_dom : int ) = 
7
);;

let soi_dfi_fig = Global_databox_sole_index_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

test_number 2 (
(soi_dfi_fig : int list ) = 
[6; 1; 8]
);;

let soi_dfi_ele = List_v.replace_last_element_of_element_of_list idx_dom soi_dfi_fig;;

test_number 3 (
(soi_dfi_ele : int list ) = 
[6; 1; 7]
);;

let sym_edf = 
  Elementary_context_databox_figuredata_symbol_v.elementary_context_databox_figuredata_constructor nam_dbo 
;;

test_number 4 (
( sym_edf : Elementary_context_databox_figuredata_symbol_t.elementary_context_databox_figuredata_symbol ) =
  Elementary_context_databox_figuredata_symbol_t.Elementary_context_databox_figuredata_constructor
   "triangle_isoright"
);;

let tag_edf = provide (nam_dba, nam_dbo);;

test_number 5 (
(tag_edf :
  Elementary_context_databox_figuredata_symbol_t.elementary_context_databox_figuredata_symbol
  Tag_t.tag ) =
  (Elementary_context_databox_figuredata_symbol_t.Elementary_context_databox_figuredata_constructor
    "triangle_isoright",
   [6; 1; 7])
);;

let tag_edf =  Tag_v.make sym_edf soi_dfi_ele;;

test_number 6 (
tag_edf = provide (nam_dba, nam_dbo)
);;
