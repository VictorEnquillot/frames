open Make_test_v;;

testing "Nwchemdata_parser_v with
    Nwchemdata_parser_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Nwchemdata_parser_u_any.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pVTZ";;

(* Debug *)

open Nwchemdata_parser_v;;

let sym_lex_sta = Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_stack_of_databox_name nam_dbo;;


(* <basisset_file> ::= <beginning_of_line> <version> <el_block> <ao_basis_block> [ <el_block> <ecp_basis_block> ] end_of_file *)

(* <beginning_of_line> *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let nam_mod = "Nwchemdata_parser_u";;
let nam_fun = "some_function";;
let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 1 (
( sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
         Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line)))
);;

(* <version> *) 
let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 2 (
( sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
   (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version "v1.2.2")
);;

(* <version> *) 
let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 3 (
( sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
         Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))
);;

(* <el_block> *)
Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 4 (
( sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol
   (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name
     "cc_pVTZ")
);;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;


(* <ao_basis_block> ::= <aocomment_block> <empty_line_block> <aoset_block> *)

let nam_blo = Format.sprintf "%s AO" nam_dbo;;
let sym_nwc_t = Nwchemdata_parser_comment_block_v.aocomment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s;;

test_number 5 (
(sym_nwc_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aocomment_block_symbol
           (Nwchemdata_set_body_node_aocomment_block_symbol_t.Nwchemdata_set_body_node_aocomment_block_constructor
             "cc_pVTZ")))),
   [Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_set_symbol
       (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
         (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
           (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_databox_name_symbol
             (Nwchemdata_set_body_variable_databox_name_symbol_t.Nwchemdata_set_body_variable_databox_name_constructor
               "cc_pVTZ")))));
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_set_symbol
       (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
         (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
           (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_block_symbol
             (Nwchemdata_set_body_node_comment_block_symbol_t.Nwchemdata_set_body_node_comment_block_constructor
               "cc_pVTZ AO")))),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
         (Nwchemdata_comment_symbol_t.Nwchemdata_comment_header_symbol
           (Nwchemdata_comment_header_symbol_t.Nwchemdata_comment_header_constructor
             "# Elements                             References")));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
         (Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed_symbol
           (Nwchemdata_comment_dashed_symbol_t.Nwchemdata_comment_dashed_constructor
             "# --------                             ----------")));
      Tree_t.Inner
       (Nwchemdata_symbol_t.Nwchemdata_set_symbol
         (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
           (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
             (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_reference_block_symbol
               (Nwchemdata_set_body_node_comment_reference_block_symbol_t.Nwchemdata_set_body_node_comment_reference_block_constructor
                 "cc_pVTZ AO")))),
       [Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# H     : T.H. Dunning, Jr. J. Chem. Phys. 90, 1007 (1989).")));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# He    : D.E. Woon and T.H. Dunning, Jr. J. Chem. Phys. 100, 2975 (1994).")));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# Li - Ne: T.H. Dunning, Jr. J. Chem. Phys. 90, 1007 (1989).")));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# Na - Mg: D.E. Woon and T.H. Dunning, Jr.  (to be published)")));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# Al - Ar: D.E. Woon and T.H. Dunning, Jr.  J. Chem. Phys. 98, 1358 (1993).")));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# Ca     : J. Koput and K.A. Peterson, J. Phys. Chem. A, 106, 9595 (2002).")));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# Sc - Zn: N.B. Balabanov and K.A. Peterson, J. Chem. Phys, 123, 064107 (2005)")));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol
             (Nwchemdata_comment_reference_symbol_t.Nwchemdata_comment_reference_constructor
               "# Ga - Kr: A.K. Wilson, D.E. Woon, K.A. Peterson, T.H. Dunning, Jr., J. Chem. Phys., 110, 7667 (1999)")))])])])
);;

(* <empty_line_block> *)
Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;;

(* <aoset_block> *)

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let sym_nwc_t = Nwchemdata_parser_aoset_block_v.aoset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_dbo sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let sym_nwc_t = Nwchemdata_parser_v.nwchemdata_symbol_tree_root_databox_of_databox_name nam_dbo;;

(* Invariant *)

Nwchemdata_parser_tools_v.check_invariants_of_databox_name_of_nwchemdata_symbol_tree nam_dbo sym_nwc_t;;
