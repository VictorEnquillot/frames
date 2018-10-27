open Make_test_v;;

testing "Localinput_body_handle_command_define_target_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_command_define_target_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_body_handle_command_define_target_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let tag_loi_com_stl = Localinput_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_pre_tre =
  let pre_lea t = Localinput_symbol_v.is_localinput_variable_name_constructor (Tag_v.entity_off_tag t) in
  let pre_nod t = Localinput_symbol_v.is_localinput_keyword_target (Tag_v.entity_off_tag t)in
  Tree_v.has_a_topson_leaf_and_a_topson_node_of_leaf_predicate_of_node_predicate_off_tree pre_lea pre_nod 
;;

let tag_loi_tar_stl =  List.filter tag_pre_tre tag_loi_com_stl;;

test_number 1 (
(tag_loi_tar_stl : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree list) =
[Tree_t.Inner
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
          (Localinput_constant_symbol_t.Localinput_constant_string "created"),
         [3; 1; 2; 6; 27]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_constant_symbol
          (Localinput_constant_symbol_t.Localinput_constant_string "figure_tag"),
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
     [3; 6; 27])])]
);;
