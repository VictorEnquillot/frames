open Make_test_v;;

testing "Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v with
   Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_u_any.ml";;

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
   #use "Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_u_any.ml";;

*)

let nam_dba = "nwchem";;
let nam_dna = "lanl2dz";;
Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ncb = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_ncb :
  Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
    "lanl2dz",
   [5; 5; 19; 5])
);;

open Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v;;

let tag_nwc_t = Nwchem_tag_tree_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;

let tag_nwc_stl = Tree_v.subtree_filter_of_node_predicate_off_tree 
    (fun (s, i) ->
      (Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
        && 
      (String.sub (Nwchem_symbol_v.string_off s) 0 7 = "ne p 5 ")
    ) 
    tag_nwc_t;; 

test_number 2 (
(tag_nwc_stl : Nwchem_symbol_t.nwchem_symbol Tag_t.tag Tree_t.tree list ) =
  [Tree_t.Inner
    ((Nwchem_symbol_t.Nwchem_body_symbol
       (Nwchem_body_symbol_t.Nwchem_body_node_symbol
         (Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_numerical_values
           "ne p 5 gaussian 1")),
      [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]),
    [Tree_t.Leaf
      (Nwchem_symbol_t.Nwchem_fence_symbol
        (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "0.3444000"),
       [1; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
     Tree_t.Leaf
      (Nwchem_symbol_t.Nwchem_fence_symbol
        (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "1.0000000"),
       [2; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])])]
);;

let sns_nwc_t = Tree_v.map (fun (s, i) -> (Nwchem_symbol_v.string_off s, i)) tag_nwc_t;;

let tag_nwc_l = Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;
  
let tag_nwc_anv_l = List.filter 
    (fun (s, i) -> Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
    tag_nwc_l;;

let sof_nwc_anv_l = List.map Nwchem_tag_v.string_off tag_nwc_anv_l;;

test_number 3 (
(sof_nwc_anv_l : string list ) =
  ["ne s 1 gaussian 1";
   "ne s 1 gaussian 2";
   "ne s 1 gaussian 3";
   "ne s 1 gaussian 4";
   "ne s 2 gaussian 1";
   "ne s 2 gaussian 2";
   "ne s 2 gaussian 3";
   "ne s 3 gaussian 1";
   "ne p 4 gaussian 1";
   "ne p 4 gaussian 2";
   "ne p 5 gaussian 1";
   "au s 1 gaussian 1";
   "au s 1 gaussian 2";
   "au s 1 gaussian 3";
   "au s 2 gaussian 1";
   "au p 3 gaussian 1";
   "au p 3 gaussian 2";
   "au p 4 gaussian 1";
   "au p 4 gaussian 2";
   "au p 5 gaussian 1";
   "au d 6 gaussian 1";
   "au d 6 gaussian 2";
   "au d 7 gaussian 1"]
);;

let sof_nwc_pre = "ne s 0 gaussian 0";;
let sof_ele_pre = "ne s 0 0";;
let sof_nwc_cur = List.nth sof_nwc_anv_l 0;;

let sof_ele = new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 4 (
(sof_ele : string ) = 
"ne s 1 1"
);;

let sof_nwc_pre = sof_nwc_cur;;
let sof_ele_pre = sof_ele;;
let sof_nwc_cur = List.nth sof_nwc_anv_l 1;;

let sof_ele = new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 5 (
(sof_ele : string ) = 
"ne s 1 2"
);;

let sof_nwc_pre = sof_nwc_cur;;
let sof_ele_pre = sof_ele;;
let sof_nwc_cur = List.nth sof_nwc_anv_l 2;;

let sof_ele = new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 6 (
(sof_ele : string ) = 
"ne s 1 3"
);;

let tag_nwc_anv = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> Nwchem_symbol_v.string_off s = "ne p 5 gaussian 1") 
	tag_nwc_anv_l;;

test_number 7 (
(tag_nwc_anv : Nwchem_symbol_t.nwchem_symbol Tag_t.tag) =
  (Nwchem_symbol_t.Nwchem_body_symbol
    (Nwchem_body_symbol_t.Nwchem_body_node_symbol
      (Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_numerical_values
        "ne p 5 gaussian 1")),
   [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let sof_nwc_anv = Nwchem_tag_v.string_off tag_nwc_anv;;

test_number 8 (
(sof_nwc_anv : string ) = 
"ne p 5 gaussian 1"
);;

let nam_cen = center_name_of_nwchem_string_off sof_nwc_anv;;

test_number 9 (
(nam_cen : string ) = 
"ne"
);;

let qua = quadruplet_of_nwchem_string_off sof_nwc_anv;;
test_number 10 (
(qua : string * string * int * int ) = 
("ne", "p", 5, 1)
);;

let sof_ele_l = translate sof_nwc_anv_l;;

test_number 11 (
(sof_ele_l : string list ) =
  ["ne s 1 1";
   "ne s 1 2";
   "ne s 1 3";
   "ne s 1 4";

   "ne s 2 1";
   "ne s 2 2";
   "ne s 2 3";

   "ne s 3 1";

   "ne p 2 1";
   "ne p 2 2";

   "ne p 3 1";

   "au s 1 1";
   "au s 1 2";
   "au s 1 3";
   "au s 2 1";

   "au p 2 1";
   "au p 2 2";

   "au p 3 1";
   "au p 3 2";

   "au p 4 1";

   "au d 3 1";
   "au d 3 2";

   "au d 4 1"]
);;

let sof_dol = Doublet_list_v.make sof_nwc_anv_l sof_ele_l;;

test_number 12 (
(sof_dol : (string, string) Doublet_list_t.doublet_list ) =
  [("ne s 1 gaussian 1", "ne s 1 1");
   ("ne s 1 gaussian 2", "ne s 1 2");
   ("ne s 1 gaussian 3", "ne s 1 3");
   ("ne s 1 gaussian 4", "ne s 1 4");

   ("ne s 2 gaussian 1", "ne s 2 1");
   ("ne s 2 gaussian 2", "ne s 2 2");
   ("ne s 2 gaussian 3", "ne s 2 3");

   ("ne s 3 gaussian 1", "ne s 3 1");

   ("ne p 4 gaussian 1", "ne p 2 1");
   ("ne p 4 gaussian 2", "ne p 2 2");

   ("ne p 5 gaussian 1", "ne p 3 1");

   ("au s 1 gaussian 1", "au s 1 1");
   ("au s 1 gaussian 2", "au s 1 2");
   ("au s 1 gaussian 3", "au s 1 3");

   ("au s 2 gaussian 1", "au s 2 1");

   ("au p 3 gaussian 1", "au p 2 1");
   ("au p 3 gaussian 2", "au p 2 2");

   ("au p 4 gaussian 1", "au p 3 1");
   ("au p 4 gaussian 2", "au p 3 2");

   ("au p 5 gaussian 1", "au p 4 1");

   ("au d 6 gaussian 1", "au d 3 1");
   ("au d 6 gaussian 2", "au d 3 2");

   ("au d 7 gaussian 1", "au d 4 1")]
);;
