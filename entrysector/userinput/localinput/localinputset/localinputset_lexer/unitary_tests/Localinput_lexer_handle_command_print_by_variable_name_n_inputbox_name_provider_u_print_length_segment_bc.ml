open Make_test_v;;

testing "Localinput_lexer_handle_command_print_by_variable_name_n_inputbox_name_provider_v
        Localinput_lexer_handle_command_print_by_variable_name_n_inputbox_name_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_lexer_handle_command_print_by_variable_name_n_inputbox_name_provider_u_print_length_segment_bc.ml";;

*)

open Localinput_lexer_handle_command_print_by_variable_name_n_inputbox_name_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let sym_lex_lcp_l = 
    Localinput_lexer_handle_command_print_list_by_inputbox_name_provider_v.provide 
      nam_ibo
;;

let nam_var = "Len_bc";;
let sym_lex_lcp_len_bc = List_v.only_element_of_predicate_off_list
      (fun s -> Localinput_lexer_symbol_v.string_off (List.nth s 1) = nam_var)
      sym_lex_lcp_l;;

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

test_number 1 (
(sym_lex_lcp_len_bc : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_print;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Len_bc")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_units;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Uni_len")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_end]
);;

test_number 2 (
sym_lex_lcp_len_bc = provide ("Len_bc", nam_ibo)
);;
