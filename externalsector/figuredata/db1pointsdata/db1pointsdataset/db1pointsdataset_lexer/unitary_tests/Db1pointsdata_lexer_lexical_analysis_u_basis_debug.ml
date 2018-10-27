open Make_test_v;;

testing "Db1pointsdata_lexer_v with
    Db1pointsdata_lexer_lexical_analysis_u_basis_debug.ml";;

(* Deleting Registers *)


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1pointsdata_lexer_lexical_analysis_u_basis_debug.ml";; 

*)

(* Tools *)

let current_sub_list cur_idx len sym_lex_l sym_lex = 
  let sym_lex_sl = List_v.sublist_of_int_of_length_of_list cur_idx 500 sym_lex_l in
  let sym_idx = List_v.index_of_element_of_list sym_lex sym_lex_sl in
  List_v.sublist_of_int_of_length_of_list sym_idx len sym_lex_sl
;;

(* Database file *)

let nam_dgn = "gaussian_db1points";;
let nam_bas = "basis";;
 
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
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_db1points_basis.dgn"
);;


(* Debug *)

open Db1pointsdata_lexer_lexical_analysis_v;;

let sbu = File_v.scanbuf_of_fullnameoffile fno_dgn;;
Scanf.bscanf sbu "%0c" (fun c ->c);;

let sym_lex_l = List.rev (dgn_lexer_symbol_revlist_of_database_fullnameoffile fno_dgn);;

let cur_idx = 0;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_variable_basis_name_atomic_orbital "ao basis";;
let basis_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;

test_number 4 (
(basis_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_basis_name_atomic_orbital
      "ao basis");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_blank)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_print;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 4;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_hash_basis;;
let hash_basis_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;

test_number 5 (
(hash_basis_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_hash_basis;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_set;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_colon)))]
);;

let cur_idx = 9;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_character_mark_l_parenthesis;;
let expansion_l = current_sub_list cur_idx 10 sym_lex_l sym_lex;;

test_number 6 (
(expansion_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_l_parenthesis)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "10"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "s");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "5"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "p");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "d");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_r_parenthesis)))]
);;

let cur_idx = 20;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_symbol_r_arrow;;
let arrow_l = current_sub_list cur_idx 1 sym_lex_l sym_lex;;

test_number 7 (
(arrow_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) = 
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_symbol_symbol
    Db1pointsdata_lexer_symbol_symbol_t.Db1pointsdata_lexer_symbol_r_arrow]
);;

let cur_idx = 20;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_character_mark_l_bracket;;
let contraction_l = current_sub_list cur_idx 10 sym_lex_l sym_lex;;

test_number 8 (
(contraction_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
 [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_l_bracket)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "3"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "s");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "p");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "1"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "d");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_r_bracket)))]
);;

let cur_idx = 20;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Au";;
let values_l = current_sub_list cur_idx 18 sym_lex_l sym_lex;;

test_number 9 (
(values_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "Au")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_symbol
        (Db1pointsdata_lexer_basic_word_uppercase_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_alphabetic
          "SP")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "6 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "2.8090000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-1.2021556"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "1.1608481"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "6 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "6 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "1.5950000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "1.6741578"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-1.8642846"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "4 blank")]
);;

let cur_idx = 20;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "D";;
let values_l = current_sub_list cur_idx 8 sym_lex_l sym_lex;;

test_number 10 (
(values_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "D")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "6 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0598000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.1000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "6 blank")]
);;

let cur_idx = 20;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_hash_basis;;
let hash_basis_l = current_sub_list cur_idx 16 sym_lex_l sym_lex;;

test_number 11 (
(hash_basis_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_hash_basis;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_set;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_colon)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_l_parenthesis)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "10"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "s");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "5"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "p");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_shell_name "d");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_r_parenthesis)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))))]
);;

let end_e = List_v.last_element_off_list sym_lex_l;;

test_number 12 (
( end_e : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end_of_file
);;
