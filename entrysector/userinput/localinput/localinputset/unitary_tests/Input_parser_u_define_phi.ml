open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_define_phi.ml";;

(* toplevel 
   #use "Input_parser_u_define_phi.ml";; 

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

let nof_inp = "Define_phi.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;

let sym_lex_s = Input_parser_v.input_entity_symbol_stack_of_input_nameoffile nof_inp;;

let sym_lex_cur = Stack.pop sym_lex_s;;

(* set debug *)

test_number 2 (
 sym_lex_cur
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
  =
Input_lexeme_symbol_t.Input_lexeme_command_symbol
  Input_lexeme_command_symbol_t.Input_lexeme_set
);;

let sym_lex_cur = Stack.pop sym_lex_s;;
let sym_lex_cur = Stack.pop sym_lex_s;;
let sym_lex_cur = Stack.pop sym_lex_s;;
let sym_lex_cur = Stack.pop sym_lex_s;;
let sym_lex_cur = Stack.pop sym_lex_s;;
let sym_lex_cur = Stack.pop sym_lex_s;;
let sym_lex_cur = Stack.pop sym_lex_s;;

test_number 3 (
sym_lex_cur 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
=
  Input_lexeme_symbol_t.Input_lexeme_keyword_symbol
   (Input_lexeme_keyword_symbol_t.Input_lexeme_keyword_constant_symbol
     Input_lexeme_keyword_constant_symbol_t.Input_lexeme_end)
);;

(* define Phi *)

let sym_lex_cur = Stack.pop sym_lex_s;;

test_number 4 (
sym_lex_cur
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
=
  Input_lexeme_symbol_t.Input_lexeme_command_symbol
   Input_lexeme_command_symbol_t.Input_lexeme_define
);;

let sym_lex_cur = Stack.pop sym_lex_s ;;

test_number 5 (
sym_lex_cur 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
  =
 Input_lexeme_symbol_t.Input_lexeme_basic_symbol
   (Input_lexeme_basic_symbol_t.Input_lexeme_basic_word_capitalized_symbol
     (Input_lexeme_basic_word_capitalized_symbol_t.Input_lexeme_basic_word_capitalized_free
       "Phi"))
);;

let sym_lwc = (* coerce down *) 
  Input_lexeme_symbol_v.input_lexeme_basic_word_capitalized_symbol_off_input_lexeme_symbol
    sym_lex_cur;;

let sym_ien_id = Input_parser_tools_v.input_entity_symbol_of_input_lexeme_basic_word_capitalized_symbol sym_lwc ;;
 
test_number 6 (
sym_ien_id 
(* : Input_entity_symbol_t.input_entity_symbol *)
= 
  Input_entity_symbol_t.Input_entity_local_symbol
   (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
     (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
       "Phi"))
);;

let sym_lex_l = Input_lexical_analysis_v.input_lexeme_symbol_list_of_input_nameoffile  nof_inp;;
let lex_sl = List_v.sublist_of_int_of_length_of_list 3 5 sym_lex_l;;

test_number 7 (
lex_sl 
(* : Input_lexeme_symbol_t.input_lexeme_symbol list *)
=
  [Input_lexeme_symbol_t.Input_lexeme_symbol_symbol
    Input_lexeme_symbol_symbol_t.Input_lexeme_double_quote;
   Input_lexeme_symbol_t.Input_lexeme_basic_symbol
    (Input_lexeme_basic_symbol_t.Input_lexeme_basic_word
      "Input_lexical_analysis_v");
   Input_lexeme_symbol_t.Input_lexeme_symbol_symbol
    Input_lexeme_symbol_symbol_t.Input_lexeme_double_quote;
   Input_lexeme_symbol_t.Input_lexeme_keyword_symbol
    (Input_lexeme_keyword_symbol_t.Input_lexeme_keyword_constant_symbol
      Input_lexeme_keyword_constant_symbol_t.Input_lexeme_end);
   Input_lexeme_symbol_t.Input_lexeme_keyword_symbol
    (Input_lexeme_keyword_symbol_t.Input_lexeme_keyword_constant_symbol
      Input_lexeme_keyword_constant_symbol_t.Input_lexeme_end)]
);;

let sym_lex_cur = Stack.pop sym_lex_s;; (* as *)
let sym_lex_cur = Stack.pop sym_lex_s;;

test_number 8 (
sym_lex_cur 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
  =
  Input_lexeme_symbol_t.Input_lexeme_token "coordinate_spherical"
);;

let sym_ien_t = Input_parser_define_v.entity_frames_what_block_subtree_of_input_lexeme_symbol_of_input_lexeme_symbol_stack sym_lex_cur sym_lex_s
;;

test_number 9 (
sym_ien_t 
(* : Input_entity_symbol_t.input_entity_symbol Tree_t.tree *)
=
  Tree_t.Leaf
   (Input_entity_symbol_t.Input_entity_frames_symbol
     (Input_entity_frames_symbol_t.Input_entity_frames_entity
       "string [ input for Run : <Run> ]"))
);;

let sym_ien_t = Input_parser_v.input_entity_symbol_tree_of_input_fullnameoffile nof_inp;;

test_number 10 (
 sym_ien_t 
(* : Input_entity_symbol_t.input_entity_symbol Tree_t.tree *)
= 
  Tree_t.Inner
   (Input_entity_symbol_t.Input_entity_local_symbol
     (Input_entity_local_symbol_t.Input_entity_local_command_symbol
       Input_entity_local_command_symbol_t.Input_command_calculation),
   [Tree_t.Inner
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_define),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_reserved_symbol
             Input_entity_local_variable_reserved_symbol_t.Input_word)));
      Tree_t.Inner
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_as),
       [Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_entity
             "string [ input for Run : <Run> ]"));
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_local_symbol
           (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
             Input_entity_local_keyword_symbol_t.Input_end))]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end))]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_stop))])
);;
