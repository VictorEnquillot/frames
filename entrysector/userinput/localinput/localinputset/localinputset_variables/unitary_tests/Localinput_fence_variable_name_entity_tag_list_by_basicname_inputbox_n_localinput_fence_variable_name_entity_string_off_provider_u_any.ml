open Make_test_v;;

testing "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_n_localinput_fence_variable_name_entity_string_off_provider_v with
    Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_n_localinput_fence_variable_name_entity_string_off_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_n_localinput_fence_variable_name_entity_string_off_provider_u_any.ml";; 

*)

open Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_n_localinput_fence_variable_name_entity_string_off_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let sof_vne = "Poi_h";;

let pre_tag_vne_sof sof (s, i) = 
  (Localinput_fence_variable_name_entity_symbol_v.string_off s = sof);;

let tag_vne_l = 
  Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;


test_number 1 (
( tag_vne_l :
  Localinput_fence_variable_name_entity_symbol_t.localinput_fence_variable_name_entity_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Cen_b"),
    [1; 2; 3; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Poi_a"),
    [1; 2; 4; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
     (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
       "Poi_h"),
    [1; 2; 6; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [1; 2; 7; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_ang"),
    [1; 2; 8; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
     (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
       "Poi_h"),
    [1; 2; 9; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [2; 2; 2; 9; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_ang"),
    [3; 2; 2; 9; 38; 1; 21; 1])]
);;

let result = List.filter (pre_tag_vne_sof sof_vne) tag_vne_l;;

test_number 2 (
(result :
  Localinput_fence_variable_name_entity_symbol_t.localinput_fence_variable_name_entity_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
     (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
       "Poi_h"),
    [1; 2; 6; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
     (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
       "Poi_h"),
    [1; 2; 9; 38; 1; 21; 1])]
);;

test_number 3 (
result = provide (nam_ibo, sof_vne)
);;

