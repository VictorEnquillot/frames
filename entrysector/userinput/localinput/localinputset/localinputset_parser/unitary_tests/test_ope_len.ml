open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
    Localinput_parser_tree_by_basicname_inputbox_provider_u_define_context_ope_len.ml";;

(* Deleting Registers *)

(* Tracing *)
Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexeme_sublist_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Localinput_parser_handle_command_subtree_or_stop_list_by_basicname_inputbox_n_localinput_lexeme_sublist_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Lcalinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

(* toplevel 
   #use "test_ope_len.ml";;

*)

let nam_mod = "Localinput_parser_tree_by_basicname_inputbox_provider_v";;
let nam_ibo = "Define_operator_len";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

(* Inputbox : define Len *)
(* Inputbox :        operator  *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "measure" "constructor"] *)
(* Inputbox : 	       operation "length" *)
(* Inputbox : 	       ondomain "figure"   *)
(* Inputbox :          end -- operator *)
(* Inputbox :        end -- define *)

(* Inputbox : stop *)

let sym_lex_0_sl = List.nth sym_lex_hcs_ll 0;;
let sym_lex_0_ssl = List_v.sublist_of_int_of_length_of_list 0 10sym_lex_0_sl;;

test_number 1 (
(sym_lex_0_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Len"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Len")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "operator"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "set"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "body"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "creation"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "measure"))))]
);;

let (_, sym_lex_kin_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol 
    sym_lex_0_sl;;

let sym_lex_kin_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_kin_sl;;

test_number 2 (
(sym_lex_kin_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Len")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket]
);;

let sym_lex_sl = sym_lex_kin_sl ;;

let pre_lex_top = 
  Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol 
;;
  
let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_top
      nam_mod
      sym_lex_sl ;;

let sym_lvk = (* coerce down *) 
    Localinput_lexer_symbol_v.localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol
      sym_lex_top;;

test_number 3 (
(sym_lvk :
  Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol ) =
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
   (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
     "Len")
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

let sym_loi_lvk = 
	Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide 
	  sym_lvk;;

let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk;;

test_number 4 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
         (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
           (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
             "Len")))))
);;

let sym_loi_han = 
  Localinput_symbol_v.localinput_set_body_handle_variable_context_constructor 
    nam_var;;

let sym_lex_rig_sl = List.tl sym_lex_sl;;
let sym_lex_rig_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_rig_sl;;

test_number 5 (
(sym_lex_rig_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Len")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "operator"))))]
);;

let (sym_loi_blo_st, sym_lex_rem_sl) = 
  Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
    (nam_ibo, sym_lex_rig_sl);;

let (sym_loi_han_st, sym_lex_rem_sl) = 
  Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide (nam_ibo, sym_lex_kin_sl);;


test_number 6 (
(sym_loi_han_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
           (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
             (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
               "Len"))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
           (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
             (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
               "Len")))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
           (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
             (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
               "skeleton")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
               (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
                 "skeleton")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
               (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                 "nwchem")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol
               (Localinput_set_fence_cell_databox_symbol_t.Localinput_set_fence_cell_databox_constructor
                 "cc_pvtz")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                 (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                   "context"))))))])])
);;













(*let sym_loi_0_st = Localinput_parser_handle_command_subtree_or_stop_list_by_basicname_inputbox_n_localinput_lexeme_sublist_provider_v.provide (nam_ibo, sym_lex_0_sl);;*)

