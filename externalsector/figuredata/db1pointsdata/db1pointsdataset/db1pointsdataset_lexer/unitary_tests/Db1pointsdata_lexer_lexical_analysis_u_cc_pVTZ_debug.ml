open Make_test_v;;

testing "Db1pointsdata_lexer_v with
    Db1pointsdata_lexer_lexical_analysis_u_cc_pVTZ_debug.ml";;

(* Deleting Registers *)


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1pointsdata_lexer_lexical_analysis_u_cc_pVTZ_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "gaussian_db1points";;
let nam_bas = "cc_pVTZ";;
 
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
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_db1points_cc_pVTZ.dgn"
);;

(* Debug *)

let current_sub_list cur_idx len sym_lex_l sym_lex = 
  let sym_lex_sl = List_v.sublist_of_int_of_length_of_list cur_idx 500 sym_lex_l in
  let sym_idx = List_v.index_of_element_of_list sym_lex sym_lex_sl in
  List_v.sublist_of_int_of_length_of_list sym_idx len sym_lex_sl
;;

open Db1pointsdata_lexer_lexical_analysis_v;;

let sbu = File_v.scanbuf_of_fullnameoffile fno_dgn;;
Scanf.bscanf sbu "%0c" (fun c ->c);;

let sym_lex_l = List.rev (dgn_lexer_symbol_revlist_of_database_fullnameoffile fno_dgn);;

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

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_variable_basis_set_name "cc-pVTZ";;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
let basis_name_l = current_sub_list cur_idx 2 sym_lex_l sym_lex;; 

test_number 5 (
(basis_name_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_basis_set_name "cc-pVTZ");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_hashline_reference "# Elements                             References";;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
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
      "# H     : T.H. Dunning, Jr. J. Chem. Phys. 90, 1007 (1989).");
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
      "# He    : D.E. Woon and T.H. Dunning, Jr. J. Chem. Phys. 100, 2975 (1994).");
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
      "# Li - Ne: T.H. Dunning, Jr. J. Chem. Phys. 90, 1007 (1989).");
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
      "# Na - Mg: D.E. Woon and T.H. Dunning, Jr.  (to be published)");
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
      "# Al - Ar: D.E. Woon and T.H. Dunning, Jr.  J. Chem. Phys. 98, 1358 (1993).");
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
      "# Ca     : J. Koput and K.A. Peterson, J. Phys. Chem. A, 106, 9595 (2002).");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_character_symbol
      (Db1pointsdata_lexer_basic_character_symbol_t.Db1pointsdata_lexer_basic_character_mark_symbol
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_end_of_line)))]
);;

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_variable_basis_name_atomic_orbital "ao basis";;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
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

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_keyword_hash_basis;;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
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

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_character_mark_l_parenthesis;;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
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
            "5"))));
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
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)))]
);;

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_symbol_r_arrow;;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
let arrow_l = current_sub_list cur_idx 1 sym_lex_l sym_lex;;  

test_number 10 (
(arrow_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
 [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_symbol_symbol
    Db1pointsdata_lexer_symbol_symbol_t.Db1pointsdata_lexer_symbol_r_arrow]
);;

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_character_mark_l_bracket;;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
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
        (Db1pointsdata_lexer_basic_character_mark_symbol_t.Db1pointsdata_lexer_basic_character_mark_singled_symbol
          Db1pointsdata_lexer_basic_character_mark_singled_symbol_t.Db1pointsdata_lexer_character_mark_comma)));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_integer
            "1"))))]
);;

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Ne";;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
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

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_numeric_positive_float "19500.0000000";;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
let values_l = current_sub_list cur_idx 34 sym_lex_l sym_lex;;  

test_number 13 (
(values_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "19500.0000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0005070"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-0.0001170"))));
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
            "2923.0000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0039230"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-0.0009120"))));
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
            "664.5000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0202000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-0.0047170"))));
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
            "187.5000000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.0790100"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-0.0190860"))));
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
            "60.6200000"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "14 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_symbol
          (Db1pointsdata_lexer_basic_word_numeric_positive_symbol_t.Db1pointsdata_lexer_basic_word_numeric_positive_float
            "0.2304390"))));
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_variable_symbol
    (Db1pointsdata_lexer_variable_symbol_t.Db1pointsdata_lexer_variable_many_space "13 blank");
   Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_numeric_symbol
        (Db1pointsdata_lexer_basic_word_numeric_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_symbol
          (Db1pointsdata_lexer_basic_word_numeric_negative_symbol_t.Db1pointsdata_lexer_basic_word_numeric_negative_float
            "-0.0596550"))));
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

let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_hashline_reference "# Elements                             References";;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
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
      "# H     : T.H. Dunning, Jr. J. Chem. Phys. 90, 1007 (1989).");
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
      "# He    : D.E. Woon and T.H. Dunning, Jr. J. Chem. Phys. 100, 2975 (1994).");
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
      "# Li - Ne: T.H. Dunning, Jr. J. Chem. Phys. 90, 1007 (1989).");
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


let sym_lex = Db1pointsdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Be";;
let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
let center_n_shell_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;; 

test_number 16 (
(center_n_shell_l : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol list) =
 [Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
    (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
      (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_symbol
        (Db1pointsdata_lexer_basic_word_capitalized_strict_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_strict_alphabetic
          "Be")));
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












let end_e = List_v.last_element_off_list sym_lex_l;;

test_number 17 (
( end_e : Db1pointsdata_lexer_symbol_t.dgn_lexer_symbol ) =
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
   Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_end_of_file
);;

