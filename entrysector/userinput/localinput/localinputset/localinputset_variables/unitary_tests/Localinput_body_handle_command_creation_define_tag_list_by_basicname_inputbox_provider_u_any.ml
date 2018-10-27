open Make_test_v;;

testing "Localinput_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_v;; 

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_lhc_l =
  Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let pre_tag_lcd (s, i) = 
    Localinput_body_handle_command_symbol_v.is_localinput_body_handle_command_creation_define_symbol_off_localinput_body_handle_command_symbol s;;

let tag_lhc_sl = List.filter pre_tag_lcd tag_lhc_l;;

test_number 1 (
( tag_lhc_sl :
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
    [8; 38; 1; 21; 1])]
);;

let tag_lcd_sl = List.map 
    (Tag_v.map_entity 
       Localinput_body_handle_command_symbol_v.localinput_body_handle_command_creation_define_symbol_off_localinput_body_handle_command_symbol)
    tag_lhc_sl;;

test_number 2 (
( tag_lcd_sl :
  Localinput_body_handle_command_creation_define_symbol_t.localinput_body_handle_command_creation_define_symbol
  Tag_t.tag list ) =
  [(Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Con_db1",
    [1; 38; 1; 21; 1]);
   (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Con_hom",
    [2; 38; 1; 21; 1]);
   (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Cen_b",
    [3; 38; 1; 21; 1]);
   (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Poi_a",
    [4; 38; 1; 21; 1]);
   (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Hom_b_2",
    [5; 38; 1; 21; 1]);
   (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Poi_h",
    [6; 38; 1; 21; 1]);
   (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Uni_len",
    [7; 38; 1; 21; 1]);
   (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
     "Uni_ang",
    [8; 38; 1; 21; 1])]
);;

test_number 3 (
tag_lcd_sl = provide nam_ibo
);;
