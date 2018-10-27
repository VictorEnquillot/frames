open Make_test_v;;

testing "Db1pointsdata_parser_v with
    Db1pointsdata_parser_u_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_parser_u_segment_bc.ml";; 

*)
(* coordinates_units_length   angstrom    *)
(* coordinates_units_angle    degree      *)
(* coordinates_kind           cylindrical *)
(* figure_kind segment                    *)
(* figure_name BC                         *)
(* vertex BC_B       1.  0.  0.           *)
(* vertex BC_C       1. 90.  1.           *)

open Db1pointsdata_parser_v;;

let nam_dbo = "segment_BC";;

let sym_lex_l = 
    Db1pointsdata_lexer_lexical_analysis_v.db1pointsdata_lexer_symbol_list_of_basicname_databox 
      nam_dbo;;

test_number 1 (
(sym_lex_l : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
        (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
          "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/segment_BC.db1")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol
      (Db1pointsdata_lexer_keyword_coordinates_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_symbol
        Db1pointsdata_lexer_keyword_coordinates_units_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_length));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
        (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
          "angstrom")));
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
          "degree")));
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
          "cylindrical")));
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
          "segment")));
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
          "BC")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_symbol
        (Db1pointsdata_lexer_basic_word_uppercase_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_constructor
          "BC_B")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "1."));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "0."));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "0."));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_symbol
        (Db1pointsdata_lexer_basic_word_uppercase_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_constructor
          "BC_C")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "1."));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "90."));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
      (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor
        "1."));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol);
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
      Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eof)]
);;

let sym_lex_s = Db1pointsdata_parser_tools_v.db1pointsdata_lexer_symbol_stack_of_basicname_databox nam_dbo;;

let nam_mod = "Db1pointsdata_parser_u";;
let nam_fun = "some_function";;

let sym_lex_pop = Db1pointsdata_parser_tools_v.db1pointsdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 2 (
( sym_lex_pop : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
   (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
     (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
       (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/segment_BC.db1")))
);;

(* <lexer_keyword_coordinates_units_length> *) 
let sym_lex_pop = Db1pointsdata_parser_tools_v.db1pointsdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 3 (
( sym_lex_pop : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol
     (Db1pointsdata_lexer_keyword_coordinates_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_symbol
       Db1pointsdata_lexer_keyword_coordinates_units_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_length))
);;

(* <lexer_basic_word_lowercase_constructor> *) 
let sym_lex_pop = Db1pointsdata_parser_tools_v.db1pointsdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 4 (
( sym_lex_pop : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
   (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
     (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
       (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor
         "angstrom")))
);;

let sym_lex_top = Db1pointsdata_parser_tools_v.db1pointsdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 5 (
( sym_lex_top : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
 Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol
     Db1pointsdata_lexer_keyword_character_symbol_t.Db1pointsdata_lexer_keyword_character_eol)
);;

let sym_lex_top = Db1pointsdata_parser_tools_v.db1pointsdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let nam_fig = Db1pointsdata_parser_tools_v.next_name_of_current_predicate_of_db1pointsdata_lexer_symbol_stack
	Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_token_figure_name
	sym_lex_s;;

test_number 6 (
(nam_fig : string ) = 
"BC"
);;

let sym_lex_cur = 
    Stack_v.find_destructive_of_predicate_of_stack 
      Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_symbol
      sym_lex_s
  ;;

test_number 7 (
(sym_lex_cur : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol
     (Db1pointsdata_lexer_keyword_coordinates_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_symbol
       Db1pointsdata_lexer_keyword_coordinates_units_symbol_t.Db1pointsdata_lexer_keyword_coordinates_units_angle))
);;

Stack.push sym_lex_cur sym_lex_s;;

(* db1pointsdata_set_body_cluster_subtree_list *)
let sym_db1_dbc_stl = 
    db1pointsdata_set_body_cluster_subtree_list_of_figure_name_of_db1pointsdata_lexer_symbol_stack
      nam_fig
      sym_lex_s;;

test_number 8 (
(sym_db1_dbc_stl :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
        (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
          (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
            "BC"))),
    [Tree_t.Inner
      (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
        (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
          (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_coordinates_symbol
            (Db1pointsdata_set_body_bundle_coordinates_symbol_t.Db1pointsdata_set_body_bundle_coordinates_constructor
              "BC"))),
      [Tree_t.Inner
        (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
          (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
            (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol
              (Db1pointsdata_set_fence_cell_coordinates_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_symbol
                (Db1pointsdata_set_fence_cell_coordinates_units_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_angle_symbol
                  (Db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_angle_constructor
                    "BC"))))),
        [Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
              (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
                (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_symbol
                  (Db1pointsdata_set_fence_token_coordinates_units_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_symbol
                    (Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol
                      (Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor
                        "BC")))))))]);
       Tree_t.Inner
        (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
          (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
            (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol
              (Db1pointsdata_set_fence_cell_coordinates_symbol_t.Db1pointsdata_set_fence_cell_coordinates_kind_symbol
                (Db1pointsdata_set_fence_cell_coordinates_kind_symbol_t.Db1pointsdata_set_fence_cell_coordinates_kind_constructor
                  "BC")))),
        [Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
              (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
                (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_symbol
                  (Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol
                    (Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor
                      "BC"))))))])]);
     Tree_t.Inner
      (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
        (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
          (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_figure_symbol
            (Db1pointsdata_set_body_bundle_figure_symbol_t.Db1pointsdata_set_body_bundle_figure_constructor
              "BC"))),
      [Tree_t.Inner
        (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
          (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
            (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol
              (Db1pointsdata_set_fence_cell_figure_symbol_t.Db1pointsdata_set_fence_cell_figure_kind_symbol
                (Db1pointsdata_set_fence_cell_figure_kind_symbol_t.Db1pointsdata_set_fence_cell_figure_kind_constructor
                  "BC")))),
        [Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
              (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_figure_symbol
                (Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol
                  (Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_segment_symbol
                    (Db1pointsdata_set_fence_token_figure_kind_segment_symbol_t.Db1pointsdata_set_fence_token_figure_kind_segment_constructor
                      "BC"))))))]);
       Tree_t.Inner
        (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
          (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
            (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol
              (Db1pointsdata_set_fence_cell_figure_symbol_t.Db1pointsdata_set_fence_cell_figure_name_symbol
                (Db1pointsdata_set_fence_cell_figure_name_symbol_t.Db1pointsdata_set_fence_cell_figure_name_constructor
                  "BC")))),
        [Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
              (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol
                (Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol
                  (Db1pointsdata_set_fence_basic_word_uppercase_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_constructor
                    "BC")))))])])]);
   Tree_t.Inner
    (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
        (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
          (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
            "BC"))),
    [Tree_t.Inner
      (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
        (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
          (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
            (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
              "BC_B"))),
      [Tree_t.Leaf
        (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
          (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol
            (Db1pointsdata_set_fence_keyword_symbol_t.Db1pointsdata_set_fence_keyword_vertex_symbol
              (Db1pointsdata_set_fence_keyword_vertex_symbol_t.Db1pointsdata_set_fence_keyword_vertex_constructor
                "BC_B"))));
       Tree_t.Leaf
        (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
          (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
            (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
              (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
                "BC_B"))));
       Tree_t.Inner
        (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
          (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
            (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
              (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
                "BC_B"))),
        [Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
              (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                  (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                    "1.")))));
         Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
              (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                  (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                    "0.")))));
         Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
              (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                  (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                    "0.")))))])]);
     Tree_t.Inner
      (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
        (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
          (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
            (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
              "BC_C"))),
      [Tree_t.Leaf
        (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
          (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol
            (Db1pointsdata_set_fence_keyword_symbol_t.Db1pointsdata_set_fence_keyword_vertex_symbol
              (Db1pointsdata_set_fence_keyword_vertex_symbol_t.Db1pointsdata_set_fence_keyword_vertex_constructor
                "BC_C"))));
       Tree_t.Leaf
        (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
          (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
            (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
              (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
                "BC_C"))));
       Tree_t.Inner
        (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
          (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
            (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
              (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
                "BC_C"))),
        [Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
              (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                  (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                    "1.")))));
         Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
              (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                  (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                    "90.")))));
         Tree_t.Leaf
          (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
            (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
              (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                  (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                    "1.")))))])])])]
);;

let sym_db1_t = db1pointsdata_symbol_tree_root_databox_of_basicname_databox nam_dbo;;

let sym_db1_rtl = Tree_v.root_topson_node_list_off_tree sym_db1_t;;

test_number 9 (
(sym_db1_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
    (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
      (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
        "segment_BC"));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
        (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
          "BC")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
        (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
          "BC")))]
);;

let sym_db1_lnl = Tree_v.leaf_node_list_off_tree sym_db1_t;;

test_number 10 (
(sym_db1_lnl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
      (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
        (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_symbol
          (Db1pointsdata_set_fence_token_coordinates_units_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_symbol
            (Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol
              (Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor
                "BC"))))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
      (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
        (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_symbol
          (Db1pointsdata_set_fence_token_coordinates_units_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_symbol
            (Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol
              (Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor
                "BC"))))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
      (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
        (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_symbol
          (Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol
            (Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor
              "BC")))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
      (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_figure_symbol
        (Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol
          (Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_segment_symbol
            (Db1pointsdata_set_fence_token_figure_kind_segment_symbol_t.Db1pointsdata_set_fence_token_figure_kind_segment_constructor
              "BC")))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol
        (Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol
          (Db1pointsdata_set_fence_basic_word_uppercase_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_constructor
            "BC"))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol
      (Db1pointsdata_set_fence_keyword_symbol_t.Db1pointsdata_set_fence_keyword_vertex_symbol
        (Db1pointsdata_set_fence_keyword_vertex_symbol_t.Db1pointsdata_set_fence_keyword_vertex_constructor
          "BC_B")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
      (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
        (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
          "BC_B")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
        (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
          (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
            "1."))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
        (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
          (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
            "0."))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
        (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
          (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
            "0."))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol
      (Db1pointsdata_set_fence_keyword_symbol_t.Db1pointsdata_set_fence_keyword_vertex_symbol
        (Db1pointsdata_set_fence_keyword_vertex_symbol_t.Db1pointsdata_set_fence_keyword_vertex_constructor
          "BC_C")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
      (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
        (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
          "BC_C")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
        (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
          (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
            "1."))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
        (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
          (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
            "90."))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
    (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
        (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
          (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
            "1."))))]
);;
