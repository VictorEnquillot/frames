open Make_test_v;;

testing "Localinput_fence_cell_external_name_string_off_by_localinput_fence_variable_name_entity_string_off_provider_v with
    Localinput_fence_cell_external_name_string_off_by_localinput_fence_variable_name_entity_string_off_provider_u_parameter_tuple_aopef_hes11_print.ml";;

(* Deleting Registers *)



(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Localinput_fence_cell_external_name_string_off_by_localinput_fence_variable_name_entity_string_off_provider_v" "cpu debug retrieve store provide";;

Trace_what_by_module_name_register_v.store "Localinput_tag_tree_by_basicname_inputbox_provider_v" "cpu debug retrieve store provide";;
*)

(* toplevel 
   #use "Localinput_fence_cell_external_name_string_off_by_localinput_fence_variable_name_entity_string_off_provider_u_parameter_tuple_aopef_hes11_print.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Parameter_tuple_print";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_fence_cell_external_name_string_off_by_localinput_fence_variable_name_entity_string_off_provider_v;;

(* Argument sof_vne Aopef_hes11 *)

let sof_vne = "Aopef_hes11";;

let tag_loi_lcd_st = 
  Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_string_off_provider_v.provide
    sof_vne;;

let pre_tag_fcn (s, i) = 
  Localinput_symbol_v.is_localinput_fence_cell_external_name_symbol_off_localinput_symbol s;;

let tag_loi_fcn = Tree_v.only_node_of_node_predicate_off_tree pre_tag_fcn tag_loi_lcd_st;;

test_number 1 (
(tag_loi_fcn : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
      (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
        (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
          "he s 1 1"))),
   [2; 2; 2; 2; 2; 33; 11])
);;

let sof_inp_fcn = Localinput_tag_v.string_off tag_loi_fcn;;

test_number 2 (
sof_inp_fcn = provide sof_vne
);;
