open Make_test_v;;

testing "Localinput_body_handle_command_unit_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_command_unit_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_body_handle_command_unit_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_body_handle_command_unit_tag_subtree_list_by_basicname_inputbox_provider_v;;

let tag_loi_lhc_stl =
    Localinput_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo;;

let pre_tag_lcu (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_unit_symbol_off_localinput_symbol s;;
 
let pre_tag_lcu_roo t = pre_tag_lcu (Tree_v.root_node_off_tree t);;

List.filter pre_tag_lcu_roo tag_loi_lhc_stl;;

let tag_loi_lcu_stl = provide nam_ibo;;

let cou = List.length tag_loi_lcu_stl;;

test_number 1 (
(cou : int ) = 
1
);;

(* all Root Tags *)

let tag_loi_lcu_roo_l = List.map Tree_v.root_node_off_tree tag_loi_lcu_stl;;

test_number 2 (
( tag_loi_lcu_roo_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_h"))))),
    [9; 38; 11])]
);;

