open Make_test_v;;

testing "Localinput_as_body_handle_command_tounit_print_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_tounit_print_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_as_body_handle_command_tounit_print_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_as_body_handle_command_tounit_print_tag_subtree_list_by_basicname_inputbox_provider_v;;

let tag_inp_bhc_stl =
    Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide 
    fno_inp;;

let pre_tag_hcu (s, i) = Localinput_symbol_v.is_input_body_handle_command_tounit_print_symbol_off_input_symbol s;;
 
let pre_tag_hcu_roo t = pre_tag_hcu (Tree_v.root_node_off_tree t);;

List.filter pre_tag_hcu_roo tag_inp_bhc_stl;;

let tag_inp_hcu_stl = provide fno_inp;;

let cou = List.length tag_inp_hcu_stl;;

test_number 1 (
(cou : int ) = 
1
);;

(* all Root Tags *)

let tag_inp_hcu_roo_l = List.map Tree_v.root_node_off_tree tag_inp_hcu_stl;;

test_number 2 (
( tag_inp_hcu_roo_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
           (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
             (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
               "Poi_h"))))),
    [9; 38; 11])]
);;

