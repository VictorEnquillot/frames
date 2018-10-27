open Make_test_v;;

testing "Localinput_fence_cell_target_operator_tag_by_localinput_fence_variable_name_entity_target_tag_provider_v with
    Localinput_fence_cell_target_operator_tag_by_localinput_fence_variable_name_entity_target_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_fence_cell_target_operator_tag_by_localinput_fence_variable_name_entity_target_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

let tag_vne_l = 
    Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
      fno_inp;;

let cou = List.length tag_vne_l;;

test_number 1 (
(cou : int ) = 
8
);;

(* Argument tag_vne Poi_h Target *)

let nam_var = "Poi_h";;
let pre_tag_net_sof sof (s, i) = Localinput_fence_variable_name_entity_symbol_v.localinput_fence_variable_name_entity_target_constructor sof = s;;

let tag_vne_net_poi_h = List_v.only_element_of_predicate_off_list (pre_tag_net_sof nam_var) tag_vne_l;;

test_number 2 (
(tag_vne_net_poi_h :
  Localinput_fence_variable_name_entity_symbol_t.localinput_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
    (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
      "Poi_h"),
   [1; 2; 6; 38; 11])
);;

let tag_net = Tag_v.map_entity 
    Localinput_fence_variable_name_entity_symbol_v.localinput_fence_variable_name_entity_target_symbol_off_localinput_fence_variable_name_entity_symbol
    tag_vne_net_poi_h
;;

open Localinput_fence_cell_target_operator_tag_by_localinput_fence_variable_name_entity_target_tag_provider_v;;

let tag_vne = Tag_v.map_entity (* Coerce Up *)
    Localinput_fence_variable_name_entity_symbol_v.localinput_fence_variable_name_entity_symbol_of_localinput_fence_variable_name_entity_target_symbol
    tag_net;;

test_number 3 ( 
( tag_vne :
  Localinput_fence_variable_name_entity_symbol_t.localinput_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
    (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
      "Poi_h"),
   [1; 2; 6; 38; 11])
);;

let tag_lcd = 
    Localinput_body_handle_command_creation_define_tag_by_localinput_fence_variable_name_entity_tag_provider_v.provide
      tag_vne;;

test_number 4 (  
(tag_lcd :
  Localinput_body_handle_command_creation_define_symbol_t.localinput_body_handle_command_creation_define_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
    "Poi_h",
   [6; 38; 11])
);;

let tag_loi_lcd_st = Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_string_off_provider_v.provide nam_var;;

let pre_tag_cto (s, i) = 
    Localinput_symbol_v.is_localinput_fence_cell_target_operator_symbol_off_localinput_symbol s;;

let tag_loi_cto = Tree_v.only_node_of_node_predicate_off_tree pre_tag_cto tag_loi_lcd_st ;;

test_number 5 (
(tag_loi_cto : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
      (Localinput_fence_cell_symbol_t.Localinput_fence_cell_target_operator_symbol
        (Localinput_fence_cell_target_operator_symbol_t.Localinput_fence_cell_target_operator_constructor
          "Hom_b_2"))),
   [2; 2; 2; 2; 6; 38; 11])
);;

let tag_cto = Tag_v.map_entity (* Coerce Down *)
    Localinput_symbol_v.localinput_fence_cell_target_operator_symbol_off_localinput_symbol
    tag_loi_cto;;

test_number 6 (
(tag_cto :
  Localinput_fence_cell_target_operator_symbol_t.localinput_fence_cell_target_operator_symbol
  Tag_t.tag ) =
  (Localinput_fence_cell_target_operator_symbol_t.Localinput_fence_cell_target_operator_constructor
    "Hom_b_2",
   [2; 2; 2; 2; 6; 38; 11])
);;

test_number 7 (
tag_cto = provide tag_net
);;
