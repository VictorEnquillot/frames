open Make_test_v;;

testing "Db1pointsdata_lexer_v with
    Db1pointsdata_lexer_lexical_analysis_u_ecp_debug.ml";;

(* Deleting Registers *)


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1pointsdata_lexer_lexical_analysis_u_ecp_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "gaussian_db1points";;
let nam_bas = "ecp";;
 
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
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_db1points_ecp.dgn"
);;

(* Debug *)

let current_sub_list cur_idx len sym_lex_l sym_lex = 
  let sym_lex_sl = List_v.sublist_of_int_of_length_of_list cur_idx 30 sym_lex_l in
  let sym_idx = List_v.index_of_element_of_list sym_lex sym_lex_sl in
  List_v.sublist_of_int_of_length_of_list sym_idx len sym_lex_sl
;;

open Db1pointsdata_lexer_lexical_analysis_v;;

let sbu = File_v.scanbuf_of_fullnameoffile fno_dgn;;
Scanf.bscanf sbu "%0c" (fun c ->c);;

let sym_lex_l = List.rev (dgn_lexer_symbol_revlist_of_database_fullnameoffile fno_dgn);;

let cur_idx = 0;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_ecp;;
let ecp_l = current_sub_list cur_idx 2 sym_lex_l sym_lex;;

test_number 4 (
(ecp_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_ecp;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 5;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Au";;
let nelec_l = current_sub_list cur_idx 6 sym_lex_l sym_lex;;

test_number 5 (
(nelec_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "Au")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_ecp_electron_number;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "60"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 16;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Au";;
let ul_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;

test_number 6 (
(ul_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =  
[Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "Au")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_ecp_local;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 20;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_numeric_positive_integer "1";;
let values_l = current_sub_list cur_idx 12 sym_lex_l sym_lex;;

test_number 7 (
(values_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "1"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "622.6287956"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "12 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-60.0000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "136.2843607"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "11 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-555.5292312"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank")]
);;

let cur_idx = 32;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Au";;
let au_s_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;

test_number 8 (
(au_s_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =  
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "Au")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          (Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_space
            "blank"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "S")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 36;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_numeric_non_negative_integer "0";;
let values_l = current_sub_list cur_idx 18 sym_lex_l sym_lex;;

test_number 9 (
(values_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_non_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_non_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_non_negative_integer
            "0"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "194.7374304"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "3.0000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "1"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "351.5327447"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "38.6020880"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "5 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "32.0914617"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "12 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "374.9935520"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank")]
);;

let cur_idx = 50;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_end;;
let end_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;

test_number 10 (
(end_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space
      "2 end_of_line");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end_of_file]
);;

let end_e = List_v.last_element_off_list sym_lex_l;;

test_number 11 (
( end_e : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end_of_file
);;

