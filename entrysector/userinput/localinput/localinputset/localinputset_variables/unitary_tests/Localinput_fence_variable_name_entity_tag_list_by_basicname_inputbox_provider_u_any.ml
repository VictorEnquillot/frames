open Make_test_v;;

testing "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
 let tag_lvn_l = 
    Localinput_fence_variable_name_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo
 ;;  

  let pre_tag_lne (s, i) = 
    Localinput_fence_variable_name_symbol_v.is_localinput_fence_variable_name_entity_symbol_off_localinput_fence_variable_name_symbol s 
 ;;

  let tag_lvn_sl = List.filter pre_tag_lne tag_lvn_l;;

let tag_lne_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
    Localinput_fence_variable_name_symbol_v.localinput_fence_variable_name_entity_symbol_off_localinput_fence_variable_name_symbol)
    tag_lvn_sl;;

test_number 1 (
( tag_lne_l :
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

test_number 2 (
tag_lne_l = provide nam_ibo
);;

