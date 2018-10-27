open Make_test_v;;

testing "Localinput_lexer_lexical_analysis_tools_v with
    Localinput_lexer_lexical_analysis_tools_u_define_context_con_nwc.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_tools_second_pass_v" "debug";;

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_tools_u_define_context_con_nwc.ml";; 

*)

open Localinput_lexer_lexical_analysis_tools_v;;

let nam_mod = "Localinput_lexer_lexical_analysis_tools_v";;
let nam_ibo = "Define_context_con_nwc";;

(* define Con_nwc  *)
(*        context *)
(*          domain "skeleton" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pvtz" *)
(* 	    end -- context *)
(*        end -- define *)
(* stop *)

let sym_lex_1_l = Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_lex_top_1_l = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_1_l;;

test_number 1 (
( sym_lex_top_1_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_nwc"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_nwc"))]
);;

let sym_lex_1_sl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_1_l;;

test_number 2 (
(sym_lex_1_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol
        (Localinput_lexer_keyword_nextstringed_domain_symbol_t.Localinput_lexer_keyword_nextstringed_domain_constructor
          "?nextstring?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
        (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
          "?nextstring?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol
        (Localinput_lexer_keyword_nextstringed_databox_symbol_t.Localinput_lexer_keyword_nextstringed_databox_constructor
          "?nextstring?")))]
);;

let sym_lex_l = sym_lex_top_1_l;;
let lex_rig_l = sym_lex_l;;

let hr = List.hd lex_rig_l;;

test_number 3 (
(hr : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
   (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
     (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
       "?nextvarnamed?"))
);;
let sof_hr = Localinput_lexer_symbol_v.string_off hr;;

let tlr = List.tl lex_rig_l;;
let sym_lex_sl = localinput_lexer_symbol_list_complete_nextvarnamed_of_lexeme_list lex_rig_l;;
