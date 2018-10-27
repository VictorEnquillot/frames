open Make_test_v;;

testing "Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v with
   Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;



(* Tracing *)

let nam_mod = "Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v";;

(* Trace_what_by_module_name_register_v.store nam_mod "debug";; *)

(* toplevel 
   #use "Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_u_any.ml";;

*)

open Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_ebo;;

test_number 1 (
(tag_nbo :
  Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol
  Tag_t.tag ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
    "try_ao",
   [16; 5; 20; 2])
);;

let tag_nwc_l = Nwchemdata_tag_all_list_by_databox_name_provider_v.provide nam_ebo;;
  
let tag_nwc_anv_l = List.filter 
    (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_body_node_aoset_numerical_values s)
    tag_nwc_l
;;

test_number 2 (
(tag_nwc_anv_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 1; 2; 2; 2; 16; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 2")),
    [2; 2; 1; 2; 1; 2; 2; 2; 16; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
         "He S 2 GAUSSIAN 1")),
    [1; 2; 2; 2; 1; 2; 2; 2; 16; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
         "He P 3 GAUSSIAN 1")),
    [1; 2; 3; 2; 1; 2; 2; 2; 16; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
         "He P 3 GAUSSIAN 2")),
    [2; 2; 3; 2; 1; 2; 2; 2; 16; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
         "He P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 16; 5; 20; 2])]
);;

let sof_nwc_anv_l = List.map Nwchemdata_tag_v.string_off tag_nwc_anv_l;;

test_number 3 (
(sof_nwc_anv_l : string list ) =
  ["He S 1 GAUSSIAN 1"; "He S 1 GAUSSIAN 2"; "He S 2 GAUSSIAN 1";
   "He P 3 GAUSSIAN 1"; "He P 3 GAUSSIAN 2"; "He P 4 GAUSSIAN 1"]
);;

let sof_nwc_pre = "X X 0 GAUSSIAN 0";;
let sof_ele_pre = "X X 0 0";;
let sof_nwc_cur = List.nth sof_nwc_anv_l 0;;

let sof_ele_cas = new_elementary_string_off_of_previous_nwchemdata_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

(*
test_number 4 (
(sof_ele : string ) = 
"He S 1 1"
);;

let sof_nwc_pre = sof_nwc_cur;;
let sof_ele_pre = sof_ele;;
let sof_nwc_cur = List.nth sof_nwc_anv_l 1;;

let sof_ele = new_elementary_string_off_of_previous_nwchemdata_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 5 (
(sof_ele : string ) = 
"he s 1 2"
);;

let sof_nwc_pre = sof_nwc_cur;;
let sof_ele_pre = sof_ele;;
let sof_nwc_cur = List.nth sof_nwc_anv_l 2;;

let sof_ele = new_elementary_string_off_of_previous_nwchemdata_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur ;;

test_number 6 (
(sof_ele : string ) = 
"he s 1 1"
);;

let tag_nwc_anv = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> Nwchemdata_symbol_v.string_off s = "he p 5 gaussian 1") 
	tag_nwc_anv_l;;

test_number 7 (
(tag_nwc_anv : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
        "he p 5 gaussian 1")),
   [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let sof_nwc_anv = Nwchemdata_tag_v.string_off tag_nwc_anv;;

test_number 8 (
(sof_nwc_anv : string ) = 
"he p 5 gaussian 1"
);;

let nam_cen = center_name_of_nwchemdata_string_off sof_nwc_anv;;

test_number 9 (
(nam_cen : string ) = 
"he"
);;

let qua = quadruplet_of_nwchemdata_string_off sof_nwc_anv;;
test_number 10 (
(qua : string * string * int * int ) = 
("he", "p", 5, 1)
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
*)
