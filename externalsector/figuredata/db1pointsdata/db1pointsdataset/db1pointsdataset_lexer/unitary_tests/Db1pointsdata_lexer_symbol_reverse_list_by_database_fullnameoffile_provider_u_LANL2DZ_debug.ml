open Make_test_v;;

testing "Db1pointsdata_lexer_symbol_reverse_list_by_database_fullnameoffile_provider_v with
    Db1pointsdata_lexer_symbol_reverse_list_by_database_fullnameoffile_provider_u_LANL2DZ_debug.ml";;

(* Deleting Registers *)


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1pointsdata_lexer_symbol_reverse_list_by_database_fullnameoffile_provider_u_LANL2DZ_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "gaussian_db1points";;
let nam_bas = "LANL2DZ";;
 
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
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_db1points_LANL2DZ.dgn"
);;

(* Debug *)

let current_sub_list cur_idx len sym_lex_l sym_lex = 
  let sym_lex_sl = List_v.sublist_of_int_of_length_of_list cur_idx 500 sym_lex_l in
  let sym_idx = List_v.index_of_element_of_list sym_lex sym_lex_sl in
  List_v.sublist_of_int_of_length_of_list sym_idx len sym_lex_sl
;;

open Db1pointsdata_lexer_symbol_reverse_list_by_database_fullnameoffile_provider_v;;

let sym_lex_l = List.rev (provide fno_dgn);;

let cur_idx = 0;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_variable_version "v1.2.2";;
let version_l = current_sub_list cur_idx 2 sym_lex_l sym_lex;; 

test_number 4 (
(version_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =  
[Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
   (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_version "v1.2.2");
 Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
   (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
         (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
            Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 3;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_variable_basis_set_name "LANL2DZ";;
let basis_name_l = current_sub_list cur_idx 2 sym_lex_l sym_lex;; 

test_number 5 (
(basis_name_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_basis_set_name "LANL2DZ");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 5;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_hashline_reference "# Elements                             References";;
let comments_l = current_sub_list cur_idx 23 sym_lex_l sym_lex;; 

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
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 284 (1985).");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 299 (1985).");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
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
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 20;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_variable_basis_name_atomic_orbital "ao basis";;
let basis_print_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;  

test_number 7 (
(basis_print_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
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

let cur_idx = 24;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_hash_basis;;
let hash_basis_l = current_sub_list cur_idx 5 sym_lex_l sym_lex;;  

test_number 8 (
(hash_basis_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
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
            "blank"))))]
);;

let cur_idx = 28;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_character_mark_l_parenthesis;;
let expansion_l = current_sub_list cur_idx 7 sym_lex_l sym_lex;;  

test_number 9 (
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
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_r_parenthesis)))]
);;

let cur_idx = 35;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_symbol_r_arrow;;
let arrow_l = current_sub_list cur_idx 1 sym_lex_l sym_lex;;  

test_number 10 (
(arrow_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
 [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_symbol_symbol
    Db1pointsdata_lexer_symbol_symbol_t.Db1pointsdata_lexer_symbol_r_arrow]
);;

let cur_idx = 35;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_character_mark_l_bracket;;
let contraction_l = current_sub_list cur_idx 8 sym_lex_l sym_lex;;  

test_number 11 (
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
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_coupled_symbol
          Db1pointsdata_lexer_basic_character_mark_coupled_symbol_t.Db1pointsdata_lexer_character_mark_r_bracket)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 55;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Ne";;
let shell_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;  

test_number 12 (
(shell_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "Ne")));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
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

let cur_idx = 62;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_numeric_positive_float "12100.0000000";;
let values_l = current_sub_list cur_idx 34 sym_lex_l sym_lex;;  

test_number 13 (
(values_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "12100.0000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0012000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "3 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "1821.0000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0090920"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "432.8000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0413050"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "4 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "132.5000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.1378670"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "5 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "43.7700000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.3624330"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "5 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "14.9100000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.4722470"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "6 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "5.1270000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.1300350"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_spaced_end_of_line
      "8 blank")]
);;

let cur_idx = 100;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_hash_basis;;
let hash_basis_l = current_sub_list cur_idx 5 sym_lex_l sym_lex;;  

test_number 14 (
(hash_basis_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
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
            "blank"))))]
);;

let cur_idx = 200;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_hashline_reference "# Elements                             References";;
let comments_l = current_sub_list cur_idx 15 sym_lex_l sym_lex;; 

test_number 15 (
(comments_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# Elements                             References");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
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
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 284 (1985).");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_hashline_symbol
    (Db1pointsdata_lexer_hashline_symbol_t.Db1pointsdata_lexer_hashline_reference
      "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 299 (1985).");
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

let cur_idx = 300;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_ecp;;
let ecp_l = current_sub_list cur_idx 8 sym_lex_l sym_lex;; 

test_number 16 (
(ecp_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
    Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_ecp;
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
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

let cur_idx = 300;;
let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Au";;
let ecp_l = current_sub_list cur_idx 6 sym_lex_l sym_lex;; 

test_number 17 (
( ecp_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list ) =
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

let end_e = List_v.last_element_off_list sym_lex_l;;

test_number 18 (
( end_e : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end_of_file
);;

