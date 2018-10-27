open Make_test_v;;

testing "Localinput_body_handle_command_unit_tag_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_command_unit_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_body_handle_command_unit_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_body_handle_command_unit_tag_list_by_basicname_inputbox_provider_v;; 

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_lhc_l =
    Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

let pre_tag_hcu (s, i) = 
    Localinput_body_handle_command_symbol_v.is_localinput_body_handle_command_unit_symbol_off_localinput_body_handle_command_symbol s;;

let tag_lhc_hcu_sl = List.filter pre_tag_hcu tag_lhc_l;;

test_number 1 (
( tag_lhc_hcu_sl :
    Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol
    Tag_t.tag list ) =
[(Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
    (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
       (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
          "Poi_h")),
  [9; 38; 1; 21; 1])]
);;

let tag_lcu_sl = List.map 
    (Tag_v.map_entity
       Localinput_body_handle_command_symbol_v.localinput_body_handle_command_unit_symbol_off_localinput_body_handle_command_symbol)
    tag_lhc_hcu_sl
;;

test_number 2 (
(tag_lcu_sl :
  Localinput_body_handle_command_unit_symbol_t.localinput_body_handle_command_unit_symbol
  Tag_t.tag list ) =
  [(Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
     (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
       "Poi_h"),
    [9; 38; 1; 21; 1])]
);;

test_number 3 (
tag_lcu_sl = provide nam_ibo
);;
