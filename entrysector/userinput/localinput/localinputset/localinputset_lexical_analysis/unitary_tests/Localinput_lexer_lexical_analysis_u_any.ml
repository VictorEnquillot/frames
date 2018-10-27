open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_u_any.ml";;

(* Deleting Registers *)

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_u_any.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;

(* Database file *)

let nam_ibo_l = Inputbox_name_list_by_unit_provider_v.provide ();;

let nam_ibo = "Print_point_a";;

test_number 1 (
List.mem nam_ibo nam_ibo_l
);;

let fnd = Unix.getcwd () ;;
let nam_tri = Context_name_trio_by_fullnameofdirectory_provider_v.provide fnd;;

test_number 2 (
(nam_tri : string * string * string ) = 
("entry", "user", "local")
);;

let nam_iba = Trio_v.right_off_trio nam_tri;;
    Inputbox_fullnameoffile_by_basicname_inputbox_n_inputbase_name_provider_v.provide
      (nam_iba, nam_ibo)
;;

test_number 3 (
( nam_iba : string ) = 
"local"
);;

let fno_ibo = Inputbox_fullnameoffile_by_basicname_inputbox_n_inputbase_name_provider_v.provide
      (nam_iba, nam_ibo);;

let fno_dbo = inputbox_fullnameoffile_of_inputbox_name nam_ibo;;

test_number 4 (
(fno_dbo : string) =
 "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Print_point_a.loc"
);;

let sbu = File_v.scanbuf_of_fullname fno_dbo;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 5 (
(c : char ) = 
'd'
);;

let sym_lex_l = localinput_lexer_symbol_list_of_scanbuf sbu;;

let sym_lex_top_l = List_v.sublist_of_int_of_length_of_list 0 4 sym_lex_l;;

test_number 6 (
(sym_lex_top_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Poi_a")));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_type]
);;

let sym_lex_end_l = List_v.sublist_of_int_of_length_of_list 0 4 (List.rev sym_lex_l);;

test_number 7 (
(sym_lex_end_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
[Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_stop;
 Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_end;
 Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
 Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
            "Uni_ang")))]
);;
