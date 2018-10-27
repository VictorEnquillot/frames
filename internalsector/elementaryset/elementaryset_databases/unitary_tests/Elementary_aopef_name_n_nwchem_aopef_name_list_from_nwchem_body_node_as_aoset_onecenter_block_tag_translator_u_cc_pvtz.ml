open Make_test_v;;

testing "Elementary_aopef_name_n_nwchem_aopef_name_list_from_nwchem_body_node_as_aoset_onecenter_block_tag_translator_v with
   Elementary_aopef_name_n_nwchem_aopef_name_list_from_nwchem_body_node_as_aoset_onecenter_block_tag_translator_u_cc_pvtz.ml";;

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
   #use "Elementary_aopef_name_n_nwchem_aopef_name_list_from_nwchem_body_node_as_aoset_onecenter_block_tag_translator_u_cc_pvtz.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;
Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ncb = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_ncb :
  Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
    "cc_pvtz",
   [4; 5; 19; 5])
);;

let tag_nwc_t = Nwchem_tag_tree_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;

let tag_nwc_l = Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;

let tag_nwc_ne = List_v.only_element_of_predicate_off_list
    (fun (s, i) ->
      (Nwchem_symbol_v.is_nwchem_body_node_aoset_onecenter_block s)
	&& 
      (Nwchem_symbol_v.string_off s = "ne")
    ) 
    tag_nwc_l;; 

test_number 2 (
(tag_nwc_ne : Nwchem_symbol_t.nwchem_symbol Tag_t.tag ) =
(Nwchem_symbol_t.Nwchem_body_symbol
   (Nwchem_body_symbol_t.Nwchem_body_node_symbol
      (Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_onecenter_block
         "ne")),
 [10; 2; 2; 2; 4; 5; 19; 5])
);;
 
open Elementary_aopef_name_n_nwchem_aopef_name_list_from_nwchem_body_node_as_aoset_onecenter_block_tag_translator_v;;

(* Provider argument *)

let tag_nbn_cen = Tag_v.map_entity Nwchem_symbol_v.nwchem_body_node_symbol_off_nwchem_symbol tag_nwc_ne;;

test_number 3 (
(tag_nbn_cen : Nwchem_body_node_symbol_t.nwchem_body_node_symbol Tag_t.tag ) =
(Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_onecenter_block "ne",
 [10; 2; 2; 2; 4; 5; 19; 5])
);;  

(* let nwchem_string_off_list_of_nwchem_body_node_tag tag_nbn_cen = *)

let sof_nbn_cen = Nwchem_body_node_tag_v.string_off tag_nbn_cen;;

test_number 4 (
(sof_nbn_cen : string ) = 
"ne"
);;

let soi_nbn = Tag_v.sole_index_off_tag tag_nbn_cen;;
let nam_eba =
    Nwchem_any_category_by_sole_index_extractor_v.nwchem_context_databox_string_off_off_sole_index 
      soi_nbn;;
let tag_ncb = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_eba;;

let tag_nwc_cen_st = Tree_v.subtree_find_of_node_predicate_off_tree 
    (fun (s, i) -> 
      (Nwchem_symbol_v.is_nwchem_body_node_aoset_onecenter_block s)
	&&
      (Nwchem_symbol_v.string_off s = sof_nbn_cen)
    )
    tag_nwc_t;;

let tag_nwc_anv_l = Tree_v.node_list_of_node_predicate_off_tree 
      (fun (s, i) -> Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
      tag_nwc_cen_st;;

let sof_nwc_anv_l = List.filter 
    (fun (s, i) -> Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
    tag_nwc_l;;

let sof_nwc_anv_l = List.map Nwchem_tag_v.string_off tag_nwc_anv_l;;

test_number 5 (
(sof_nwc_anv_l : string list ) =
  ["ne s 1 gaussian 1";
   "ne s 1 gaussian 2";
   "ne s 1 gaussian 3";
   "ne s 1 gaussian 4";
   "ne s 1 gaussian 5";
   "ne s 1 gaussian 6";
   "ne s 1 gaussian 7";
   "ne s 1 gaussian 8";
   "ne s 2 gaussian 1";
   "ne s 3 gaussian 1";
   "ne p 4 gaussian 1";
   "ne p 4 gaussian 2";
   "ne p 4 gaussian 3";
   "ne p 5 gaussian 1";
   "ne p 6 gaussian 1";
   "ne d 7 gaussian 1";
   "ne d 8 gaussian 1";
   "ne f 9 gaussian 1"]
);;

let sof_nwc_anv_l = nwchem_string_off_list_of_nwchem_body_node_tag tag_nbn_cen;;

let sof_nwc_anv_nep4_l = List.filter (fun s -> String.sub s 0 7 = "ne p 4 ") sof_nwc_anv_l;;

test_number 6 (
(sof_nwc_anv_nep4_l : string list ) =
 ["ne p 4 gaussian 1";
  "ne p 4 gaussian 2";
  "ne p 4 gaussian 3"]
);;

let sof_ele_l = 
  Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v.translate
    sof_nwc_anv_l;;

test_number 7 (
(sof_ele_l : string list ) =
  ["ne s 1 1";
   "ne s 1 2";
   "ne s 1 3";
   "ne s 1 4";
   "ne s 1 5";
   "ne s 1 6";
   "ne s 1 7";
   "ne s 1 8";
   "ne s 2 1";
   "ne s 3 1";
   "ne p 2 1";
   "ne p 2 2";
   "ne p 2 3";
   "ne p 3 1";
   "ne p 4 1";
   "ne d 3 1";
   "ne d 4 1";
   "ne f 4 1"]
);;

let sof_dol = Doublet_list_v.make sof_ele_l sof_nwc_anv_l;;

test_number 8 (
(sof_dol : (string, string) Doublet_list_t.doublet_list ) =
 [("ne s 1 1", "ne s 1 gaussian 1");
  ("ne s 1 2", "ne s 1 gaussian 2");
  ("ne s 1 3", "ne s 1 gaussian 3");
  ("ne s 1 4", "ne s 1 gaussian 4");
  ("ne s 1 5", "ne s 1 gaussian 5");
  ("ne s 1 6", "ne s 1 gaussian 6");
  ("ne s 1 7", "ne s 1 gaussian 7");
  ("ne s 1 8", "ne s 1 gaussian 8");
  ("ne s 2 1", "ne s 2 gaussian 1");
  ("ne s 3 1", "ne s 3 gaussian 1");
  ("ne p 2 1", "ne p 4 gaussian 1");
  ("ne p 2 2", "ne p 4 gaussian 2");
  ("ne p 2 3", "ne p 4 gaussian 3");
  ("ne p 3 1", "ne p 5 gaussian 1");
  ("ne p 4 1", "ne p 6 gaussian 1");
  ("ne d 3 1", "ne d 7 gaussian 1");
  ("ne d 4 1", "ne d 8 gaussian 1");
  ("ne f 4 1", "ne f 9 gaussian 1")]
);;

test_number 9 (
sof_dol = translate tag_nbn_cen
);;
