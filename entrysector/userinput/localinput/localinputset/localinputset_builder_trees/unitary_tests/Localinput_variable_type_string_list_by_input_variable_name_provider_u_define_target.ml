open Make_test_v;;

testing "Localinput_variable_type_string_list_by_input_variable_name_provider_v with
    Localinput_variable_type_string_list_by_input_variable_name_provider_u_define_target.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_variable_type_string_list_by_input_variable_name_provider_u_define_target.ml";; 

*)

(* Input File *)

let nof_inp = "Define_target.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_iev = "Poi_h";;
let tag_inp_cde_st = Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide nam_iev;;

test_number 1 (
(tag_inp_cde_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
     [1; 12]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_h"),
      [1; 1; 12]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_target,
       [2; 1; 12]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_type,
         [1; 2; 1; 12]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "property"),
          [1; 1; 2; 1; 12]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "target"),
          [2; 1; 2; 1; 12]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "created"),
          [3; 1; 2; 1; 12]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "figure_tag"),
          [4; 1; 2; 1; 12])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
            Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor),
         [2; 2; 1; 12]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Hom_b_2"),
          [1; 2; 2; 1; 12])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          (Localinput_keyword_symbol_t.Localinput_keyword_operand_symbol
            Localinput_keyword_operand_symbol_t.Localinput_keyword_operand_constructor),
         [3; 2; 1; 12]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Poi_a"),
          [1; 3; 2; 1; 12])])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end,
      [3; 1; 12])])
);;

let str_l = Localinput_variable_type_string_list_by_input_variable_name_provider_v.provide nam_iev;;

test_number 2 (
str_l 
(* : string list *)
= 
["property"; "target"; "created"; "figure_tag"]
);;
