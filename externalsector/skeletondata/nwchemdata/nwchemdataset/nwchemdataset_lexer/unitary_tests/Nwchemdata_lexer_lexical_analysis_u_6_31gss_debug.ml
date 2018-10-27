open Make_test_v;;

testing "Nwchemdata_lexer_v with
    Nwchemdata_lexer_lexical_analysis_u_6_31GSS_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Nwchemdata_lexer_lexical_analysis_u_6_31GSS_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "gaussian_nwchem";;
let nam_bas = "6_31GSS";;
 
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
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_6_31GSS.dgn"
);;

(* Debug *)

open Nwchemdata_lexer_lexical_analysis_v;;

let sbu = File_v.scanbuf_of_fullnameoffile fno_dgn;;
Scanf.bscanf sbu "%0c" (fun c ->c);;

let sym_lex_rl = dgn_lexer_symbol_revlist_of_database_fullnameoffile fno_dgn;;

let sym_lex_nos_l = List.rev (List.filter (fun s -> s <> Nwchemdata_lexer_symbol_v.dgn_lexer_character_mark_space) sym_lex_rl);;

let version_l = List_v.sublist_of_int_of_length_of_list 0 4 sym_lex_nos_l;;

test_number 4 (
(version_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version "v1.2.2");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let comments_l = List_v.sublist_of_int_of_length_of_list 4 27 sym_lex_nos_l;;

test_number 5 (
(comments_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_set_name "6-311G**");
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
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_dashed
      "# --------                             ----------");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "# H, Li - Ne: R. Krishnan, J.S. Binkley, R. Seeger and J.A. Pople,");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "#             J. Chem. Phys. 72, 650 (1980)");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "# Na - Ar:    A.D. McLean and G.S. Chandler J. Chem. Phys. 72, 5639, (1980).");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "# K  - Ca:    J-P. Blaudeau, M. P. McGrath, L.A. Curtiss and L. Radom,");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "#             J. Chem. Phys. 107, 5016 (1997).");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "# Ga - Kr:    L. A. Curtiss, M. P. McGrath, J-P. Blandeau, N. E. Davis, ");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "#             R. C. Binning, Jr. L. Radom, J. Chem. Phys. 103, 6104 (1995).");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "# I      :    M.N. Glukhovstev, A. pross, M.P. McGrath, L. Radom, J. Chem. Phys.");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "#             103, 1878 (1995)");
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
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let comments_l = List_v.sublist_of_int_of_length_of_list 31 10 sym_lex_nos_l;;

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
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_dashed
      "# --------                             ----------");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "# H - Ar:  R. Krishnan, J.S. Binkley, R. Seeger, J.A. Pople, J. Chem. Phys. 72,");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol
    (Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference
      "#          650 (1980)");
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

let empty_l = List_v.sublist_of_int_of_length_of_list 41 2 sym_lex_nos_l;;

test_number 7 (
( empty_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let basis_print_l = List_v.sublist_of_int_of_length_of_list 43 4 sym_lex_nos_l;;

test_number 8 (
(basis_print_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_basis;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_atomic_orbital
      "ao basis");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_print;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let contraction_l = List_v.sublist_of_int_of_length_of_list 47 3 sym_lex_nos_l;;

test_number 9 (
(contraction_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
 [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_set_expansion
      "5s,1p");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_set_contraction
      "3s,1p");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let shell_l = List_v.sublist_of_int_of_length_of_list 50 3 sym_lex_nos_l;;

test_number 10 (
(shell_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol
        (Nwchemdata_lexer_basic_word_capitalized_symbol_t.Nwchemdata_lexer_basic_word_capitalized_alphabetic
          "H")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol
        (Nwchemdata_lexer_basic_word_capitalized_symbol_t.Nwchemdata_lexer_basic_word_capitalized_alphabetic
          "S")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let gaussian_l = List_v.sublist_of_int_of_length_of_list 53 9 sym_lex_nos_l;;

test_number 11 (
( gaussian_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "33.8650000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.0254938"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "5.0947900"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.1903730"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "1.1587900"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.8521610"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

(* Li    SP *)
(*       4.8689000              0.0933293              0.0327661   *)
(*       0.8569240              0.9430450              0.1597920   *)
(*       0.2432270             -0.00279827             0.8856670   *)

let contraction_l = List_v.sublist_of_int_of_length_of_list 113 3 sym_lex_nos_l;;

test_number 12 (
(contraction_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_set_expansion
      "11s,5p,1d");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
    (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_set_contraction
      "4s,3p,1d");
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let shell_l = List_v.sublist_of_int_of_length_of_list 137 3 sym_lex_nos_l;;

test_number 13 (
(shell_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol
        (Nwchemdata_lexer_basic_word_capitalized_symbol_t.Nwchemdata_lexer_basic_word_capitalized_alphabetic
          "Li")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_anycase_symbol
        (Nwchemdata_lexer_basic_word_anycase_symbol_t.Nwchemdata_lexer_basic_word_anycase_anyword
          "SP")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let gaussian_l = List_v.sublist_of_int_of_length_of_list 140 12 sym_lex_nos_l;;

test_number 14 (
( gaussian_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list ) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "4.8689000"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.0933293"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.0327661"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.8569240"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.9430450"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.1597920"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.2432270"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol
          (Nwchemdata_lexer_basic_word_numeric_negative_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_float
            "0.00279827"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
        (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
          (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_float
            "0.8856670"))));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let end_l = List_v.sublist_of_int_of_length_of_list 575 2 sym_lex_nos_l;;

test_number 15 (
(end_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);; 

let options_l = List_v.sublist_of_int_of_length_of_list 595 2 sym_lex_nos_l;;

test_number 16 (
(options_l : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol list) =
  [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_anycase_symbol
        (Nwchemdata_lexer_basic_word_anycase_symbol_t.Nwchemdata_lexer_basic_word_anycase_anyword
          "Options:Help:Feedback")));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

let end_e = List_v.last_element_off_list sym_lex_nos_l;;

test_number 17 (
( end_e : Nwchemdata_lexer_symbol_t.dgn_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
   Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file
);;

