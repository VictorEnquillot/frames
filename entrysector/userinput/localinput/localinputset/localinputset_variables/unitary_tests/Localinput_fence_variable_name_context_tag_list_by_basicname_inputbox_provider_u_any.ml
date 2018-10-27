open Make_test_v;;

testing "Localinput_fence_variable_name_context_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_variable_name_context_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_variable_name_context_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_fence_variable_name_context_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_lvn_l = 
    Localinput_fence_variable_name_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

let pre_tag_vnc (s, i) = 
    Localinput_fence_variable_name_symbol_v.is_localinput_fence_variable_name_context_constructor s;;

let tag_lvn_vnc_l = List.filter pre_tag_vnc tag_lvn_l;;

let tag_vnc_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_fence_variable_name_symbol_v.localinput_fence_variable_name_context_symbol_off_localinput_fence_variable_name_symbol)
    tag_lvn_vnc_l;;

test_number 1 (
(tag_vnc_l :
  Localinput_fence_variable_name_context_symbol_t.localinput_fence_variable_name_context_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
     "Con_db1",
    [1; 2; 1; 38; 1; 21; 1]);
   (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
     "Con_hom",
    [1; 2; 2; 38; 1; 21; 1])]
);;

test_number 2 (
tag_vnc_l = provide nam_ibo
);;

