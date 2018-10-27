open Make_test_v;;

testing "Db1pointsdata_parser_v with
    Db1pointsdata_lexer_lexical_analysis_u_Point_a.ml";;

(* Deleting Registers *)

(* toplevel 
   #use "Db1pointsdata_lexer_lexical_analysis_u_Point_a.ml";; 

*)

open Db1pointsdata_lexer_lexical_analysis_v;;

(* Database file *)

let nam_dbo_l = Databox_name_list_by_unit_provider_v.provide ();;

test_number 1 (
(nam_dbo_l : string list ) =
  ["3_21g"; "6_31GSS"; "6_31GSSp"; "Point_a"; "cc_pVTZ"; "LANL2DZ";
   "segment_BC"; "segment_S"; "STO_3G"; "test_ao"; "test_ao_ecp"; "test_ecp";
   "triangle_ire"; "triangle_iso"; "triangle_isoacute"; "triangle_isoobtuse";
   "triangle_isoright"; "VTZ"]
);;

let nam_dbo = "Point_a";;
let fno_dbo = databox_fullnameoffile_of_basicname_databox nam_dbo;;

test_number 2 (
(fno_dbo : string) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/Point_a.db1"
);;

let sbu = File_v.scanbuf_of_fullname fno_dbo;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 3 (
(c : char ) = 
'c'
);;

let sym_lex_sl = db1pointsdata_lexer_symbol_list_of_scanbuf sbu;;

let sym_lex_l = db1pointsdata_lexer_symbol_list_of_basicname_databox nam_dbo;;

test_number 4 (
(sym_lex_l : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
        (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
          "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/Point_a.db1")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol
      (Db1pointsdata_lexer_keyword_coordinates_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_symbol
        Db1pointsdata_lexer_keyword_coordinates_units_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_length));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
        (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
          "meter")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol
      (Db1pointsdata_lexer_keyword_coordinates_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_symbol
        Db1pointsdata_lexer_keyword_coordinates_units_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_angle));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
        (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
          "radian")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol
      Db1pointsdata_lexer_keyword_coordinates_symbol_t.Db1pointsdata_lexer_keyword_coordinates_kind);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
        (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
          "spherical")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol
      Db1pointsdata_lexer_keyword_figure_symbol_t.Db1pointsdata_lexer_keyword_figure_kind);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
        (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
          "point")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_token_symbol
    (Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_figure_symbol
      Db1pointsdata_lexer_token_figure_symbol_t.Db1pointsdata_lexer_token_figure_name);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_symbol
        (Db1pointsdata_lexer_basic_word_uppercase_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_constructor
          "A")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_symbol
        (Db1pointsdata_lexer_basic_word_uppercase_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_constructor
          "A")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "1."));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "0.785398163397448279"));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "0.785398163397448279"));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eof)]
);;
