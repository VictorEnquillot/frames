open Make_test_v;;

testing "Localinput_as_variable_target_symbol_by_input_variable_name_provider_v with
    Localinput_as_variable_target_symbol_by_input_variable_name_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_as_variable_target_symbol_by_input_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_ivn = "Poi_h";;
let tag_inp_cde_st = Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 1 (
(tag_inp_cde_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
     [6; 27]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_h"),
      [1; 6; 27]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_target,
       [2; 6; 27]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_type,
         [1; 2; 6; 27]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "property"),
          [1; 1; 2; 6; 27]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "target"),
          [2; 1; 2; 6; 27]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "transformed"),
          [3; 1; 2; 6; 27]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "user"),
          [4; 1; 2; 6; 27])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
            Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor),
         [2; 2; 6; 27]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Hom_b_2"),
          [1; 2; 2; 6; 27])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          (Localinput_keyword_symbol_t.Localinput_keyword_operand_symbol
            Localinput_keyword_operand_symbol_t.Localinput_keyword_operand_constructor),
         [3; 2; 6; 27]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Poi_a"),
          [1; 3; 2; 6; 27])])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end,
      [3; 6; 27])])
);;

let str_typ_l = 
    Localinput_variable_type_string_list_by_input_variable_name_provider_v.provide 
      nam_ivn;;

test_number 2 (
(str_typ_l : string list ) = 
["property"; "target"; "transformed"; "user"]
);;

let sof_inp_mak = 
    Make_argument_by_target_input_variable_name_provider_v.provide
      nam_ivn;;

test_number 3 (
(sof_inp_mak : string ) = 
"property_target_transformed_figure Poi_h"
);;

let what_target_predicate str =
    str = "measure" || str = "transformed" ;;

let wha_tar = List.find what_target_predicate str_typ_l;;
let arg_inp_mak = ("input_variable_target_"^wha_tar);;

test_number 4 (
(arg_inp_mak : string ) = 
"input_variable_target_transformed"
);;

let sym_inp = Localinput_as_variable_target_symbol_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 5 (
(sym_inp : Localinput_symbol_t.input_symbol ) =
  Localinput_symbol_t.Localinput_variable_symbol
   (Localinput_variable_symbol_t.Localinput_variable_target_symbol
     (Localinput_variable_target_symbol_t.Localinput_variable_target_transformed
       "property_target_transformed_figure Poi_h"))
);;

