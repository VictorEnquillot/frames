open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_coordinate_point.ml";;

(* toplevel 
   #use "Input_parser_u_coordinate_point.ml";; 

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

let nof_inp = "Coordinate_point.inp";;
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

(* let sym_lex_l = Input_lexical_analysis_v.input_lexeme_symbol_list_of_input_nameoffile nof_inp;; *)

let sym_ien_t = Input_parser_v.input_entity_symbol_tree_of_input_fullnameoffile nof_inp;;

test_number 3 (
sym_ien_t
(* : Input_lexeme_symbol_t.input_lexeme_symbol Tree_t.tree *)
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
             Input_entity_local_variable_reserved_symbol_t.Input_run)));
      Tree_t.Inner
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_as),
       [Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_basic_symbol
           (Input_entity_basic_symbol_t.Input_entity_basic_string
             "Properties_for_triangle_T"));
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
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_reserved_symbol
             Input_entity_local_variable_reserved_symbol_t.Input_run)));
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end))]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_stop))])
);;



