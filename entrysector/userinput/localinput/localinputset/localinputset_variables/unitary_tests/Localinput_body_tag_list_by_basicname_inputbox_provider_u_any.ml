open Make_test_v;;

testing "Localinput_body_tag_list_by_basicname_inputbox_provider_v with
    Localinput_body_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_body_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_body_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_loi_l = 
    Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

let pre_tag_lib (s, i) = 
  Localinput_symbol_v.is_localinput_body_symbol_off_localinput_symbol s;;

let tag_loi_lib_l = List.filter pre_tag_lib tag_loi_l;;

let tag_lib_l = List.map  (* Coerce Down *)     
    Localinput_body_tag_v.localinput_body_tag_off_localinput_tag
    tag_loi_lib_l;;

let cou_tag_lib_l = List.length tag_lib_l;;

test_number 1 (
(cou_tag_lib_l : int ) = 
42
);;

test_number 2 (
tag_lib_l = provide nam_ibo
);;

