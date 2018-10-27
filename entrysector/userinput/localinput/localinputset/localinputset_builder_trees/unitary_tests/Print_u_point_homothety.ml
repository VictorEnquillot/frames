open Make_test_v;;

testing "Print_v with
    Print_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Print_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;


let tag_inp_pow_stl = 
  Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 1 (
tag_inp_pow_stl
(* : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree list *)
=
  [Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_print_constructor,
      [2; 35]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_a"),
       [1; 2; 35]);
     Tree_t.Inner
      ((Localinput_symbol_t.Localinput_keyword_symbol
         (Localinput_keyword_symbol_t.Localinput_keyword_units_symbol
           Localinput_keyword_units_symbol_t.Localinput_keyword_units_constructor),
        [2; 2; 35]),
      [Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
          [1; 2; 2; 35]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "length"),
           [1; 1; 2; 2; 35]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "meter"),
           [2; 1; 2; 2; 35])]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
          [2; 2; 2; 35]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "angle"),
           [1; 2; 2; 2; 35]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string "radian"),
           [2; 2; 2; 2; 35])]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_end,
         [3; 2; 2; 35])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end,
       [3; 2; 35])]);
   Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_print_constructor,
      [3; 35]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_statistics,
       [1; 3; 35]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end,
       [2; 3; 35])])]
);;

