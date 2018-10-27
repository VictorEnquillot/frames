open Make_test_v;;

testing "Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v with
   Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;

(* Tracing *)
(* Trace_what_by_module_name_register_v.store nam_mod "debug";; *)

let nam_mod = "Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v";;

(* toplevel 
   #use "Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_u_any.ml";;

*)

open Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_pbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
(tag_pbo :
  Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol
  Tag_t.tag ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
    "try_ao",
   [22; 5; 20; 2])
);;

let tag_nwc_l = Nwchemdata_tag_all_list_by_databox_name_provider_v.provide nam_dbo;;
  
let tag_nwc_anv_l = List.filter 
    (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_constructor s)
    tag_nwc_l
;;

test_number 2 (
(tag_nwc_anv_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "He S 1 GAUSSIAN 1"))))),
    [1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "He S 1 GAUSSIAN 2"))))),
    [2; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "He S 2 GAUSSIAN 1"))))),
    [1; 2; 2; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "He P 3 GAUSSIAN 1"))))),
    [1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "He P 3 GAUSSIAN 2"))))),
    [2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "He P 4 GAUSSIAN 1"))))),
    [1; 2; 4; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;

let sof_nwc_anv_l = List.map Nwchemdata_tag_v.string_off tag_nwc_anv_l;;

test_number 3 (
(sof_nwc_anv_l : string list ) =
  ["He S 1 GAUSSIAN 1"; "He S 1 GAUSSIAN 2"; "He S 2 GAUSSIAN 1";
   "He P 3 GAUSSIAN 1"; "He P 3 GAUSSIAN 2"; "He P 4 GAUSSIAN 1"]
);;

let sof_nwc_pre = "X X 0 GAUSSIAN 0";;
let sof_par_pre = "X X 0 0";;
let sof_nwc_cur = List.nth sof_nwc_anv_l 0;;

test_number 4 (
(sof_nwc_cur : string ) = 
"He S 1 GAUSSIAN 1"
);;

let sof_par_cas = new_parameter_string_off_of_previous_nwchemdata_of_previous_parameter_of_current_newchem sof_nwc_pre sof_par_pre sof_nwc_cur ;;

test_number 5 (
(sof_par_cas : string ) = 
"He S 1 1"
);;

let sof_par_l = parameter_string_off_list_of_nwchemdata_string_off_list sof_nwc_anv_l;;

test_number 6 (
(sof_par_l : string list ) =
  ["he s 1 1"; "he s 1 2"; "he s 2 1"; "he p 2 1"; "he p 2 2"; "he p 3 1"]
);;

test_number 7 (
sof_par_l = build sof_nwc_anv_l
);;

