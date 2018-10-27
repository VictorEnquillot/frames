open Make_test_v;;

testing "Nwchemdata_parser_v with
    Nwchemdata_lexer_lexical_analysis_u_try_ecp.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Nwchemdata_lexer_lexical_analysis_v" "debug";;

(* toplevel 
   #use "Nwchemdata_lexer_lexical_analysis_u_try_ecp.ml";; 

*)

open Nwchemdata_lexer_lexical_analysis_v;;

(* Database file *)

let nam_dbo_l = Databox_name_list_by_unit_provider_v.provide ();;

let nam_dbo = "try_ecp";;
let fno_dbo = databox_fullnameoffile_of_databox_name nam_dbo;;

test_number 1 (
(fno_dbo : string) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/try_ecp.nwc"
);;

let sbu = File_v.scanbuf_of_fullname fno_dbo;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 2 (
(c : char ) = 
'v'
);;

let sym_lex_rvl = nwchemdata_lexer_symbol_revlist_of_scanbuf sbu;;
let sym_lex_l = List.rev sym_lex_rvl;;

let idx_ecp = List_v.index_of_element_of_list (Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp) sym_lex_l;; 

test_number 3 (
(idx_ecp : int ) = 
22
);;

let idx_end = List_v.index_of_element_of_list (Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end) sym_lex_l;; 

test_number 4 (
(idx_end : int ) = 
75
);;

let sym_lex_top_sl = List_v.sublist_of_int_of_int_of_list 0 idx_ecp sym_lex_l;;

test_number 5 (
(sym_lex_top_sl : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol list ) =
[Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
  (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version
    "v1.2.2");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
  (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name
    "try_ecp");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
  (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
    "# Elements                             References");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
  (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_dashed
    "# --------                             ----------");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
  (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
    "# Na - Hg: P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 270 (1985).");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
  (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
    "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 299 (1985).");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
  Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_empty;
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
  (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
    (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
        Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
  (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
    "2 end_of_line");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
  Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp]
);;

let sym_lex_body_sl = List_v.sublist_of_int_of_int_of_list idx_ecp idx_end sym_lex_l;;

test_number 6 (
(sym_lex_body_sl : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
        (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
          "Au")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_electron_number;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "60"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
        (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
          "Au")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_local;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "1"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "4 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "622.6287956"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "12 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol
          (Nwchemdata_lexer_basic_word_numeric_negative_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_float
            "-60.0000000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "4 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "136.2843607"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "11 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol
          (Nwchemdata_lexer_basic_word_numeric_negative_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_float
            "-555.5292312"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
        (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
          "Au")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
        (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
          "S")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_non_negative_symbol
          (Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_t.Nwchemdata_lexer_basic_word_numeric_non_negative_integer
            "0"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "4 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "194.7374304"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "14 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "3.0000000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "1"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "4 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "351.5327447"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "13 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "38.6020880"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "4 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "122.3270402"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "12 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "864.8370727"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "5 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "32.0914617"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space
      "12 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "374.9935520"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end]
);;

let sym_lex_end_sl = List_v.sublist_of_int_of_int_of_list idx_end 1000 sym_lex_l;;

test_number 7 (
( sym_lex_end_sl : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "2 tabulation");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file]
);;
