open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_parser_u_provide_point_tag.ml";;

(* toplevel 
   #use "Localinput_parser_u_provide_point_tag.ml";; 

*)

(* Deleting Registers *)

















(* Tracing *)


let bna_ibo = Basicname_v.basicname_inputbox_of_string "Provide_point_tag_a";;

(* 
let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_localinput_name nam_ibo;; 
*)

let sym_lex_s = Localinput_parser_v.localinput_entity_symbol_stack_of_localinput_name nam_ibo;;
let sym_lex_s = Localinput_parser_v.localinput_entity_symbol_stack_of_localinput_name nam_ibo;;
(* ------------------------- start of debug -------------------------------------*)
let sym_lex = Stack.pop sym_lex_s;;
let sym_lex = Stack.pop sym_lex_s;;

test_number 1 (
sym_lex 
(* : Localinput_lexer_symbol_t.localinput_lexer_symbol *)
=
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_ended_symbol
     Localinput_lexer_keyword_ended_symbol_t.Localinput_lexer_debug)
);;

let sym_lex = Stack.pop sym_lex_s;;
let sym_lex = Stack.pop sym_lex_s;;
let sym_lex = Stack.pop sym_lex_s;;
let sym_lex = Stack.pop sym_lex_s;;
let sym_lex = Stack.pop sym_lex_s;;
let sym_lex = Stack.pop sym_lex_s;;
let sym_lex = Stack.pop sym_lex_s;;

test_number 2 (
sym_lex 
(* : Localinput_lexer_symbol_t.localinput_lexer_symbol *)
=
Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
  Localinput_lexer_command_symbol_t.Localinput_lexer_command_define
);;

(* ------------------------- end of debug -------------------------------------*)
let sym_lex = Stack.pop sym_lex_s;;

test_number 3 (
sym_lex 
(* : Localinput_lexer_symbol_t.localinput_lexer_symbol *)
=
 Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
     (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
       "P_a"))
);;

let sym_inp_t = Localinput_parser_v.localinput_entity_symbol_tree_of_localinput_fullnameoffile nam_ibo;;

test_number 4 (
sym_inp_t
(* : Localinput_lexer_symbol_t.localinput_lexer_symbol Tree_t.tree *)
  =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_local_symbol
     (Localinput_local_symbol_t.Localinput_local_calculation
       "Provide_point_tag_a"),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_command_symbol
         Localinput_local_command_symbol_t.Localinput_body_handle_command_set),
     [Tree_t.Inner
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_debug),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_frames_symbol
           (Localinput_frames_symbol_t.Localinput_frames_module
             "Localinput_parser_define_v"));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_keyword_symbol
             Localinput_local_keyword_symbol_t.Localinput_end))]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_end))]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_command_symbol
         Localinput_local_command_symbol_t.Localinput_command_define),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_variable_symbol
           (Localinput_local_variable_symbol_t.Localinput_local_variable_free
             "P_a")));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_as),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_frames_symbol
           Localinput_frames_symbol_t.Localinput_frames_entity);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_keyword_symbol
             Localinput_local_keyword_symbol_t.Localinput_end))]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_end))]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_command_symbol
         Localinput_local_command_symbol_t.Localinput_body_handle_command_provide),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_frames_symbol
         (Localinput_frames_symbol_t.Localinput_frames_category "tag"));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_for),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_variable_symbol
             (Localinput_local_variable_symbol_t.Localinput_local_variable_free
               "P_a")))]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_end))]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_command_symbol
         Localinput_local_command_symbol_t.Localinput_body_handle_command_stop))])
);;



