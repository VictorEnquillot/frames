open Make_test_v;;

testing "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_length_segment_bc_define_len.ml";;

(* Deleting Registers *)


(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_parser_tools_v" "debug";;

(* toplevel 
   #use "test.ml";;

*)

(* Inputbox : define Len                                                       *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        operator                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "measure" "constructor"] *)
(* Inputbox : 	       operation "length"                                   || *)
(* Inputbox : 	       ondomain "figure"                                    || *)
(* Inputbox : -------- end -- operator -------------------------------------|| *)
(* Inputbox :        end -- define                                             *)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_point_a";;
let nam_var = "Poi_a";;

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

let sym_lex_sl = sym_lex_len_sl ;;
let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Poi_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Poi_a"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Poi_a"))]
);;

let x = provide nam_ibo;;
test_number 2 (
true
);;
