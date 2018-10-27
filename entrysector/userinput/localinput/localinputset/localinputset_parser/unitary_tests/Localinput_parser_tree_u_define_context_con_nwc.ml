open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_parser_u_define_context_con_nwc.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_parser_v" "debug";;
Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_v" "debug";;

(* define Con_nwc  *)
(*        context *)
(* 	 sector "internal" *)
(*          domain "skeleton" *)
(* 	 database "nwchem" *)
(* 	 databox "cc_pvtz" *)
(* 	 end -- context *)
(*        end -- define *)

(* stop *)

(* toplevel 
   #use "Localinput_parser_u_define_context_con_nwc.ml";; 

*)

open Localinput_parser_tree_v;;

let nam_mod = "Localinput_parser_v";;
let nam_ibo = "Define_context_con_nwc";;
let nam_iba = "local";;
let fno_ibo = Inputbox_fullnameoffile_by_basicname_inputbox_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
( fno_ibo : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Define_context_con_nwc.loc"
);;

let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo ;;

test_number 2 (
(sym_lex_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Con_nwc"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_nwc"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_nwc"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_stringed_domain_symbol
        (Localinput_lexer_keyword_stringed_domain_symbol_t.Localinput_lexer_keyword_stringed_domain_constructor
          "skeleton")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "skeleton"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
        (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
          "nwchem")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "nwchem"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_stringed_databox_symbol
        (Localinput_lexer_keyword_stringed_databox_symbol_t.Localinput_lexer_keyword_stringed_databox_constructor
          "cc_pvtz")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "cc_pvtz"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "context")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol
          (Localinput_lexer_basic_word_bare_lowercase_symbol_t.Localinput_lexer_basic_word_bare_lowercase_constructor
            "stop"))))]
);;

let lex_l = sym_lex_l ;;
let lex_cur = List.hd lex_l ;;

test_number 3 (
(lex_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
   (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
     (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
       "Con_nwc"))
);;


let sym_loi_t = provide nam_ibo;
