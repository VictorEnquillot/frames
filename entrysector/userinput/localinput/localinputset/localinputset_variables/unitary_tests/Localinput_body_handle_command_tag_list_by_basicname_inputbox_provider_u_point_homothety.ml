open Make_test_v;;

testing "Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_lhc_l = provide nam_ibo;;

let cou = List.length tag_loi_lhc_l;;

test_number 1 (
(cou : int ) = 
9
);;

test_number 2 (
( tag_loi_lhc_l : 
  Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol
  Tag_t.tag list ) =
  [(Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Con_loc")),
    [1; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Con_hom")),
    [2; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Cen_b")),
    [3; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Poi_a")),
    [4; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Hom_b_2")),
    [5; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Poi_h")),
    [6; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Uni_len")),
    [7; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Uni_ang")),
    [8; 37; 12]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
     (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
       (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
         "Poi_h")),
    [9; 37; 12])]
);;

