open Make_test_v;;

testing "Db1pointsdata_lexer_v with
    Db1pointsdata_lexer_lexical_analysis_u_comment_debug.ml";;

(* Deleting Registers *)


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1pointsdata_lexer_lexical_analysis_u_comment_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "gaussian_db1points";;
let nam_bas = "comment";;
 
let fno_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
(fno_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db2";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_g9x";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_molpro";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_pdb"]
);;

let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_dgn s) fno_dba_l;;

test_number 2 (
(nam_dir : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points"
);;

let nof_dgn = nam_dgn ^ "_" ^ nam_bas ^ ".dgn";;
let fno_dgn = nam_dir ^ "/files/" ^ nof_dgn;;

test_number 3 (
(fno_dgn : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_db1points_comment.dgn"
);;

(* Debug *)

open Db1pointsdata_lexer_lexical_analysis_v;;

let sbu = File_v.scanbuf_of_fullnameoffile fno_dgn;;
Scanf.bscanf sbu "%0c" (fun c ->c);;

let sym_lex_rl = dgn_lexer_symbol_revlist_of_database_fullnameoffile fno_dgn;;

let sym_lex_nos_l = List.rev (List.filter (fun s -> s <> Db1pointsdata_lexer_symbol_v.dgn_lexer_character_mark_space) sym_lex_rl);;

let version_l = List_v.sublist_of_int_of_length_of_list 0 4 sym_lex_nos_l;;

test_number 4 (
(version_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_beginning_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_version "v1.2.2");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let comments_l = List_v.sublist_of_int_of_length_of_list 4 2 sym_lex_nos_l;;

test_number 5 (
(comments_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_basis_set_name "LANL2DZ");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let comments_l = List_v.sublist_of_int_of_length_of_list 6 16 sym_lex_nos_l;;

test_number 6 (
(comments_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# Elements                             References");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_dashed
      "# --------                             ----------");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# H  - Ne: T. H. Dunning Jr. and P. J. Hay, in Methods of Electronic Structure");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# Theory, Vol. 2, H. F. Schaefer III, ed., PLENUM PRESS (1977)");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# Na - Hg: P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 270 (1985).");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_empty;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end_of_file]
);;

let end_e = List_v.last_element_off_list sym_lex_nos_l;;

test_number 7 (
( end_e : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end_of_file
);;
