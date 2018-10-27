open Make_test_v;;
testing "Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_lbh_l = 
  Localinput_body_handle_tag_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo
;;

let pre_tag_lhc (s, i) = 
  Localinput_body_handle_symbol_v.is_localinput_body_handle_command_symbol_off_localinput_body_handle_symbol s
;;

let tag_lbh_sl = List.filter pre_tag_lhc tag_lbh_l;;

let tag_lhc_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_body_handle_symbol_v.localinput_body_handle_command_symbol_off_localinput_body_handle_symbol)
       tag_lbh_sl;;

test_number 1 (
( tag_lhc_l :
  Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol
  Tag_t.tag list ) =
  [(Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Con_db1")),
    [1; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Con_hom")),
    [2; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Cen_b")),
    [3; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Poi_a")),
    [4; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Hom_b_2")),
    [5; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Poi_h")),
    [6; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Uni_len")),
    [7; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Uni_ang")),
    [8; 38; 1; 21; 1]);
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
     (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
       (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
         "Poi_h")),
    [9; 38; 1; 21; 1])]
);;

test_number 2 (
tag_lhc_l = provide nam_ibo
);;
