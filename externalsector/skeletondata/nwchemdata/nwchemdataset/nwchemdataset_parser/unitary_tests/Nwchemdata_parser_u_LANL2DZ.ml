open Make_test_v;;

testing "Nwchemdata_parser_v with
    Nwchemdata_parser_u_LANL2DZ.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Nwchemdata_parser_u_LANL2DZ.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "LANL2DZ";;

open Nwchemdata_parser_v;;

let sym_lex_sta = Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_stack_of_databox_name (nam_dba, nam_dbo);;

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
   (Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name "LANL2DZ")
);;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;


(* <ao_basis_block> ::= <aocomment_block> <empty_line_block> <aoset_block> *)

let nam_blo = Format.sprintf "%s AO" nam_dbo;;
let sym_nwc_t = Nwchemdata_parser_comment_block_v.aocomment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s;;

test_number 5 (
(sym_nwc_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aocomment_block "LANL2DZ")),
   [Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
         (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_databox_name
           "LANL2DZ")));
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_comment_block "LANL2DZ AO")),
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
             "LANL2DZ AO")),
       [Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# H  - Ne: T. H. Dunning Jr. and P. J. Hay, in Methods of Electronic Structure"));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# Theory, Vol. 2, H. F. Schaefer III, ed., PLENUM PRESS (1977)"));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# Na - Hg: P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 270 (1985)."));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 284 (1985)."));
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
           (Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference
             "# P. J. Hay and W. R. Wadt, J. Chem. Phys. 82, 299 (1985)."))])])])
);;

(* <empty_line_block> *)
Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;;

(* <aoset_block> *)

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let sym_nwc_t = Nwchemdata_parser_aoset_block_v.aoset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_dbo sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let sym_nwc_t =
  Nwchemdata_parser_v.nwchemdata_symbol_tree_of_databox_name (nam_dba, nam_dbo);;

(* Invariant *)

Nwchemdata_parser_tools_v.check_invariants_of_databox_name_of_nwchemdata_symbol_tree nam_dbo sym_nwc_t;;

let sym_nwc_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_t;;

test_number 6 (
(sym_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "LANL2DZ"));
   Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_version_symbol
      (Nwchemdata_context_version_symbol_t.Nwchemdata_context_version_constructor
        "v1.2.2"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aobasis_block "LANL2DZ"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_ecpbasis_block "LANL2DZ"))]
);;
