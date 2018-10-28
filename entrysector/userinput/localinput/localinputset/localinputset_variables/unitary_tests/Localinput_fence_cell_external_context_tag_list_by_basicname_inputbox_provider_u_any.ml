open Make_test_v;;

testing "Localinput_fence_cell_external_context_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_cell_external_context_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_cell_external_context_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_fence_cell_external_context_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_ifc_l = 
  Localinput_fence_cell_tag_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo;;

let pre_tag_lec (s, i) = 
    Localinput_fence_cell_symbol_v.is_localinput_fence_cell_external_context_symbol_off_localinput_fence_cell_symbol s;;

let tag_ifc_sl = List.filter pre_tag_lec tag_ifc_l;;

let tag_lec_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_fence_cell_symbol_v.localinput_fence_cell_external_context_symbol_off_localinput_fence_cell_symbol) 
    tag_ifc_sl;;

test_number 1 (
(tag_lec_l :
  Localinput_fence_cell_external_context_symbol_t.localinput_fence_cell_external_context_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
     "Con_db1",
    [3; 2; 2; 2; 3; 38; 1; 21; 1]);
   (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
     "Con_db1",
    [3; 2; 2; 2; 4; 38; 1; 21; 1]);
   (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
     "Con_nwc",
    [2; 2; 2; 2; 7; 38; 1; 21; 1]);
   (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
     "Con_nwc",
    [2; 2; 2; 2; 8; 38; 1; 21; 1])]
);;

test_number 2 (
tag_lec_l = provide nam_ibo
);;
