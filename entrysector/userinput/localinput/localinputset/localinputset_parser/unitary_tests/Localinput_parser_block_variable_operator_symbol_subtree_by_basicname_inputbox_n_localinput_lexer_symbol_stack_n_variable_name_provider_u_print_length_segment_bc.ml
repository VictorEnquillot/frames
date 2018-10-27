open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_parser_block_variable_operator_symbol_subtree_by_basicname_inputbox_n_localinput_lexer_symbol_stack_n_variable_name_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)


(* Tracing *)
let nam_mod = "Localinput_parser_block_variable_operator_symbol_subtree_by_basicname_inputbox_n_localinput_lexer_symbol_stack_n_variable_name_provider_v";;

Trace_what_by_module_name_register_v.store nam_mod "debug";;

(* toplevel 
   #use "Localinput_parser_block_variable_operator_symbol_subtree_by_basicname_inputbox_n_localinput_lexer_symbol_stack_n_variable_name_provider_u_print_length_segment_bc.ml";; 

*)

open Localinput_parser_block_variable_operator_symbol_subtree_by_basicname_inputbox_n_localinput_lexer_symbol_stack_n_variable_name_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let wor_cap = "Len";;

let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name nam_ibo;;

let pre_lex_ope = Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_operator;;
let pre_lex_end = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_end;;
let pre_lex_def = Localinput_lexer_symbol_v.is_localinput_lexer_command_define;;

let sym_lex_ope_sl = List_v.sublist_of_predicate_included_of_predicate_excluded_of_list pre_lex_ope pre_lex_def sym_lex_l;;

test_number 1 (
(sym_lex_ope_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
 [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_type;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "operator")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "set")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "body")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "creation")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "measure")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "constructor")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_operation;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "length")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_ondomain;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "figure")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_ope_s = Localinput_parser_tools_v.localinput_symbol_stack_of_localinput_symbol_list sym_lex_ope_sl;;

let pop = Stack.pop sym_lex_ope_s;;

test_number 2 (
( pop : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
   Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator
);;

let top = Stack.top sym_lex_ope_s;;

test_number 3 (
(top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_type
);;

let sym_lex_s = sym_lex_ope_s;;
let top = Stack.top sym_lex_s;;
let sym_lex_sl = List.rev (Stack_v.list_non_destructive_of_stack sym_lex_s);;

let sym_lex_syn_l = [
    Localinput_lexer_symbol_v.localinput_lexer_keyword_type;
    Localinput_lexer_symbol_v.localinput_lexer_keyword_operation;
    Localinput_lexer_symbol_v.localinput_lexer_keyword_ondomain;
  ]
;;

let pre_lex_typ = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_type;;

let sym_lex_ssl = List_v.sublist_of_predicate_included_of_predicate_excluded_of_list pre_lex_typ pre_lex_def sym_lex_sl;;

let boo = List_v.are_included_sets_of_list_of_list  sym_lex_syn_l sym_lex_ssl ;;
test_number 4 (
boo
);;

let sym_loi_l = build (nam_ibo, sym_lex_s, wor_cap);;

test_number 5 (
(sym_loi_l : Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_body_symbol
        (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
          (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
            (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
              "Len")))),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
            (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
              (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                  "Len"))))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
            (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
              (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                "operator")))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
            (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
              (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                "set")))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
            (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
              (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                "body")))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
            (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
              (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                "creation")))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
            (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
              (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                "measure")))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
            (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
              (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                "constructor")))))]);
   Tree_t.Leaf
    (Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
          (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
            (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
              "length")))));
   Tree_t.Leaf
    (Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
          (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
            (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
              "figure")))));
   Tree_t.Leaf
    (Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
          (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
            (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
              (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                "operator"))))))]
);; 

(* let sym_lex_s = Localinput_parser_tools_v.localinput_symbol_stack_of_localinput_symbol_list sym_lex_l;; *)
(* let pop = Stack.pop sym_lex_s;; *)

(* test_number 6 ( *)
(* sym_loi_l = provide (nam_ibo, sym_lex_s, wor_cap) *)
(* );; *)

(* test_raises_some_exc Stack.top sym_lex_ope_s;;*)

