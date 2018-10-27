open Make_test_v;;

testing "Make_argument_by_target_localinput_variable_name_provider_v with
    Make_argument_by_target_localinput_variable_name_provider_u_define_target.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Make_argument_by_target_localinput_variable_name_provider_u_define_target.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Define_target";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let tag_loi_stl = Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide fno_inp;;
let sym_inp_stl = List.map (Tree_v.map Tag_v.entity_off_tag) tag_loi_stl ;;

let sym_inp_ll = List.map Tree_v.topson_node_list_off_tree sym_inp_stl;;

test_number 1 (
(sym_inp_ll : Localinput_symbol_t.localinput_symbol list list ) =
  [[Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_h");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end]]
);;

let nam_ivn = "Poi_h";;

let sym_kin_ivn = Localinput_variable_kind_by_localinput_variable_name_provider_v.provide nam_ivn;;

test_number 2 ( 
(sym_kin_ivn : Localinput_symbol_t.localinput_symbol ) =
Localinput_symbol_t.Localinput_keyword_symbol
  Localinput_keyword_symbol_t.Localinput_keyword_target
);;

let str_mak_ext_l = 
    Localinput_variable_type_string_list_by_localinput_variable_name_provider_v.provide 
      nam_ivn;;

test_number 3 (
(str_mak_ext_l : string list ) =
["property"; "target"; "created"; "figure_tag"]
);;

let str_mak_nam_ext = nam_ivn;;

let str_mak  = List_v.name_underscored_off_string_list str_mak_ext_l;;

test_number 4 (
(str_mak : string ) = 
 "property_target_created_figure_tag"
);;

let arg_mak = Make_argument_by_target_localinput_variable_name_provider_v.provide nam_ivn;;

test_number 5 (
(arg_mak : string ) =
str_mak
);;
