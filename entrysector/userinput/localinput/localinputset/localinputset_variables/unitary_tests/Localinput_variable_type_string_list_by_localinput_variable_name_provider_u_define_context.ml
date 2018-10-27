open Make_test_v;;

testing "Localinput_variable_type_string_list_by_localinput_variable_name_provider_v with
    Localinput_variable_type_string_list_by_localinput_variable_name_provider_u_define_context.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_variable_type_string_list_by_localinput_variable_name_provider_u_define_context.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Define_context";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_iev = "Poi_a";;
let tag_loi_cde_st = Localinput_as_body_handle_command_define_tag_subtree_by_localinput_variable_name_provider_v.provide nam_iev;;

test_number 1 (
tag_loi_cde_st
(* : Localinput_symbol_t.localinput_entity_symbol Tree_t.tree list *)
= 
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
     [1; 7]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_a"),
      [1; 1; 7]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_external,
       [2; 1; 7]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_type,
         [1; 2; 1; 7]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "user"),
          [1; 1; 2; 1; 7]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "point"),
          [2; 1; 2; 1; 7])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_name,
         [2; 2; 1; 7]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "T_A"),
          [1; 2; 2; 1; 7])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_context,
         [3; 2; 1; 7]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Con_loc"),
          [1; 3; 2; 1; 7])])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end,
      [3; 1; 7])])
);;

let str_l = Localinput_variable_type_string_list_by_localinput_variable_name_provider_v.provide nam_iev;;

test_number 2 (
str_l 
(* : string list *)
= 
["user"; "point"]
);;
