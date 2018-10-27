open Make_test_v;;

testing "Nwchemdata_parser_v with
    Nwchemdata_parser_u_6_31GSS.ml";;

(* Deleting Registers *)



(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Nwchemdata_parser_u_6_31GSS.ml";; 

*)
Parameters_general_register_v.store "basisset-file" fno_nwc;;

Debug_by_module_name_register_v.store "Nwchemdata_parser_v" "nodebug";;
Debug_by_module_name_register_v.store "Nwchemdata_parser_aoset_numerical_values_block_v"  "debug";;
Debug_by_module_name_register_v.store "Nwchemdata_parser_tools_v" "nodebug";;

Debug_by_module_name_register_v.dump ();;

(* Database file *)

let nam_nwc = "nwchem";;
let nam_dbo = "6_31GSS";;
 
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

let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_nwc s) fno_dba_l;;

test_number 2 (
(nam_dir : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem"
);;

let nof_nwc = nam_nwc ^ "_" ^ nam_dbo ^ ".nwc";;
let fno_nwc = nam_dir ^ "/files/" ^ nof_nwc;;

test_number 3 (
(fno_nwc : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchemdata_6_31GSS.nwc"
);;


let nam_fun = "debug";;
let nam_mod = "Nwchemdata_parser_u_6_31GSS_debug";;

(* Debug *)

open Nwchemdata_parser_v;;


let sym_lex_sta = Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_stack_of_nwc_fullnameoffile fno_nwc;;

(* <basisset_file> ::= <beginning_of_line> <version> <el_block> <ao_basis_block> [ <el_block> <ecp_basis_block> ] end_of_file *)

(* <beginning_of_line> *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 4 (
( sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
         Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line)))
);;

(* <version> *) 
let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 5 (
( sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
   (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version "v1.2.2")
);;

(* <el_block> *)
Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 6 (
( sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
   (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name "6-311G**")
);;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;


(* <ao_basis_block> ::= <aocomment_block> <empty_line_block> <aoset_block> *)

let nam_blo = Format.sprintf "%s AO" nam_dbo;;
let sym_nwc_t = Nwchemdata_parser_comment_block_v.aocomment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s;;

test_number 7 (
(sym_nwc_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aocomment_block "6-311G**")),
   [Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
         (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_databox_name
           "6-311G**")));
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_comment_block "6_31GSS AO")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
         (Nwchemdata_comment_symbol_t.Nwchemdata_comment_header
           "# Elements                             References"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
         (Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed
           "# --------                             ----------"));
      Tree_t.Inner
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
           (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_comment_reference_block
             "6_31GSS AO")),
       [Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# H, Li - Ne: R. Krishnan, J.S. Binkley, R. Seeger and J.A. Pople,"));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "#             J. Chem. Phys. 72, 650 (1980)"));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# Na - Ar:    A.D. McLean and G.S. Chandler J. Chem. Phys. 72, 5639, (1980)."));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# K  - Ca:    J-P. Blaudeau, M. P. McGrath, L.A. Curtiss and L. Radom,"));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "#             J. Chem. Phys. 107, 5016 (1997)."));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# Ga - Kr:    L. A. Curtiss, M. P. McGrath, J-P. Blandeau, N. E. Davis, "));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "#             R. C. Binning, Jr. L. Radom, J. Chem. Phys. 103, 6104 (1995)."));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# I      :    M.N. Glukhovstev, A. pross, M.P. McGrath, L. Radom, J. Chem. Phys."));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "#             103, 1878 (1995)"))])])])
);;

(* <empty_line_block> *)
Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;;

(* <aoset_block> *)

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let sym_nwc_t = Nwchemdata_parser_aoset_block_v.aoset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_dbo sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let sym_nwc_fir_t =
  Nwchemdata_parser_v.nwc_basisset_file_tree_of_nwc_fullnameoffile 
    fno_nwc ;;

(* Invariant *)

Nwchemdata_parser_tools_v.check_invariants_of_nwchemdata_symbol_tree sym_nwc_fir_t;;
