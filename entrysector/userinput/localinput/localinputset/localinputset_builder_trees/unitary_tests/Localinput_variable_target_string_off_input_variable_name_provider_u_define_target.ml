open Make_test_v;;

testing "Localinput_variable_target_string_off_by_input_variable_name_provider_v with
    Localinput_variable_target_string_off_input_variable_name_provider_u_define_target.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_variable_target_string_off_input_variable_name_provider_u_define_target.ml";; 

*)

(* Input File *)

let nof_inp = "Define_target.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_ivn = "Poi_h";;
let tag_inp_cde_st = Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 1 (
tag_inp_cde_st
(* : Localinput_symbol_t.input_entity_symbol Tree_t.tree list *)
= 
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
     [1; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_h"),
      [1; 1; 11]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_target,
       [2; 1; 11]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_type,
         [1; 2; 1; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "property"),
          [1; 1; 2; 1; 11]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "target"),
          [2; 1; 2; 1; 11]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "transformed"),
          [3; 1; 2; 1; 11]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "user"),
          [4; 1; 2; 1; 11])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_operator_constructor,
         [2; 2; 1; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Hom_b_2"),
          [1; 2; 2; 1; 11])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_operand,
         [3; 2; 1; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Poi_a"),
          [1; 3; 2; 1; 11])])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end,
      [3; 1; 11])])
);;

let sym_inp_cde_st = Tree_v.map Tag_v.entity_off_tag tag_inp_cde_st;;

let str_l = String_off_in_database_by_external_input_variable_name_provider_v.provide nam_ivn;;

test_number 2 (
str_l 
(* : string list *)
= 
["property"; "target"; "transformed"; "user"]
);;
