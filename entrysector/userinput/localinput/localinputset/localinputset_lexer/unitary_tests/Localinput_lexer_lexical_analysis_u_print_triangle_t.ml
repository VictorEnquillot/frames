open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_u_print_triangle_t.ml";;

(* Deleting Registers *)

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_u_print_triangle_t.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;
let nam_mod = "Localinput_lexer_lexical_analysis_v";;

let fnd = Unix.getenv ("FLOI") ;;

let nof = "Print_triangle_t.loc";;
let fno = fnd ^ "/" ^ nof;;

test_number 1 (
( fno : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputset/localinputset_files/Print_point_a.loc"
);;

(* print Poi_a *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

let sbu = File_v.scanbuf_of_fullname fno;;
let c = Scanf.bscanf sbu "%0c" (fun c -> c);;

test_number 2 (
(c : char ) = 
'p'
);;

let sym_lex_l = localinput_lexer_symbol_list_of_scanbuf sbu;;

let sym_lex_top_l = List_v.sublist_of_int_of_length_of_list 0 4 sym_lex_l;;

test_number 3 (
(sym_lex_top_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_print;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Poi_a")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_units;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket]
);;

let pre_lex_beg s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_units s;;
let pre_lex_end s = Localinput_lexer_symbol_v.is_localinput_lexer_token_r_bracket s;;

let sym_lex_sl = List_v.sublist_of_predicate_included_of_predicate_included_of_list  pre_lex_beg  pre_lex_end sym_lex_l;;

test_number 4 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_units;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Uni_len")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Uni_ang")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket]
);;

let sym_lex_end_l = List_v.sublist_of_int_of_length_of_list 0 4 (List.rev sym_lex_l);;

test_number 5 (
(sym_lex_end_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
[Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_stop;
 Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_end;
 Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
 Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
            "Uni_ang")))]
);;
