open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_u_define_external_aopef_hes11.ml";;

(* Deleting Registers *)

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_u_define_external_aopef_hes11.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;
let nam_mod = "Localinput_lexer_lexical_analysis_v";;

let fnd = Unix.getenv ("FLOI") ;;

let nof = "Define_external_aopef_hes11.loc";;
let fno = fnd ^ "/" ^ nof;;

test_number 1 (
( fno : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputset/localinputset_files/Define_external_aopef_hes11.loc"
);;

(* define Aopef_hes11	 *)
(*        external  *)
(*          type [ "skeleton" "centered" "aopef" "constructor" ] *)
(*          external_name "he s 1 1" *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* stop *)

let sbu = File_v.scanbuf_of_fullname fno;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 2 (
(c : char ) = 
'd'
);;

let sym_lex_l = localinput_lexer_symbol_list_of_scanbuf sbu;;

let sym_lex_top_l = List_v.sublist_of_int_of_length_of_list 0 2 sym_lex_l;;

test_number 3 (
(sym_lex_top_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Aopef_hes11")))]
);;

let pre_lex_beg s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_external_name s;;
let pre_lex_end s = Localinput_lexer_symbol_v.is_localinput_lexer_basic_string_constructor s;;

let sym_lex_sl = List_v.sublist_of_predicate_included_of_predicate_included_of_list  pre_lex_beg  pre_lex_end sym_lex_l;;

test_number 4 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_external_name;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string_symbol
      (Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_constructor
        "he s 1 1"))]
);;

let sym_lex_end_l = List.rev (List_v.sublist_of_int_of_length_of_list 0 2 (List.rev sym_lex_l));;

test_number 5 (
(sym_lex_end_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_stop]
);;

