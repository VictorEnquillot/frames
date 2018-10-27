open Make_test_v;;

testing "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_define_operator_hom_b_2.ml";;

(* Deleting Registers *)


(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
(* toplevel 
   #use "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_define_operator_hom_b_2.ml";;

*)

(* define Hom_b_2 *)
(* ------------------------- handle_variable_kind --------------------------------------| *)
(*        operator                                                                      | *)
(* ------------------------- block_variable_kind --------------------------------------|| *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] || *)
(*          operation "homothety"                                                    || *)
(*          ondomain "figure"                                                          || *)
(* ------------------------- handle_cofactor -----------------------------------------||[ *)
(*          cofactor                                                                  ||| *)
(* ------------------------- block_operator_cofactor --------------------------------|||| *)
(*            cofactor_entity Cen_b -------------------------------------------------|||| *)
(*            cofactor_basic 2.0 ----------------------------------------------------|||| *)
(*            end -- cofactor    *)
(*          end -- operator ---------------------------------------------------------*)
(* ------------------------- handle_variable_kind ---------------------------| *)
(*        end -- define *)

open Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Define_operator_hom_b_2";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let nam_var = "Hom_b_2";;

let sym_lex_ful_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

let (_, sym_lex_lcd_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    (fun s -> s = Localinput_lexer_symbol_v.localinput_lexer_command_define_constructor nam_var)
    sym_lex_ful_l;;

let (_, sym_lex_ldt_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_operator_constructor
    sym_lex_lcd_sl;;

let sym_lex_sl = sym_lex_ldt_sl ;;

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Hom_b_2"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Hom_b_2")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket]
);;

let nam_mod = "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";;
  
let sym_lex_top = 
  Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol 
    nam_mod
    sym_lex_sl;;

test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
   (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
     (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
       "Hom_b_2"))
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 3 (
(nam_var : string ) = 
"Hom_b_2"
);;

let sym_lvk = (* coerce down *) 
  Localinput_lexer_symbol_v.localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol
    sym_lex_top;;

test_number 4 (
(sym_lvk :
  Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol ) =
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
   (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
     "Hom_b_2")
);;

let sym_lex_rig_sl = List.tl sym_lex_sl;;

let sym_lex_rig_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_rig_sl;;

test_number 5 (
(sym_lex_rig_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Hom_b_2")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "operator"))))]
);;

(* sym_lvk is variable_kind_operator *)

let sym_loi_lvk = 
  Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide 
    sym_lvk ;;
   
test_number 6 (
(sym_loi_lvk : Localinput_symbol_t.localinput_symbol ) =
   Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
	(Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
	   (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
              (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
		 "Hom_b_2"))))
);; 
 
let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk;;

test_number 7 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
         (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
           (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
             "Hom_b_2")))))
);;

let sym_loi_han = 
  Localinput_symbol_v.localinput_set_body_handle_variable_context_constructor 
    nam_var ;;

let sym_loi_blo = 
  Localinput_symbol_v.localinput_set_body_block_variable_context_constructor 
    nam_var ;;

let (sym_loi_blo_st, sym_lex_rem_sl) = 
  Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
    (sym_loi_blo, bna_ibo, sym_lex_rig_sl);;

test_number 8 (
(sym_loi_blo_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol
           (Localinput_set_body_block_variable_context_symbol_t.Localinput_set_body_block_variable_context_constructor
             "Hom_b_2")))),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
           (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
             (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
               "Hom_b_2")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                 (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                   "Hom_b_2"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
             (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
               (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                 "Hom_b_2")))),
       [Tree_t.Leaf
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
                   "transformation")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "constructor")))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
             (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
               "homothety")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
             (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
               "figure")))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
           (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
             (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
               "Hom_b_2")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_cofactor_symbol
                 (Localinput_set_fence_keyword_word_cofactor_symbol_t.Localinput_set_fence_keyword_word_cofactor_constructor
                   "Hom_b_2"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
             (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
               (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
                 "Cen_b")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
                 (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
                   "Cen_b")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol
                 (Localinput_set_fence_cell_cofactor_basic_symbol_t.Localinput_set_fence_cell_cofactor_basic_constructor
                   "2.0")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                   (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                     "cofactor"))))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "operator"))))))])
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st];;

test_number 9 (
( sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
           (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
             (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
               "Hom_b_2"))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
           (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
             (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
               "Hom_b_2")))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
           (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol
             (Localinput_set_body_block_variable_context_symbol_t.Localinput_set_body_block_variable_context_constructor
               "Hom_b_2")))),
     [Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
             (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
               (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
                 "Hom_b_2")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                   (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                     "Hom_b_2"))))));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_body_symbol
             (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
               (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
                 (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                   "Hom_b_2")))),
         [Tree_t.Leaf
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
                     "transformation")))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "constructor")))))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
               (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
                 "homothety")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
               (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
                 "figure")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
             (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
               (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
                 "Hom_b_2")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_cofactor_symbol
                   (Localinput_set_fence_keyword_word_cofactor_symbol_t.Localinput_set_fence_keyword_word_cofactor_constructor
                     "Hom_b_2"))))));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_body_symbol
             (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
               (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
                 (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
                   "Cen_b")))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
                   (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
                     "Cen_b")))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol
                   (Localinput_set_fence_cell_cofactor_basic_symbol_t.Localinput_set_fence_cell_cofactor_basic_constructor
                     "2.0")))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                 (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                   (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                     (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                       "cofactor"))))))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                 (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                   "operator"))))))])])
);;

   let x =   (sym_loi_st, sym_lex_rem_sl);;
