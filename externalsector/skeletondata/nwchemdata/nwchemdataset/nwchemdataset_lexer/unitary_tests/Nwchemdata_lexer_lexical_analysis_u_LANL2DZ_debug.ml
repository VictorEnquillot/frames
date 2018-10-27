open Make_test_v;;

testing "Nwchemdata_lexer_v with
    Nwchemdata_lexer_lexical_analysis_u_LANL2DZ_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Nwchemdata_lexer_lexical_analysis_u_LANL2DZ_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "gaussian_nwchem";;
let nam_bas = "LANL2DZ";;
 
let fno_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
(fno_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db2";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_g9x";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_molpro";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_pdb"]
);;

let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_dgn s) fno_dba_l;;

test_number 2 (
(nam_dir : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem"
);;

let nof_dgn = nam_dgn ^ "_" ^ nam_bas ^ ".dgn";;
let fno_dgn = nam_dir ^ "/files/" ^ nof_dgn;;

test_number 3 (
(fno_dgn : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_LANL2DZ.dgn"
);;

(* Debug *)

let current_sub_list cur_idx len sym_lex_l sym_lex = 
  let sym_lex_sl = List_v.sublist_of_int_of_length_of_list cur_idx 500 sym_lex_l in
  let sym_idx = List_v.index_of_element_of_list sym_lex sym_lex_sl in
  List_v.sublist_of_int_of_length_of_list sym_idx len sym_lex_sl
;;

open Nwchemdata_lexer_lexical_analysis_v;;

let sbu = File_v.scanbuf_of_fullnameoffile fno_dgn;;
Scanf.bscanf sbu "%0c" (fun c ->c);;

let sym_lex_l = List.rev (dgn_lexer_symbol_revlist_of_database_fullnameoffile fno_dgn);;

let cur_idx = 0;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_variable_version "v1.2.2";;
let version_l = current_sub_list cur_idx 2 sym_lex_l sym_lex;; 

test_number 4 (
(version_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =  
[Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
   (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version "v1.2.2");
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
         (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
            Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 3;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_variable_basis_set_name "LANL2DZ";;
let basis_name_l = current_sub_list cur_idx 2 sym_lex_l sym_lex;; 

test_number 5 (
(basis_name_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_set_name "LANL2DZ");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 5;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_hashline_reference "# Elements                             References";;
let comments_l = current_sub_list cur_idx 23 sym_lex_l sym_lex;; 

test_number 6 (
(comments_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
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
      "# H  - Ne: T. H. Dunning Jr. and P. J. Hay, in Methods of Electronic Structure");
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
      "# Theory, Vol. 2, H. F. Schaefer III, ed., PLENUM PRESS (1977)");
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
      "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 284 (1985).");
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
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 20;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_variable_basis_name_atomic_orbital "ao basis";;
let basis_print_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;  

test_number 7 (
(basis_print_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_atomic_orbital
      "ao basis");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_blank)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_print;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 24;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_keyword_hash_basis;;
let hash_basis_l = current_sub_list cur_idx 5 sym_lex_l sym_lex;;  

test_number 8 (
(hash_basis_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_set;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_colon)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))))]
);;

let cur_idx = 28;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_character_mark_l_parenthesis;;
let expansion_l = current_sub_list cur_idx 7 sym_lex_l sym_lex;;  

test_number 9 (
(expansion_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol
          Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_parenthesis)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "8"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name "s");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_comma)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "3"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name "p");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol
          Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_parenthesis)))]
);;

let cur_idx = 35;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_symbol_r_arrow;;
let arrow_l = current_sub_list cur_idx 1 sym_lex_l sym_lex;;  

test_number 10 (
(arrow_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
 [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_symbol_symbol
    Nwchemdata_lexer_symbol_symbol_t.Nwchemdata_lexer_symbol_r_arrow]
);;

let cur_idx = 35;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_character_mark_l_bracket;;
let contraction_l = current_sub_list cur_idx 8 sym_lex_l sym_lex;;  

test_number 11 (
(contraction_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
 [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol
          Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_bracket)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "3"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name "s");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_comma)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
            "2"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name "p");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol
          Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_bracket)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 55;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Ne";;
let shell_l = current_sub_list cur_idx 4 sym_lex_l sym_lex;;  

test_number 12 (
(shell_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
        (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
          "Ne")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "4 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
        (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
          "S")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 62;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_basic_word_numeric_positive_float "12100.0000000";;
let values_l = current_sub_list cur_idx 34 sym_lex_l sym_lex;;  

test_number 13 (
(values_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "12100.0000000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "14 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.0012000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "4 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "432.8000000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "14 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.0413050"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "5 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "43.7700000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "14 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.3624330"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "6 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "5.1270000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "14 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.1300350"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
        (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
          "Ne")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "4 blank");
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
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "5 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "56.4500000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "14 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.0208750"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "5 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "15.1900000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "13 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol
          (Nwchemdata_lexer_basic_word_numeric_negative_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_float
            "-0.1408100"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line
      "8 blank");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "6 blank")]
);;

let cur_idx = 100;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_keyword_hash_basis;;
let hash_basis_l = current_sub_list cur_idx 5 sym_lex_l sym_lex;;  

test_number 14 (
(hash_basis_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_set;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_colon)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          (Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space
            "blank"))))]
);;

let cur_idx = 200;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_hashline_reference "# Elements                             References";;
let comments_l = current_sub_list cur_idx 15 sym_lex_l sym_lex;; 

test_number 15 (
(comments_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
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
      "# Au    : X and Y J. Chem. Phys. 88, 270 (1995).");
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
      "3 end_of_line");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
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
          "Au")))]
);;

let s_l = List.filter ( Nwchemdata_lexer_symbol_v.is_dgn_lexer_keyword_ecp) sym_lex_l;;

let cur_idx = List_v.index_of_element_of_list sym_lex  sym_lex_l;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_keyword_ecp;;
let ecp_l = current_sub_list cur_idx 8 sym_lex_l sym_lex;; 

test_number 16 (
(ecp_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
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
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let cur_idx = 300;;
let sym_lex = Nwchemdata_lexer_symbol_v.dgn_lexer_basic_word_capitalized_strict_alphabetic "Au";;
let ecp_l = current_sub_list cur_idx 6 sym_lex_l sym_lex;; 

test_number 17 (
( ecp_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
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
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space "4 blank")]
);;

let end_e = List_v.last_element_off_list sym_lex_l;;

test_number 18 (
( end_e : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
   Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file
);;

