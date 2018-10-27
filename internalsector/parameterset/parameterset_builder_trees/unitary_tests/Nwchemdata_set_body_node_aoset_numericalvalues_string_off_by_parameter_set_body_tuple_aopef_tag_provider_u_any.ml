open Make_test_v;;

testing "Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_v with
    Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";;

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

(* toplevel 
   #use "Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";; 

*)

open Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_par_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Parameter_set_body_tuple_aopef *) 

let tag_par = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor s)
	&&
      (Parameter_symbol_v.string_off s = "he p 2 2")
      )
    tag_par_l;;

(* Argumant *)

let tag_pta = Parameter_set_body_tuple_aopef_tag_v.parameter_set_body_tuple_aopef_tag_off_parameter_tag tag_par;;

test_number 1 (
(tag_pta :
  Parameter_set_body_tuple_aopef_symbol_t.parameter_set_body_tuple_aopef_symbol
  Tag_t.tag ) =
  (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
    "he p 2 2",
   [5; 22; 5; 16; 5])
);;

let soi_pta = Tag_v.sole_index_off_tag tag_pta;;

test_number 2 (
nam_dbo = Databox_name_by_any_sole_index_provider_v.provide soi_pta
);;

let sof_nwc_anv_l =
  Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_databox_name_provider_v.provide 
    nam_dbo ;;

test_number 3 (
(sof_nwc_anv_l : string list ) =
  ["He S 1 GAUSSIAN 1"; "He S 1 GAUSSIAN 2"; "He S 2 GAUSSIAN 1";
   "He P 3 GAUSSIAN 1"; "He P 3 GAUSSIAN 2"; "He P 4 GAUSSIAN 1"]
);;

let sof_par_l =
    Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v.translate
      sof_nwc_anv_l;;

test_number 4 ( 
(sof_par_l : string list ) =
  ["he s 1 1"; "he s 1 2"; "he s 2 1"; "he p 2 1"; "he p 2 2"; "he p 3 1"]
);;

let sof_pta = Parameter_set_body_tuple_aopef_tag_v.string_off tag_pta;;

test_number 5 (
(sof_pta : string ) = 
"he p 2 2"
);;

let idx_sof_par = List_v.index_of_element_of_list sof_pta sof_par_l;;

test_number 6 (
(idx_sof_par : int ) = 
4
);;
  
let sof_nnv = List.nth sof_nwc_anv_l idx_sof_par;;

test_number 7 (
(sof_nnv : string ) = 
"He P 3 GAUSSIAN 2"
);;

test_number 8 (
sof_nnv = provide tag_pta
);;
