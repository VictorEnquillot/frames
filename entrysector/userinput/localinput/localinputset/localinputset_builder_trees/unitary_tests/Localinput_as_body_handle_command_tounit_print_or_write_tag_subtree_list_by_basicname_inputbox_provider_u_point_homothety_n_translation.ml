open Make_test_v;;

testing "Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_n_translation_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;


let tag_inp_com_stl = Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let is_command_print_or_write sym =
  Localinput_symbol_v.is_input_body_handle_command_tounit_print_constructor sym
||
  Localinput_symbol_v.is_input_body_handle_command_write sym
;;
 
let is_command_print_or_write_root_of_input_tag_tree tag_inp_t =
  let tag_roo = Tree_v.root_off_tree tag_inp_t in
  is_command_print_or_write (Tag_v.entity_off_tag tag_roo)
;;

let tag_inp_pow_stl = List.filter is_command_print_or_write_root_of_input_tag_tree tag_inp_com_stl;;

test_number 1 (
tag_inp_pow_stl
(* : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree list *)
=
  [Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_print_constructor,
      [10; 28]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_a"),
       [1; 10; 28]);
     Tree_t.Inner
      ((Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_units,
        [2; 10; 28]),
      [Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
          [1; 2; 10; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "length"),
           [1; 1; 2; 10; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "meter"),
           [2; 1; 2; 10; 28])]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
          [2; 2; 10; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "angle"),
           [1; 2; 2; 10; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "radian"),
           [2; 2; 2; 10; 28])]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_end,
         [3; 2; 10; 28])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end,
       [3; 10; 28])]);
   Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_print_constructor,
      [11; 28]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_t"),
       [1; 11; 28]);
     Tree_t.Inner
      ((Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_units,
        [2; 11; 28]),
      [Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
          [1; 2; 11; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "length"),
           [1; 1; 2; 11; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "meter"),
           [2; 1; 2; 11; 28])]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
          [2; 2; 11; 28]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "angle"),
           [1; 2; 2; 11; 28]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "radian"),
           [2; 2; 2; 11; 28])]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_end,
         [3; 2; 11; 28])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end,
       [3; 11; 28])])]
);;

test_number 2 (
tag_inp_pow_stl
=
Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v.provide fno_inp
);;
