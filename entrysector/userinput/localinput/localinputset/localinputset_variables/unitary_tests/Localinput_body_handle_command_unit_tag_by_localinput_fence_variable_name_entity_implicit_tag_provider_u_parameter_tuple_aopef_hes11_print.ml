open Make_test_v;;

testing "Localinput_body_handle_command_unit_tag_by_localinput_fence_variable_name_entity_implicit_tag_provider_v with
    Localinput_body_handle_command_unit_tag_by_localinput_fence_variable_name_entity_implicit_tag_provider_u_parameter_tuple_aopef_hes11_print.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_body_handle_command_unit_tag_by_localinput_fence_variable_name_entity_implicit_tag_provider_u_parameter_tuple_aopef_hes11_print.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Parameter_tuple_print";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let pre_tag_nei_sof sof (s, i) = Localinput_symbol_v.localinput_fence_variable_name_entity_implicit_constructor sof = s;;

let sof_nei = "Aopef_hes11";;
let tag_loi_nei = List_v.only_element_of_predicate_off_list (pre_tag_nei_sof sof_nei) tag_loi_l;;

test_number 1 (
( tag_loi_nei : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
           (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
             "Aopef_hes11")))),
    [1; 2; 4; 33; 11])
);;

open Localinput_body_handle_command_unit_tag_by_localinput_fence_variable_name_entity_implicit_tag_provider_v;;

(* Argument tag_nei Aopef_hes11 Target *)

let tag_nei = Tag_v.map_entity Localinput_symbol_v.localinput_fence_variable_name_entity_implicit_symbol_off_localinput_symbol tag_loi_nei;;

test_number 2 (
(tag_nei :
  Localinput_fence_variable_name_entity_implicit_symbol_t.localinput_fence_variable_name_entity_implicit_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
    "Aopef_hes11",
   [1; 2; 4; 33; 11])
);;

let soi_nei = Tag_v.sole_index_off_tag tag_nei;;
let fno_inp_ =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_file_string_off_off_sole_index
      soi_nei;;

test_number 3 (
fno_inp_ = fno_inp
);; 

let tag_lcu_l =
    Localinput_body_handle_command_unit_tag_list_by_basicname_inputbox_provider_v.provide
    fno_inp;;

test_number 4 (
( tag_lcu_l :
  Localinput_body_handle_command_unit_symbol_t.localinput_body_handle_command_unit_symbol
  Tag_t.tag list ) =
  [(Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
     (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
       "Aopef_hes11"),
    [4; 33; 11])]
);;

let pre_tag_lcu_sof sof t = Localinput_body_handle_command_unit_tag_v.string_off t = sof;;

let tag_lcu = List_v.only_element_of_predicate_off_list (pre_tag_lcu_sof sof_nei) tag_lcu_l;;

test_number 5 (
tag_lcu = provide tag_nei
);;
