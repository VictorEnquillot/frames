open Make_test_v;;

testing "Elementary_context_databox_tag_by_parameters_general_provider with
   Elementary_context_databox_tag_by_parameters_general_provider_u_any.ml";;

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
   #use "Elementary_context_databox_tag_by_parameters_general_provider_u_any.ml";;

*)

open Elementary_context_databox_tag_by_parameters_general_provider_v;;

let nam_dna = "db1figure";;

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* let domaindata_name_of_database_name_n_databox_name (nam_dna, nam_dna) = *)
let soi_dfi = 
  Global_databox_sole_index_by_database_name_n_databox_name_provider_v.provide 
    (nam_dna, nam_dna);;

test_number 1 (
(soi_dfi : int list ) = 
[4; 5; 19]
);;

let idx_dom_dat = List_v.last_element_off_list soi_dfi;;
let nam_dom_l = Global_domainset_name_all_list_by_unit_provider_v.provide () ;;
let nam_dom_dat = List.nth nam_dom_l (idx_dom_dat -1);;

test_number 2 (
(nam_dom_dat : String.t ) = 
"prototype"
);;

let sym_edf = 
    elementary_context_databox_symbol_of_database_name_n_databox_name 
      (nam_dna, nam_dna);;

test_number 3 (
(sym_edf : Elementary_context_databox_symbol_t.elementary_context_databox_symbol ) =
  Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
   (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor "cc_pvtz")
);;



  let nam_dom = "elementary";;
  let nam_dna = Parameters_general_provider_v.provide "database-name";;
  let nam_dna = Parameters_general_provider_v.provide "databox-name";;
   
  let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom;;
  let idx_dba = Context_database_index_by_database_name_provider_v.provide nam_dba;;
 
  let nof_dfi = 
	Context_databox_nameoffile_by_database_name_n_databox_name_provider_v.provide
      (nam_dna, nam_dna) 
 ;;
  
  let idx_dfi = Context_index_by_context_nameoffile_provider_v.provide nof_dfi;;
  let soi_dfi = [idx_dfi; idx_dba; idx_dom];;

  let sym_edf = 
    elementary_context_databox_symbol_of_database_name_n_databox_name 
      (nam_dna, nam_dna);;

let tag_edf = Tag_v.make sym_edf soi_dfi;;

test_number 4 (
( tag_edf :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
    (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor "cc_pvtz"),
   [4; 5; 7])
);;

test_number 5 (
tag_edf = provide ()
);;
