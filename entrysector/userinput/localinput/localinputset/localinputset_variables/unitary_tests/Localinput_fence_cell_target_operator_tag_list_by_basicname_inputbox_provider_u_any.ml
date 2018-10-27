open Make_test_v;;

testing "Localinput_fence_cell_target_operator_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_cell_target_operator_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_cell_target_operator_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_fence_cell_target_operator_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_lfc_l = 
  Localinput_fence_cell_tag_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo;;

let pre_tag_lto (s, i) = 
    Localinput_fence_cell_symbol_v.is_localinput_fence_cell_target_operator_symbol_off_localinput_fence_cell_symbol s;;

let tag_lfc_sl = List.filter pre_tag_lto tag_lfc_l;;

let tag_lto_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_fence_cell_symbol_v.localinput_fence_cell_target_operator_symbol_off_localinput_fence_cell_symbol) 
    tag_lfc_sl;;

test_number 1 (
(tag_lto_l :
  Localinput_fence_cell_target_operator_symbol_t.localinput_fence_cell_target_operator_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_cell_target_operator_symbol_t.Localinput_fence_cell_target_operator_constructor
     "Hom_b_2",
    [2; 2; 2; 2; 6; 38; 1; 21; 1])]
);;

test_number 2 (
tag_lto_l = provide nam_ibo
);;

