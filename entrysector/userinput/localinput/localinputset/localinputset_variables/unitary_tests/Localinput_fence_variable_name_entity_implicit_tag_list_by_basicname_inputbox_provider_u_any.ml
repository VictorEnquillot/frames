open Make_test_v;;

testing "Localinput_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_vne_l = 
  Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let pre_tag_vne (s, i) = 
  Localinput_fence_variable_name_entity_symbol_v.is_localinput_fence_variable_name_entity_implicit_symbol_off_localinput_fence_variable_name_entity_symbol s;;

let tag_vne_sl = List.filter pre_tag_vne tag_vne_l;;

test_number 1 (
( tag_vne_sl :
  Localinput_fence_variable_name_entity_symbol_t.localinput_fence_variable_name_entity_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
     (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
       "Poi_h"),
    [1; 2; 9; 38; 1; 21; 1])]
);;

let tag_lei_sl = List.map  (* Coerce Down *)   
    (Tag_v.map_entity
       Localinput_fence_variable_name_entity_symbol_v.localinput_fence_variable_name_entity_implicit_symbol_off_localinput_fence_variable_name_entity_symbol)
    tag_vne_sl;;

test_number 2 (
( tag_lei_sl :
    Localinput_fence_variable_name_entity_implicit_symbol_t.localinput_fence_variable_name_entity_implicit_symbol
    Tag_t.tag list ) =
  [(Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
      "Poi_h",
    [1; 2; 9; 38; 1; 21; 1])]
);;

test_number 3 (
tag_lei_sl = provide nam_ibo
);;

