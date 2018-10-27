open Make_test_v;;

testing "Elementary_any_category_by_sole_index_extractor_v with
   Elementary_any_category_by_sole_index_extractor_u_any.ml";;

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
   #use "Elementary_any_category_by_sole_index_extractor_u_any.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

open Elementary_any_category_by_sole_index_extractor_v;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let tag_any = List.find (fun (s, i) -> Elementary_symbol_v.string_off s = "h s 1 1") tag_ele_l;;

test_number 1 (
( tag_any : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "h s 1 1"))),
   [1; 4; 5; 7])
);;

let soi_any = Tag_v.sole_index_off_tag tag_any;;

test_number 2 (
(soi_any : Sole_index_t.sole_index ) = 
[1; 4; 5; 7]
);;

let str_pre = "is_elementary_context_domain_symbol_off_elementary_symbol";;
let des_pre = predicate_of_string str_pre;;

let soi_n_des_dol = 
    sole_index_n_elementary_symbol_list_of_string_predicate 
      str_pre;;

let soi_dom = sole_index_of_string_predicate_off_sole_index "is_elementary_context_domain_symbol_off_elementary_symbol" soi_any;; 

let boo = soi_dom = elementary_context_domain_sole_index_off_sole_index soi_any;;

test_number 3 (
boo
);;

let sof_dom = elementary_context_domain_string_off_off_sole_index soi_dom;; 

test_number 4 (
( sof_dom : string ) = 
"elementary"
);;

let nam_dna = elementary_context_databox_string_off_off_sole_index soi_any;;

test_number 5 (
( nam_dna : string ) = 
"cc_pvtz"
);;
