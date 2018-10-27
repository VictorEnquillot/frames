open Make_test_v;;

testing "Localinput_fence_cell_external_name_string_off_by_input_fence_variable_name_entity_string_off_provider_v with
    Localinput_fence_cell_external_name_string_off_by_input_fence_variable_name_entity_string_off_provider_u_parameter_tuple_aopef_hes11_print.ml";;

(* Deleting Registers *)



(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Localinput_fence_cell_external_name_string_off_by_input_fence_variable_name_entity_string_off_provider_v" "cpu debug retrieve store provide";;

Trace_what_by_module_name_register_v.store "Localinput_tag_tree_by_input_fullnameoffile_provider_v" "cpu debug retrieve store provide";;
*)

(* toplevel 
   #use "Localinput_fence_cell_external_name_string_off_by_input_fence_variable_name_entity_string_off_provider_u_parameter_tuple_aopef_hes11_print.ml";; 

*)

(* Input File *)

let nof_inp = "Parameter_tuple_print.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_fence_cell_external_name_string_off_by_input_fence_variable_name_entity_string_off_provider_v;;

(* Argument sof_vne Aopef_hes11 *)

let sof_vne = "Aopef_hes11";;

let tag_inp_ccd_st = 
  Localinput_as_body_handle_command_creation_define_tag_subtree_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_vne;;

let pre_tag_fcn (s, i) = 
  Localinput_symbol_v.is_input_fence_cell_external_name_symbol_off_input_symbol s;;

let tag_inp_fcn = Tree_v.only_node_of_node_predicate_off_tree pre_tag_fcn tag_inp_ccd_st;;

test_number 1 (
(tag_inp_fcn : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
      (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
        (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
          "he s 1 1"))),
   [2; 2; 2; 2; 2; 33; 11])
);;

let sof_inp_fcn = Localinput_tag_v.string_off tag_inp_fcn;;

test_number 2 (
sof_inp_fcn = provide sof_vne
);;
