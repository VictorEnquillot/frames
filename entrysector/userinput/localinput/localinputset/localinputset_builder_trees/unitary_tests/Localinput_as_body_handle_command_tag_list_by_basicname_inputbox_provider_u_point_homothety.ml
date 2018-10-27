open Make_test_v;;

testing "Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Localinput_as_body_handle_command_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v;;

let tag_inp_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let tag_inp_bhc_l = provide fno_inp;;

let cou = List.length tag_inp_bhc_l;;

test_number 1 (
(cou : int ) = 
9
);;

test_number 2 (
( tag_inp_bhc_l : 
  Localinput_body_handle_command_symbol_t.input_body_handle_command_symbol
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
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
     (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
       (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
         "Poi_h")),
    [9; 37; 12])]
);;

