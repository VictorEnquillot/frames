open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_define.ml";;

(* toplevel 
   #use "Input_parser_u_define.ml";; 

*)

(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Frames_entity_string_quintet_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_symbol_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_tag_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_tag_tree_by_input_entity_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Property_entity_string_trio_by_input_entity_variable_name_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* Domain *) 

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let nof_inp = "Define.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;

let sym_lex_s = Input_parser_v.input_entity_symbol_stack_of_input_nameoffile nof_inp;;

let sym_lex = Stack.pop sym_lex_s;;

test_number 2 (
sym_lex 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
=
  Input_lexeme_symbol_t.Input_lexeme_command_symbol
   Input_lexeme_command_symbol_t.Input_lexeme_define
);;

let sym_lex_cur = Stack.pop sym_lex_s ;;

test_number 3 (
sym_lex_cur 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
  =
  Input_lexeme_symbol_t.Input_lexeme_basic_symbol
   (Input_lexeme_basic_symbol_t.Input_lexeme_basic_word_capitalized_symbol
     (Input_lexeme_basic_word_capitalized_symbol_t.Input_lexeme_basic_word_capitalized_reserved_symbol
       Input_lexeme_basic_word_capitalized_reserved_symbol_t.Input_lexeme_run))
);;

let sym_bwc = (* coerce down *) 
  Input_lexeme_symbol_v.input_lexeme_basic_word_capitalized_symbol_off_input_lexeme_symbol
    sym_lex_cur;;

let sym_wcr = Input_lexeme_symbol_v.input_lexeme_basic_word_capitalized_reserved_symbol_off_input_lexeme_symbol sym_lex_cur;;
let nam_wcr = Input_lexeme_basic_word_capitalized_reserved_symbol_v.name sym_wcr;;

let sym_ien_id = Input_parser_tools_v.input_entity_symbol_of_input_lexeme_basic_word_capitalized_symbol sym_bwc ;;
 
test_number 4 (
sym_ien_id 
(* : Input_entity_symbol_t.input_entity_symbol *)
= 
 Input_entity_symbol_t.Input_entity_local_variable_symbol
   (Input_entity_local_variable_symbol_t.Input_entity_local_variable_reserved_symbol
      Input_entity_local_variable_reserved_symbol_t.Input_run)
);;

let sym_lex_cur = Stack.pop sym_lex_s;;
let sym_lex_cur = Stack.pop sym_lex_s;;

test_number 5 (
sym_lex_cur 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
  =
  Input_lexeme_symbol_t.Input_lexeme_keyword_symbol
   (Input_lexeme_keyword_symbol_t.Input_lexeme_keyword_unary_symbol
     Input_lexeme_keyword_unary_symbol_t.Input_lexeme_word)
);;

let wha_ent = Input_lexeme_symbol_v.string_off sym_lex_cur;;
let sym_lex_nex = Stack.top sym_lex_s;;
let nam_ent = Input_lexeme_symbol_v.string_off sym_lex_nex;;
let wha_ien = wha_ent ^ ":" ^ nam_ent;;
let sym_ent = Input_parser_define_v.entity_symbol_of_entity_what_of_input_lexeme_symbol_stack wha_ent sym_lex_s;;

test_number 6 (
sym_ent 
(* : Input_entity_symbol_t.input_entity_symbol *)
  =
  Input_entity_symbol_t.Input_entity_frames_symbol
   (Input_entity_frames_symbol_t.Input_entity_frames_constructor
     ":triangle_t_properties")
);;

(* let sym_lex_l = Input_lexical_analysis_v.input_lexeme_symbol_list_of_input_nameoffile nof_inp;; *)

let sym_ien_t = Input_parser_v.input_entity_symbol_tree_of_input_fullnameoffile nof_inp;;

test_number 7 (
sym_ien_t
(* : Input_lexeme_symbol_t.input_lexeme_symbol Tree_t.tree *)
  =
  Tree_t.Inner
   (Input_entity_symbol_t.Input_command_symbol
     Input_command_symbol_t.Input_calculation,
   [Tree_t.Inner
     (Input_entity_symbol_t.Input_command_symbol
       Input_command_symbol_t.Input_define,
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_variable_symbol
         (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free "phi"));
      Tree_t.Inner
       (Input_entity_symbol_t.Input_keyword_symbol
         Input_keyword_symbol_t.Input_as,
       [Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_constructor
             "coordinate_spherical:phi"));
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_keyword_symbol
           Input_keyword_symbol_t.Input_end)]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_keyword_symbol
         Input_keyword_symbol_t.Input_end)]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_command_symbol
       Input_command_symbol_t.Input_stop)])
);;


