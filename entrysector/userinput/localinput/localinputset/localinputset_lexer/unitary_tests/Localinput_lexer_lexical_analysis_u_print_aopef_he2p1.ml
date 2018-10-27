open Make_test_v;;

testing "Localinput_lexer_lexical_analysis_v with
    Localinput_lexer_lexical_analysis_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

(* Tracing *)


(* Debuging *)

(* define Con_nwc  *)
(*        context *)
(*          domain "skeleton" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pvtz" *)
(* 	    end -- context *)
(*        end -- define *)

(* define Aopef_he2p1	 *)
(*        external  *)
(*          type [ "skeleton" "centered" "aopef" "constructor" ] *)
(*          external_name "he 2 p 1" *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len  *)
(*        external  *)
(*          type [ "elementary" "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang  *)
(*        external  *)
(*          type [ "elementary" "units" "angle" "radian" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Aopef_he2p1  *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_u_print_aopef_he2p1.ml";;

*)

open Localinput_lexer_lexical_analysis_v;;

let nam_ibo = "Print_aopef_he2p1";;
let fno_ibo = inputbox_fullnameoffile_of_inputbox_name nam_ibo;;

let sym_lex_1l = localinput_lexer_symbol_list_first_pass_of_scanbuf sbu;;
let sym_lex_l = localinput_lexer_symbol_list_second_pass_of_first_pass sym_lex_1l;;

let sym_lex_top_l = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_l;;

test_number 1 (
(sym_lex_top_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_anycase_symbol
        (Localinput_lexer_basic_word_anycase_symbol_t.Localinput_lexer_basic_word_anycase_constructor
          "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Print_aopef_he2p1.loc")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define]
);;

let pre_lex_def s = Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor s;;
let pre_lex_exn s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_external_name s;;
let pre_lex_end s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_named_end s;;
let pre_lex_str s = Localinput_lexer_symbol_v.is_localinput_lexer_basic_string_constructor s;;


let sym_lex_sl = List_v.sublist_of_predicate_included_of_predicate_included_of_list pre_lex_def  pre_lex_end sym_lex_l;;

test_number 2 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Con_nwc")));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "skeleton")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_database;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "nwchem")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_databox;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "cc_pvtz")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_end]
);; 

let sym_lex_end_l = List.rev (List_v.sublist_of_int_of_length_of_list 0 2 (List.rev sym_lex_l));;

test_number 3 (
(sym_lex_end_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
 [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_stop]
);;
