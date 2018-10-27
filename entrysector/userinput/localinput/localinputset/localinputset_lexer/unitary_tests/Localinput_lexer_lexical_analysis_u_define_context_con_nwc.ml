open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_u_define_context_con_nwc.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";;

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_u_define_context_con_nwc.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;

let nam_mod = "Localinput_lexer_lexical_analysis_v";;
let nam_ibo = "Define_context_con_nwc";;

let nof_ibo = nam_ibo ^ ".loc";;
let fno_ibo = 
    Inputbox_fullnameoffile_by_inputbox_nameoffile_provider_v.provide 
      nof_ibo;;

test_number 1 (
( fno_ibo : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Define_context_con_nwc.loc"
);;

(* define Con_nwc  *)
(*        context *)
(*          domain "skeleton" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pvtz" *)
(* 	    end -- context *)
(*        end -- define *)
(* stop *)

let sbu = File_v.scanbuf_of_fullname fno_ibo;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 2 (
(c : char ) = 
'd'
);;

let sym_lex_1l = localinput_lexer_symbol_list_first_pass_of_scanbuf sbu;;
let sym_lex_l = localinput_lexer_symbol_list_second_pass_of_first_pass sym_lex_1l;;

let sym_lex_top_l = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_l;;

test_number 3 (
(sym_lex_top_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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
        "Con_nwc"))]
);;

let pre_lex_beg s = Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_context_constructor s;;
let pre_lex_end s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_named_end_constructor s;;

let sym_lex_sl = List.filter pre_lex_beg sym_lex_l;;
let sym_lex_sl = List_v.sublist_of_predicate_included_of_predicate_included_of_list  pre_lex_beg  pre_lex_end sym_lex_l;;

test_number 4 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_nwc"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_domain_symbol
        (Localinput_lexer_keyword_named_domain_symbol_t.Localinput_lexer_keyword_named_domain_constructor
          "skeleton")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "skeleton"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_database_symbol
        (Localinput_lexer_keyword_named_database_symbol_t.Localinput_lexer_keyword_named_database_constructor
          "nwchem")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "nwchem"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_databox_symbol
        (Localinput_lexer_keyword_named_databox_symbol_t.Localinput_lexer_keyword_named_databox_constructor
          "cc_pvtz")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "cc_pvtz"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "context")))]
);;

let sym_lex_end_l = List.filter pre_lex_end sym_lex_l;;

test_number 5 (
(sym_lex_end_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "context")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "define")))]
);;

let sym_lex_las_l = List_v.last_elements_of_int_of_list 2 sym_lex_l;;

test_number 6 (
( sym_lex_las_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol
          (Localinput_lexer_basic_word_bare_lowercase_symbol_t.Localinput_lexer_basic_word_bare_lowercase_constructor
            "stop"))))]
);;
