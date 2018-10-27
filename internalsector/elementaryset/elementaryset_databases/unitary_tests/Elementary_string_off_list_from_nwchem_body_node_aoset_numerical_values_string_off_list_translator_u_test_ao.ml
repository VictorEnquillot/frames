open Make_test_v;;

testing "Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v with
   Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_u_test_ao.ml";;

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
   #use "Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_u_test_ao.ml";;

*)

let nam_dba = "nwchem";;
let nam_dna = "test_ao";;
Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ndf = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_ndf :
  Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
    "test_ao",
   [6; 5; 19; 5])
);;

let tag_nwc_t = Nwchem_tag_tree_by_nwchem_context_databox_tag_provider_v.provide tag_ndf;;

let tag_nwc_stl = Tree_v.subtree_filter_of_node_predicate_off_tree 
    (fun (s, i) ->
      (Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
        && 
      (String.sub (Nwchem_symbol_v.string_off s) 0 7 = "he s 2 ")
    ) 
    tag_nwc_t;; 

test_number 2 (
(tag_nwc_stl : Nwchem_symbol_t.nwchem_symbol Tag_t.tag Tree_t.tree list ) =
  [Tree_t.Inner
    ((Nwchem_symbol_t.Nwchem_body_symbol
       (Nwchem_body_symbol_t.Nwchem_body_node_symbol
         (Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_numerical_values
           "he s 2 gaussian 1")),
      [1; 2; 2; 2; 1; 2; 2; 2; 6; 5; 19; 5]),
    [Tree_t.Leaf
      (Nwchem_symbol_t.Nwchem_fence_symbol
        (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "0.3829930"),
       [1; 1; 2; 2; 2; 1; 2; 2; 2; 6; 5; 19; 5]);
     Tree_t.Leaf
      (Nwchem_symbol_t.Nwchem_fence_symbol
        (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "1.0000000"),
       [2; 1; 2; 2; 2; 1; 2; 2; 2; 6; 5; 19; 5])])]
);;

let sns_nwc_t = Tree_v.map (fun (s, i) -> (Nwchem_symbol_v.string_off s, i)) tag_nwc_t;;

let tag_nwc_l = Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide tag_ndf;;
  
let tag_nwc_anv_l = List.filter 
    (fun (s, i) -> Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
    tag_nwc_l;;

open Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v;;

(* Argument nwchem_body_node_aoset_numerical_values_string_off_list sof_nwc_anv_l *)

let sof_nwc_anv_l = List.map Nwchem_tag_v.string_off tag_nwc_anv_l;;

test_number 3 (
(sof_nwc_anv_l : string list ) =
  ["he s 1 gaussian 1"; "he s 1 gaussian 2"; "he s 2 gaussian 1";
   "he p 3 gaussian 1"; "he p 3 gaussian 2"; "he p 4 gaussian 1"]
);;

(* new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem *) 

let sof_nwc_pre = "he s 2 gaussian 1";;
let sof_ele_pre = "he s 2 1";;
let sof_nwc_cur = List.nth sof_nwc_anv_l 0;;

let sof_ele = new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 4 (
(sof_ele : string ) = 
"he s 3 1"
);;

let sof_nwc_pre = sof_nwc_cur;;
let sof_ele_pre = sof_ele;;
let sof_nwc_cur = List.nth sof_nwc_anv_l 1;;

let sof_ele = new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 5 (
(sof_ele : string ) = 
"he s 3 2"
);;

let sof_nwc_pre = sof_nwc_cur;;
let sof_ele_pre = sof_ele;;
let sof_nwc_cur = List.nth sof_nwc_anv_l 2;;

let sof_ele = new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 6 (
(sof_ele : string ) = 
"he s 4 1"
);;

let tag_nwc_anv = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> Nwchem_symbol_v.string_off s = "he p 4 gaussian 1") 
	tag_nwc_anv_l;;

test_number 7 (
(tag_nwc_anv : Nwchem_symbol_t.nwchem_symbol Tag_t.tag) =
  (Nwchem_symbol_t.Nwchem_body_symbol
    (Nwchem_body_symbol_t.Nwchem_body_node_symbol
      (Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_numerical_values
        "he p 4 gaussian 1")),
   [1; 2; 4; 2; 1; 2; 2; 2; 6; 5; 19; 5])
);;

let sof_nwc_anv = Nwchem_tag_v.string_off tag_nwc_anv;;

test_number 8 (
(sof_nwc_anv : string ) = 
"he p 4 gaussian 1"
);;

let nam_cen = center_name_of_nwchem_string_off sof_nwc_anv;;

test_number 9 (
(nam_cen : string ) = 
"he"
);;

let qua = quadruplet_of_nwchem_string_off sof_nwc_anv;;
test_number 10 (
(qua : string * string * int * int ) = 
("he", "p", 4, 1)
);;

let sof_ele_l = translate sof_nwc_anv_l;;

test_number 11 (
(sof_ele_l : string list ) =
  ["he s 1 1"; "he s 1 2"; "he s 2 1"; "he p 2 1"; "he p 2 2"; "he p 3 1"]
);;

let sof_dol = Doublet_list_v.make sof_nwc_anv_l sof_ele_l;;

test_number 12 (
(sof_dol : (string, string) Doublet_list_t.doublet_list ) =
  [("he s 1 gaussian 1", "he s 1 1"); ("he s 1 gaussian 2", "he s 1 2");
   ("he s 2 gaussian 1", "he s 2 1"); ("he p 3 gaussian 1", "he p 2 1");
   ("he p 3 gaussian 2", "he p 2 2"); ("he p 4 gaussian 1", "he p 3 1")]
);;

test_number 13 (
sof_ele_l = translate sof_nwc_anv_l
);;
