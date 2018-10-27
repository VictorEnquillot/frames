open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_first_pass_by_by_by_u_print_point_a.ml";;

(* Deleting Registers *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";;  *)

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_first_pass_by_by_by_u_print_point_a.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;

let nam_mod = "Localinput_lexer_lexical_analysis_v";;
let nam_ibo = "Print_point_a";;
let nam_iba = "local";;

let fno_ibo = Inputbox_fullnameoffile_by_basicname_inputbox_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
( fno_ibo : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Print_point_a.loc"
);;

let sbu = File_v.scanbuf_of_fullname fno_ibo;;
let sym_lex_1_sl = localinput_lexer_symbol_list_first_pass_of_inputbox_name_of_scanbuf sbu;;

let sym_lex_1_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_1_sl;;

test_number 2 (
(sym_lex_1_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
[Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?1?"));
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

let pre_lex_beg s = Localinput_lexer_symbol_v.is_localinput_lexer_command_print_constructor s;;
let pre_lex_end s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defnamed_end_constructor s;;

let sym_lex_sl = List.filter pre_lex_beg sym_lex_1_sl;;
let sym_lex_sl = List_v.sublist_of_predicate_included_of_predicate_included_of_list  pre_lex_beg  pre_lex_end sym_lex_1_sl;;

test_number 3 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
      (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
        "?1?"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Poi_a"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_units_symbol
        (Localinput_lexer_keyword_varnamed_units_symbol_t.Localinput_lexer_keyword_varnamed_units_constructor
          "?nam_var?")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_len"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_ang"))));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")))]
);;

let sym_lex_end_l = List.filter pre_lex_end sym_lex_1_sl;;

test_number 4 (
(sym_lex_end_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "external")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "external")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")))]
);;

let sym_lex_fin_1_l = List.rev (List_v.sublist_of_int_of_length_of_list 0 2 (List.rev sym_lex_1_sl));;

test_number 5 (
(sym_lex_fin_1_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol
      Localinput_lexer_keyword_unnamed_symbol_t.Localinput_lexer_keyword_unnamed_stop)]
);;

let sbu = File_v.scanbuf_of_fullname fno_ibo;;
let sym_lex_l = localinput_lexer_symbol_list_first_pass_of_inputbox_name_of_scanbuf sbu;;
let sym_lex_fin_l = List.rev (List_v.sublist_of_int_of_length_of_list 0 2 (List.rev sym_lex_l));;
