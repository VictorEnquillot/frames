open Make_test_v;;

testing "Localinput_fence_cell_target_operand_tag_by_input_fence_variable_name_entity_target_tag_provider_v with
    Localinput_fence_cell_target_operand_tag_by_input_fence_variable_name_entity_target_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_fence_cell_target_operand_tag_by_input_fence_variable_name_entity_target_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let tag_inp_vne_l = 
    Localinput_fence_variable_name_entity_tag_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

let cou = List.length tag_inp_vne_l;;

test_number 1 (
(cou : int ) = 
8
);;

(* Argument tag_vne Poi_h Target *)

let sof_vne = "Poi_h";;
let pre_tag_vne_sof sof (s, i) = Localinput_fence_variable_name_entity_symbol_v.input_fence_variable_name_entity_target_constructor sof = s;;

let tag_vne_net = List_v.only_element_of_predicate_off_list (pre_tag_vne_sof sof_vne) tag_inp_vne_l;;

test_number 2 (
(tag_vne_net :
  Localinput_fence_variable_name_entity_symbol_t.input_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
    (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
      "Poi_h"),
   [1; 2; 6; 38; 11])
);;

let tag_net = Tag_v.map_entity 
    Localinput_fence_variable_name_entity_symbol_v.input_fence_variable_name_entity_target_symbol_off_input_fence_variable_name_entity_symbol
    tag_vne_net
;;

open Localinput_fence_cell_target_operand_tag_by_input_fence_variable_name_entity_target_tag_provider_v;;

let tag_vne = Tag_v.map_entity (* Coerce Up *)
    Localinput_fence_variable_name_entity_symbol_v.input_fence_variable_name_entity_symbol_of_input_fence_variable_name_entity_target_symbol
    tag_net;;

test_number 3 ( 
( tag_vne :
  Localinput_fence_variable_name_entity_symbol_t.input_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
    (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
      "Poi_h"),
   [1; 2; 6; 38; 11])
);;

let tag_ccd = 
    Localinput_body_handle_command_creation_define_tag_by_input_fence_variable_name_entity_tag_provider_v.provide
      tag_vne;;

let tag_inp_ccd = Tag_v.map_entity 
      Localinput_symbol_v.input_symbol_of_input_body_handle_command_creation_define_symbol
      tag_ccd;;

test_number 4 (  
(tag_inp_ccd : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Poi_h"))))),
   [6; 38; 11])
);;

let tag_inp_ccd_st = Localinput_tag_subtree_by_input_as_root_tag_provider_v.provide tag_inp_ccd ;;

let pre_tag_cto (s, i) = 
    Localinput_symbol_v.is_input_fence_cell_target_operand_symbol_off_input_symbol s;;

let tag_inp_cto = Tree_v.only_node_of_node_predicate_off_tree pre_tag_cto tag_inp_ccd_st ;;

let tag_cto = Localinput_fence_cell_target_operand_tag_v.input_fence_cell_target_operand_tag_off_input_tag tag_inp_cto;;

test_number 5 (
(tag_cto :
  Localinput_fence_cell_target_operand_symbol_t.input_fence_cell_target_operand_symbol
  Tag_t.tag ) =
  (Localinput_fence_cell_target_operand_symbol_t.Localinput_fence_cell_target_operand_constructor
    "Poi_a",
   [3; 2; 2; 2; 6; 38; 11])
);;

test_number 6 (
tag_cto = provide tag_net
);;
