open Make_test_v;;

testing "Localinput_body_handle_command_tounit_tag_by_input_fence_variable_name_entity_implicit_tag_provider_v with
    Localinput_body_handle_command_tounit_tag_by_input_fence_variable_name_entity_implicit_tag_provider_u_parameter_tuple_aopef_hes11_print.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_body_handle_command_tounit_tag_by_input_fence_variable_name_entity_implicit_tag_provider_u_parameter_tuple_aopef_hes11_print.ml";; 

*)

(* Input File *)

let nof_inp = "Parameter_tuple_print.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let tag_inp_l = Localinput_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let pre_tag_nei_sof sof (s, i) = Localinput_symbol_v.input_fence_variable_name_entity_implicit_constructor sof = s;;

let sof_nei = "Aopef_hes11";;
let tag_inp_nei = List_v.only_element_of_predicate_off_list (pre_tag_nei_sof sof_nei) tag_inp_l;;

test_number 1 (
( tag_inp_nei : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
           (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
             "Aopef_hes11")))),
    [1; 2; 4; 33; 11])
);;

open Localinput_body_handle_command_tounit_tag_by_input_fence_variable_name_entity_implicit_tag_provider_v;;

(* Argument tag_nei Aopef_hes11 Target *)

let tag_nei = Tag_v.map_entity Localinput_symbol_v.input_fence_variable_name_entity_implicit_symbol_off_input_symbol tag_inp_nei;;

test_number 2 (
(tag_nei :
  Localinput_fence_variable_name_entity_implicit_symbol_t.input_fence_variable_name_entity_implicit_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
    "Aopef_hes11",
   [1; 2; 4; 33; 11])
);;

let soi_nei = Tag_v.sole_index_off_tag tag_nei;;
let fno_inp_ =
    Localinput_any_category_by_sole_index_extractor_v.input_context_file_string_off_off_sole_index
      soi_nei;;

test_number 3 (
fno_inp_ = fno_inp
);; 

let tag_hcu_l =
    Localinput_body_handle_command_tounit_tag_list_by_input_fullnameoffile_provider_v.provide
    fno_inp;;

test_number 4 (
( tag_hcu_l :
  Localinput_body_handle_command_tounit_symbol_t.input_body_handle_command_tounit_symbol
  Tag_t.tag list ) =
  [(Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
     (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
       "Aopef_hes11"),
    [4; 33; 11])]
);;

let pre_tag_hcu_sof sof t = Localinput_body_handle_command_tounit_tag_v.string_off t = sof;;

let tag_hcu = List_v.only_element_of_predicate_off_list (pre_tag_hcu_sof sof_nei) tag_hcu_l;;

test_number 5 (
tag_hcu = provide tag_nei
);;
