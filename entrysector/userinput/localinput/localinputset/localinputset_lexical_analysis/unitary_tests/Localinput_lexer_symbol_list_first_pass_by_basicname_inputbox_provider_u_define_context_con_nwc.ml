open Make_test_v;;

testing "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v with
    Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_u_define_context_con_nwc.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v" "debug";;

(* define Con_nwc  *)
(*        context *)
(*          domain "skeleton" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pvtz" *)
(* 	    end -- context *)
(*        end -- define *)
(* stop *)

(* toplevel 
   #use "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_u_define_context_con_nwc.ml";; 

*)

open Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v";;
let nam_ibo = "Define_context_con_nwc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;; 

let sbu = Localinput_lexer_scanbuf_by_basicname_inputbox_provider_v.provide bna_ibo;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 1 (
(c : char ) = 
'd'
);;

let sym_lex_1_l = provide bna_ibo;;

let sym_lex_top_1_l = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_1_l;;

test_number 2 (
(sym_lex_top_1_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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

let sym_lex_sl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_1_l;;

test_number 3 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol
        (Localinput_lexer_keyword_nextstringed_domain_symbol_t.Localinput_lexer_keyword_nextstringed_domain_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
        (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol
        (Localinput_lexer_keyword_nextstringed_databox_symbol_t.Localinput_lexer_keyword_nextstringed_databox_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")))]
);;

