open Make_test_v;;

testing "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

 Trace_what_by_module_name_register_v.store "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v" "debug";;

(* toplevel 
   #use "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

*)

(* Inputbox : define Poi_a                                                     *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        external                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox :          type [ "figure" "set" "fence" "point" "constructor" ]|| *)
(* Inputbox :          external_name "T_A"                                  || *)
(* Inputbox :          external_context Con_db1                             || *)
(* Inputbox :          end -- external -------------------------------------|| *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        end -- define                                             *)

open Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_point_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
let nam_ibo = "Print_point_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_rbr_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_token_r_bracket
    sym_lex_l;;

let (_, sym_lex_key_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_varnamed_external_name_constructor
    sym_lex_rbr_sl;;

let sym_lex_sl = sym_lex_key_sl ;;
let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_name_symbol
        (Localinput_lexer_keyword_varnamed_external_name_symbol_t.Localinput_lexer_keyword_varnamed_external_name_constructor
          "T_A")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol
          (Localinput_lexer_basic_word_doublequoted_capitalized_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_constructor
            "T_A"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_context_symbol
        (Localinput_lexer_keyword_varnamed_external_context_symbol_t.Localinput_lexer_keyword_varnamed_external_context_constructor
          "Con_db1")))]
);;

let sym_lex_key = List.hd sym_lex_sl;;

test_number 2 (
(sym_lex_key : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
     (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_name_symbol
       (Localinput_lexer_keyword_varnamed_external_name_symbol_t.Localinput_lexer_keyword_varnamed_external_name_constructor
         "T_A")))
);;

let sym_lex_rig_sl = List.tl sym_lex_sl;;

let sym_lex_wor = List.hd sym_lex_rig_sl;;

test_number 3 (
(sym_lex_wor : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
       (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol
         (Localinput_lexer_basic_word_doublequoted_capitalized_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_constructor
           "T_A"))))
);;

let sym_loi_cel_1_f = 
    Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v.provide
      (sym_lex_key, sym_lex_wor);;

test_number 4 (
(sym_loi_cel_1_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol
           (Localinput_set_fence_cell_external_name_symbol_t.Localinput_set_fence_cell_external_name_constructor
             "T_A")))))
);;

let sym_lex_rem_1_sl = List.tl sym_lex_rig_sl;;
let sym_lex_rem_1_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_rem_1_sl;;

test_number 5 (
( sym_lex_rem_1_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_context_symbol
        (Localinput_lexer_keyword_varnamed_external_context_symbol_t.Localinput_lexer_keyword_varnamed_external_context_constructor
          "Con_db1")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_db1"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "external")))]
);;

test_number 6 (
(sym_loi_cel_1_f, sym_lex_rem_sl) = provide sym_lex_sl
);;

let (sym_loi_cel_2_f, sym_lex_rem_2_sl) = provide sym_lex_rem_1_sl;;

test_number 7 (
( sym_loi_cel_2_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
Tree_t.Leaf
  (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
	(Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol
              (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
		 "Con_db1")))))
 );;

let sym_lex_rem_2_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_rem_2_sl;;

test_number 8 (
( sym_lex_rem_2_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "external")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Uni_len"))]
);;

test_number 9 (
(sym_loi_cel_2_f, sym_lex_rem_2_sl) = provide sym_lex_rem_1_sl
);;

let sym_lex_sl = sym_lex_rem_2_sl;;

 let pre_lex_key = 
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol
  ;;
  let sym_lex_key = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_key 
      nam_mod 
      sym_lex_sl ;;
  let sym_lex_rig_sl = List.tl sym_lex_sl;;

  let pre_lex_wor = 
    Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_symbol_off_localinput_lexer_symbol
  ;;

  let sym_lex_wor sl = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_wor 
      nam_mod 
      sl;;

test_raises_some_exc sym_lex_wor sym_lex_rig_sl ;;
