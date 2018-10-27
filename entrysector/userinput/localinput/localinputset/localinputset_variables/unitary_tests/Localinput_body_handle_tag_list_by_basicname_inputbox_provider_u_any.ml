open Make_test_v;;
testing "Localinput_body_handle_tag_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Localinput_body_handle_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_body_handle_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_lib_l = 
  Localinput_body_tag_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo
;; 

let pre_tag_lbh (s, i) = 
  Localinput_body_symbol_v.is_localinput_body_handle_symbol_off_localinput_body_symbol s
;;

let tag_lib_sl = List.filter pre_tag_lbh tag_lib_l;;

let tag_lbh_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_body_symbol_v.localinput_body_handle_symbol_off_localinput_body_symbol) 
    tag_lib_sl;;

test_number 1 (
(tag_lbh_l : Localinput_body_handle_symbol_t.localinput_body_handle_symbol Tag_t.tag
    list ) =
[(Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Con_db1"))),
  [1; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_context_symbol
     (Localinput_body_handle_variable_context_symbol_t.Localinput_body_handle_variable_context_constructor
       "Con_db1")),
  [2; 2; 1; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Con_hom"))),
  [2; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_context_symbol
     (Localinput_body_handle_variable_context_symbol_t.Localinput_body_handle_variable_context_constructor
       "Con_hom")),
  [2; 2; 2; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Cen_b"))),
  [3; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
     (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
       "Cen_b")),
  [2; 2; 3; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Poi_a"))),
  [4; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
     (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
       "Poi_a")),
  [2; 2; 4; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Hom_b_2"))),
  [5; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_operator_symbol
     (Localinput_body_handle_variable_operator_symbol_t.Localinput_body_handle_variable_operator_constructor
       "Hom_b_2")),
  [2; 2; 5; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_cofactor,
  [4; 2; 2; 2; 5; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Poi_h"))),
  [6; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_target_symbol
     (Localinput_body_handle_variable_target_symbol_t.Localinput_body_handle_variable_target_constructor
       "Poi_h")),
  [2; 2; 6; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Uni_len"))),
  [7; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
     (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
       "Uni_len")),
  [2; 2; 7; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
     (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
       (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
         "Uni_ang"))),
  [8; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
   (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
     (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
       "Uni_ang")),
  [2; 2; 8; 38; 1; 21; 1]);
 (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
   (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
     (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
       (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
         "Poi_h"))),
  [9; 38; 1; 21; 1])]
);;

test_number 2 (
tag_lbh_l = provide nam_ibo
);;
