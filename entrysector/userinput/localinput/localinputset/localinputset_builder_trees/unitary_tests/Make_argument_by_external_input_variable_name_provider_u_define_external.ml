open Make_test_v;;

testing "Make_argument_by_external_input_variable_name_provider_v with
    Make_argument_by_external_input_variable_name_provider_u_define_external.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Make_argument_by_external_input_variable_name_provider_u_define_external.ml";; 

*)

(* Input File *)

let nof_inp = "Define_external_aopef_hes11.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let nam_iev = "Aopef_hes11";;
let tag_inp_cde_st = Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide nam_iev;;

test_number 1 (
tag_inp_cde_st
(* : Localinput_symbol_t.input_entity_symbol Tree_t.tree list *)
= 
 Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
     [1; 5]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Aopef_hes11"),
      [1; 1; 5]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_external,
       [2; 1; 5]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_type,
         [1; 2; 1; 5]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "user"),
          [1; 1; 2; 1; 5]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "point"),
          [2; 1; 2; 1; 5]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_constant_symbol
           (Localinput_constant_symbol_t.Localinput_constant_string "constructor"),
          [3; 1; 2; 1; 5])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_name,
         [2; 2; 1; 5]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "T_A"),
          [1; 2; 2; 1; 5])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_context,
         [3; 2; 1; 5]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "Con_loc"),
          [1; 3; 2; 1; 5])])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end,
      [3; 1; 5])])
);;

let str_typ_l = Localinput_variable_type_string_list_by_input_variable_name_provider_v.provide nam_iev;;

test_number 2 (
str_typ_l 
(* : string list *)
= 
["user"; "point"; "constructor"]
);;

let str_ivx = Make_argument_by_external_input_variable_name_provider_v.provide nam_iev;;

test_number 3 (
str_ivx
(* : string *)
= 
"figure_point_constructor T_A"
);;
