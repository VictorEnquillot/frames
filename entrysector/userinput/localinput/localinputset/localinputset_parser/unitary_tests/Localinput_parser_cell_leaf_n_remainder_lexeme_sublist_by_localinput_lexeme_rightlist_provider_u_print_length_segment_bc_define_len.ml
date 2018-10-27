open Make_test_v;;

testing "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_u_print_length_segment_bc_define_len.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_u_print_length_segment_bc_define_len.ml";;

*)

(* Inputbox : define Len *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        operator                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "measure" "constructor"] *)

(* Inputbox : 	       operation "length"                                   || *)
(* Inputbox : 	       ondomain "figure"                                    || *)

(* Inputbox :          end -- operator -------------------------------------|| *)
(* Inputbox :        end -- define *)

open Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_var = "Len";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let sym_lex_len_sl = List.find 
    (fun sl -> 
      (Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor (List.hd sl))
	&& 
      (Localinput_lexer_symbol_v.string_off (List.hd sl) = nam_var )
    )
    sym_lex_hcs_ll;;

let (_, sym_lex_key_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_stringed_operation_constructor
    sym_lex_len_sl;;

let sym_lex_sl = sym_lex_key_sl ;;
let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_stringed_operation_symbol
        (Localinput_lexer_keyword_stringed_operation_symbol_t.Localinput_lexer_keyword_stringed_operation_constructor
          "Len")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "length"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_stringed_ondomain_symbol
        (Localinput_lexer_keyword_stringed_ondomain_symbol_t.Localinput_lexer_keyword_stringed_ondomain_constructor
          "Len")))]
);;

let pre_lex_key = 
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol;;

let sym_lex_key = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_key 
      nam_mod 
      sym_lex_sl;;

test_number 2 (
(sym_lex_key : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
     (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_stringed_operation_symbol
       (Localinput_lexer_keyword_stringed_operation_symbol_t.Localinput_lexer_keyword_stringed_operation_constructor
         "Len")))
);;

let sym_lex_rig_sl = List.tl sym_lex_sl;;

let sym_lex_wor = List.hd sym_lex_rig_sl;;

test_number 3 (
(sym_lex_wor : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
       (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
         (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
           "length"))))
);;

let sym_loi_cel_f = 
  Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v.provide
    (sym_lex_key, sym_lex_wor);;

test_number 4 (
(sym_loi_cel_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
           (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
             "length")))))
);;

let lex_rem_sl = List.tl sym_lex_rig_sl;;

test_number 5 (
(sym_loi_cel_f, lex_rem_sl) = provide sym_lex_sl
);;
