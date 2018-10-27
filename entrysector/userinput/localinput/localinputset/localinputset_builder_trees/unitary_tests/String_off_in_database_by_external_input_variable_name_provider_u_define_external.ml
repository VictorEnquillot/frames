open Make_test_v;;

testing "String_off_in_database_by_external_input_variable_name_provider_v with
    String_off_in_database_by_external_input_variable_name_provider_u_define_external.ml";;
    
(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "String_off_in_database_by_external_input_variable_name_provider_u_define_external.ml";; 

*)

(* Input File *)

let nof_inp = "Define_external_aopef_hes11.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_ivn = "Poi_a";;
let tag_inp_cde_st = Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 1 (
( tag_inp_cde_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
     [1; 5]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_a"),
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

let sym_inp_cde_st = Tree_v.map Tag_v.entity_off_tag tag_inp_cde_st;;

let sof_ivn = String_off_in_database_by_external_input_variable_name_provider_v.provide nam_ivn;;
  
test_number 2 (
( sof_ivn : string ) = 
"T_A"
);;

let sym_inp = Tree_v.leaf_of_leaf_predicate_of_node_predicate_off_tree Localinput_symbol_v.is_input_basic_string Localinput_symbol_v.is_input_keyword_name sym_inp_cde_st;;

let sof_ivn = Localinput_symbol_v.string_off sym_inp;;

test_number 3 (
( sof_ivn : string ) = 
"T_A"
);;
