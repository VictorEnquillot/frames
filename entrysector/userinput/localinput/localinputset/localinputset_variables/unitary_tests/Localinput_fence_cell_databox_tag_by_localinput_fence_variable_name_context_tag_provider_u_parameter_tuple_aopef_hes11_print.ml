open Make_test_v;;

testing "Localinput_fence_cell_databox_tag_by_localinput_fence_variable_name_context_tag_provider_v with
    Localinput_fence_cell_databox_tag_by_localinput_fence_variable_name_context_tag_provider_u_parameter_tuple_aopef_hes11_print.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_fence_cell_databox_tag_by_localinput_fence_variable_name_context_tag_provider_u_parameter_tuple_aopef_hes11_print.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Parameter_tuple_print";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

let tag_vnc_l = 
  Localinput_fence_variable_name_context_tag_list_by_basicname_inputbox_provider_v.provide 
      fno_inp;;

test_number 1 (
(tag_vnc_l : Localinput_fence_variable_name_context_symbol_t.localinput_fence_variable_name_context_symbol
   Tag_t.tag list ) =
[(Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
    "Con_tao",
  [1; 2; 1; 33; 11])]
);;

(* Argument tag_vnc Con_tao Context *)

let nam_var = "Con_tao";;
let pre_tag_vnc_sof sof (s, i) = Localinput_fence_variable_name_context_symbol_v.localinput_fence_variable_name_context_constructor sof = s;;

let tag_vnc_con_tao = List_v.only_element_of_predicate_off_list (pre_tag_vnc_sof nam_var) tag_vnc_l;;

let tag_vnc = tag_vnc_con_tao;;

test_number 2 (
(tag_vnc :
  Localinput_fence_variable_name_context_symbol_t.localinput_fence_variable_name_context_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
    "Con_tao",
   [1; 2; 1; 33; 11])
);;

open Localinput_fence_cell_databox_tag_by_localinput_fence_variable_name_context_tag_provider_v;;

let sof_vnc = Localinput_fence_variable_name_context_tag_v.string_off tag_vnc;;
 
let tag_loi_lcd_st = 
   Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_string_off_provider_v.provide
     sof_vnc;;

let pre_tag_fcd (s, i) = Localinput_symbol_v.is_localinput_fence_cell_databox_constructor s;;
  
let tag_loi_fcd = Tree_v.only_node_of_node_predicate_off_tree pre_tag_fcd tag_loi_lcd_st;;

test_number 3 (
(tag_loi_fcd : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
      (Localinput_fence_cell_symbol_t.Localinput_fence_cell_databox_symbol
        (Localinput_fence_cell_databox_symbol_t.Localinput_fence_cell_databox_constructor
          "test_ao"))),
   [1; 2; 2; 2; 1; 33; 11])
);;

(* Coerce Down *)
let tag_fcd = Localinput_fence_cell_databox_tag_v.localinput_fence_cell_databox_tag_off_localinput_tag tag_loi_fcd;;

test_number 4 (
tag_fcd = provide tag_vnc
);;
