open Make_test_v;;

testing "Localinput_as_body_handle_command_define_operator_tag_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_define_operator_tag_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_as_body_handle_command_define_operator_tag_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

*)

(* Input File *)

let nof_inp = "Print_homothety_n_translation_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

open Localinput_as_body_handle_command_define_operator_tag_list_by_basicname_inputbox_provider_v;;

let tag_inp_cde_stl = 
    Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      fno_inp;;

let tag_pre_tre =
  let pre_lea t = Localinput_symbol_v.is_input_variable_name_constructor (Tag_v.entity_off_tag t) in
  let pre_nod t = Localinput_symbol_v.is_input_keyword_operator (Tag_v.entity_off_tag t)in
  Tree_v.has_a_topson_leaf_and_a_topson_node_of_leaf_predicate_of_node_predicate_off_tree pre_lea pre_nod 
;;

let tag_inp_pro_stl = List.filter 
    tag_pre_tre
    tag_inp_cde_stl;;

test_number 1 (
( tag_inp_pro_stl : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree list ) =
  [Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_command_define,
      [3; 28]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Hom_b_2"),
       [1; 3; 28]);
     Tree_t.Inner
      ((Localinput_symbol_t.Localinput_keyword_symbol
         (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
           Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor),
        [2; 3; 28]),
      [Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_type,
          [1; 2; 3; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "operator"),
           [1; 1; 2; 3; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "transformation"),
           [2; 1; 2; 3; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "homothety"),
           [3; 1; 2; 3; 28])]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_center,
          [2; 2; 3; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "Cen_b"),
           [1; 2; 2; 3; 28])]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_scale_factor,
          [3; 2; 3; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_float "2.0"),
           [1; 3; 2; 3; 28])])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end,
       [3; 3; 28])]);
   Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_command_define,
      [4; 28]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Tra_bc"),
       [1; 4; 28]);
     Tree_t.Inner
      ((Localinput_symbol_t.Localinput_keyword_symbol
         (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
           Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor),
        [2; 4; 28]),
      [Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_type,
          [1; 2; 4; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "operator"),
           [1; 1; 2; 4; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "transformation"),
           [2; 1; 2; 4; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "translation"),
           [3; 1; 2; 4; 28])]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_segment,
          [2; 2; 4; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "Vec_bc"),
           [1; 2; 2; 4; 28])])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end,
       [3; 4; 28])])]
);;

let len = List.length tag_inp_pro_stl;;

test_number 2 (
(len : int ) =
2
);;

let tag_inp_pro_l = Localinput_as_body_handle_command_define_operator_tag_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 3 (
(tag_inp_pro_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_handle_command_symbol
     Localinput_body_handle_command_symbol_t.Localinput_command_define,
    [3; 28]);
   (Localinput_symbol_t.Localinput_body_handle_command_symbol
     Localinput_body_handle_command_symbol_t.Localinput_command_define,
    [4; 28])]
);;
