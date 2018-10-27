open Make_test_v;;

testing "Localinput_fence_cell_databox_string_off_by_input_fence_variable_name_entity_string_off_provider_v with
    Localinput_fence_cell_databox_string_off_by_input_fence_variable_name_entity_string_off_provider_u_parameter_tuple_aopef_hes11_print.ml";;

(* Deleting Registers *)



(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_fence_cell_databox_string_off_by_input_fence_variable_name_entity_string_off_provider_v" "cpu debug provide";;

(* toplevel 
   #use "Localinput_fence_cell_databox_string_off_by_input_fence_variable_name_entity_string_off_provider_u_parameter_tuple_aopef_hes11_print.ml";; 

*)

(* Input File *)

let nof_inp = "Parameter_tuple_print.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_fence_cell_databox_string_off_by_input_fence_variable_name_entity_string_off_provider_v;;

(* Argument tag_vne Aopef_hes11 *)

let sof_vne = "Aopef_hes11";;

let tag_vne_l = 
  Localinput_fence_variable_name_entity_tag_list_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_vne;;

test_number 1 (
(tag_vne_l :
  Localinput_fence_variable_name_entity_symbol_t.input_fence_variable_name_entity_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Aopef_hes11"),
    [1; 2; 2; 33; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
     (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
       "Aopef_hes11"),
    [1; 2; 4; 33; 11])]
);;

let pre_tag_vne_sof sof (s, i) = 
  (Localinput_fence_variable_name_entity_symbol_v.is_input_fence_variable_name_entity_external_symbol_off_input_fence_variable_name_entity_symbol s)
|| 
  (Localinput_fence_variable_name_entity_symbol_v.is_input_fence_variable_name_entity_target_symbol_off_input_fence_variable_name_entity_symbol s);;

let tag_vne = List_v.only_element_of_predicate_off_list (pre_tag_vne_sof sof_vne) tag_vne_l;;

test_number 2 (
( tag_vne :
  Localinput_fence_variable_name_entity_symbol_t.input_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
    (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
      "Aopef_hes11"),
   [1; 2; 2; 33; 11])
);;

let tag_cec = Localinput_fence_cell_external_context_tag_by_input_fence_variable_name_entity_tag_provider_v.provide tag_vne;;

test_number 3 (
(tag_cec :
  Localinput_fence_cell_external_context_symbol_t.input_fence_cell_external_context_symbol
  Tag_t.tag ) =
  (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
    "Con_tao",
   [3; 2; 2; 2; 2; 33; 11])
);;

let tag_vnc =
    Localinput_fence_variable_name_context_tag_by_input_fence_cell_external_context_tag_provider_v.provide
      tag_cec;;

test_number 4 (
(tag_vnc :
  Localinput_fence_variable_name_context_symbol_t.input_fence_variable_name_context_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
    "Con_tao",
   [1; 2; 1; 33; 11])
);;

let tag_fcd =  
  Localinput_fence_cell_databox_tag_by_input_fence_variable_name_context_tag_provider_v.provide
    tag_vnc;;

test_number 5 (
( tag_fcd :
  Localinput_fence_cell_databox_symbol_t.input_fence_cell_databox_symbol
  Tag_t.tag ) =
  (Localinput_fence_cell_databox_symbol_t.Localinput_fence_cell_databox_constructor
    "test_ao",
   [1; 2; 2; 2; 1; 33; 11])
);;

let sof_fcd = Localinput_fence_cell_databox_tag_v.string_off tag_fcd;;

test_number 6 (
sof_fcd = provide sof_vne
);;
