open Make_test_v;;

testing "Localinput_lexer_handle_command_print_list_by_basicname_inputbox_provider_v
        Localinput_lexer_handle_command_print_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_lexer_handle_command_print_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

*)

open Localinput_lexer_handle_command_print_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;

let sym_lex_com_l = 
    Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo
;;

let sym_lex_lcp_l = List.filter 
      (fun l -> Localinput_lexer_symbol_v.is_localinput_lexer_command_print (List.hd l))
      sym_lex_com_l 
;;

test_number 1 (
List.length sym_lex_lcp_l = 1
);;

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

let sym_lex_hcd_pri = List.nth sym_lex_lcp_l 0;;

test_number 2 (
( sym_lex_hcd_pri : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_end]
);;

test_number 3 (
sym_lex_lcp_l = provide nam_ibo
);;

