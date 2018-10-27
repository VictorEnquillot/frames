open Make_test_v;;

testing "Db1pointsdata_parser_tools_v with
    Db1pointsdata_parser_tools_u_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Db1pointsdata_parser_v" "debug";;
Trace_what_by_module_name_register_v.store "Db1pointsdata_parser_body_cluster_information_v" "debug";;
Trace_what_by_module_name_register_v.store "Db1pointsdata_parser_body_cluster_vertex_v" "debug";;


(* toplevel 
   #use "Db1pointsdata_parser_tools_u_triangle_w.ml";; 

*)

(* coordinates_units_length  meter      *)
(* coordinates_units_angle   radian     *)
(* coordinates_kind          spherical  *)
(* figure_kind point                    *)
(* figure_name A                        *)
(* vertex A       1. 0.785398163397448279 0.785398163397448279 *)

let nam_dba = "db1points";;
let nam_dbo = "Point_a";;

open Db1pointsdata_parser_tools_v;;

let sym_lex_l = 
    Db1pointsdata_lexer_lexical_analysis_v.db1pointsdata_lexer_symbol_list_of_basicname_databox 
      nam_dbo;;

test_number 1 (
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
          "A_A")));
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

let sym_lex_s = db1pointsdata_lexer_symbol_stack_of_basicname_databox nam_dbo;;

let nam_mod = "Db1pointsdata_parser_u";;
let nam_fun = "some_function";;

let sym_lex_pop = db1pointsdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 2 (
( sym_lex_pop : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
   (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
     (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
       (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/Point_a.db1")))
);;

(* <lexer_keyword_coordinates_units_length> *) 
let sym_lex_pop = db1pointsdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 3 (
( sym_lex_pop : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol
     (Db1pointsdata_lexer_keyword_coordinates_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_symbol
       Db1pointsdata_lexer_keyword_coordinates_units_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_length))
);;

(* <lexer_basic_word_lowercase_constructor> *) 
let sym_lex_pop = db1pointsdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 4 (
( sym_lex_pop : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
   (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
     (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
       (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
         "meter")))
);;

let sym_lex_top = db1pointsdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 5 (
( sym_lex_top : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
 Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
     Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol)
);;

let sym_lex_top = db1pointsdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let nam_fig = next_name_of_current_predicate_of_db1pointsdata_lexer_symbol_stack
	Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_token_figure_name
	sym_lex_s;;

test_number 6 (
(nam_fig : string ) = 
"A"
);;

