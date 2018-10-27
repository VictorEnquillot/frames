open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_define_point_tag.ml";;

(* toplevel 
   #use "Input_parser_u_define_point_tag.ml";; 

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
Parameters_general_register_v.store_force "trace-translate" "false";;

let nof_inp = "Define_point_tag.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;

(* ------------------------- debug -------------------------------------*)

let sym_lex_s = Input_parser_v.input_entity_symbol_stack_of_input_nameoffile nof_inp;;

let sym_lex_l = Input_lexical_analysis_v.input_lexeme_symbol_list_of_input_nameoffile nof_inp;; 
let idx_deb = List_v.index_of_element_of_list Input_lexeme_symbol_v.input_lexeme_debug sym_lex_l ;;
let idx_def = List_v.index_of_element_of_list Input_lexeme_symbol_v.input_lexeme_define sym_lex_l ;;


if idx_deb <> 0
then
  begin
    ignore (Stack.pop sym_lex_s);
    let sym_lex = Stack.pop sym_lex_s in
	
    ignore (test_number 1 (
      sym_lex 
    (* : Input_lexeme_symbol_t.input_lexeme_symbol *)
	=
      Input_lexeme_symbol_t.Input_lexeme_keyword_symbol
   (Input_lexeme_keyword_symbol_t.Input_lexeme_keyword_ended_symbol
     Input_lexeme_keyword_ended_symbol_t.Input_lexeme_debug)
    ) )
  end

let sym_lex_s = Input_parser_v.input_entity_symbol_stack_of_input_nameoffile nof_inp;;
for i = 0 to (idx_def-1) do
  ignore (Stack.pop sym_lex_s)
done
;;

(* ------------------------- define -------------------------------------*)

let sym_lex = Stack.pop sym_lex_s;;

test_number 1 (
sym_lex 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
=
Input_lexeme_symbol_t.Input_lexeme_command_symbol
  Input_lexeme_command_symbol_t.Input_lexeme_define
);;

let sym_lex = Stack.pop sym_lex_s;;

test_number 2 (
sym_lex 
(* : Input_lexeme_symbol_t.input_lexeme_symbol *)
=
 Input_lexeme_symbol_t.Input_lexeme_basic_symbol
   (Input_lexeme_basic_symbol_t.Input_lexeme_basic_word_capitalized_symbol
     (Input_lexeme_basic_word_capitalized_symbol_t.Input_lexeme_basic_word_capitalized_free
       "P_a_tag"))
);;

let sym_ien_t = Input_parser_v.input_entity_symbol_tree_of_input_fullnameoffile nof_inp;;

test_number 3 (
sym_ien_t
(* : Input_lexeme_symbol_t.input_lexeme_symbol Tree_t.tree *)
  = Tree_t.Inner
   (Input_entity_symbol_t.Input_entity_local_symbol
     (Input_entity_local_symbol_t.Input_entity_local_calculation
       "Define_point_tag.inp"),
   [Tree_t.Inner
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_set),
     [Tree_t.Inner
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_debug),
       [Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_module
             "Input_parser_v"));
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_local_symbol
           (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
             Input_entity_local_keyword_symbol_t.Input_end))]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end))]);
    Tree_t.Inner
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_define),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "P_a_tag")));
      Tree_t.Inner
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_as),
       [Tree_t.Inner
         (Input_entity_symbol_t.Input_entity_frames_symbol
           Input_entity_frames_symbol_t.Input_entity_frames_entity,
         [Tree_t.Leaf
           (Input_entity_symbol_t.Input_entity_frames_symbol
             (Input_entity_frames_symbol_t.Input_entity_frames_category "tag"));
          Tree_t.Leaf
           (Input_entity_symbol_t.Input_entity_frames_symbol
             (Input_entity_frames_symbol_t.Input_entity_frames_domain
               "figure"));
          Tree_t.Leaf
           (Input_entity_symbol_t.Input_entity_frames_symbol
             (Input_entity_frames_symbol_t.Input_entity_frames_database "db1"));
          Tree_t.Leaf
           (Input_entity_symbol_t.Input_entity_frames_symbol
             (Input_entity_frames_symbol_t.Input_entity_frames_what
               "figure_point"));
          Tree_t.Leaf
           (Input_entity_symbol_t.Input_entity_frames_symbol
             (Input_entity_frames_symbol_t.Input_entity_frames_name "A_A"));
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
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end))]);
    Tree_t.Inner
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_print),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "P_a_tag")));
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end))]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_stop))])
);;

