  open Make_test_v;;

testing "Elementary_as_basisset_tag_by_databox_name_provider with
   Elementary_as_basisset_tag_by_database_name_n_databox_name_provider_u_any.ml";;

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
   #use "Elementary_as_basisset_tag_by_database_name_n_databox_name_provider_u_any.ml";;

*)

open Elementary_as_basisset_tag_by_database_name_n_databox_name_provider_v;;

let nam_dom = "elementary";;
let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom;;

let nam_dba = "nwchem";;
let idx_dba = Context_database_index_by_database_name_provider_v.provide nam_dba;;

let nam_dbo = "cc_pvtz";;
  
let nof_dfi = 
    Context_databox_nameoffile_by_database_name_n_databox_name_provider_v.provide
      (nam_dna, nam_dna) 
;; 

test_number 1 (
(nof_dfi : String.t ) = 
"cc_pvtz.nwc"
);;

let idx_bas = Context_index_by_context_nameoffile_provider_v.provide nof_dfi;;

let soi_bas = [idx_bas; idx_dba; idx_dom];;

test_number 2 (
(soi_bas : int list ) = 
[4; 5; 7]
);;


let sym_ele_bas = Elementary_symbol_v.elementary_context_databox_skeletondata_constructor nam_dna;;

let tag_ele_bas = Tag_v.make sym_ele_bas soi_bas;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "cc_pvtz"))),
   [4; 5; 7])
);;

let boo = tag_ele_bas = provide (nam_dna, nam_dna);;

test_number 4 (
boo
);;


