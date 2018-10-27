open Make_test_v;;

testing "Nwchemdata_parser_v with
    Nwchemdata_parser_u_LANL2DZ_aoset_numerical_values_block.ml";;

(* Deleting Registers *)



(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Nwchemdata_parser_u_LANL2DZ_aoset_numerical_values_block.ml";; 

*)

(* Database file *)

let nam_nwc = "nwchem";;
let nam_dbo = "LANL2DZ";;
let fno_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;
let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_nwc s) fno_dba_l;;
let nof_nwc = nam_nwc ^ "_" ^ nam_dbo ^ ".nwc";;
let fno_nwc = nam_dir ^ "/files/" ^ nof_nwc;;

test_number 1 (
(fno_nwc : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchemdata_LANL2DZ.nwc"
);;

Parameters_general_register_v.store "basisset-file" fno_nwc;;

let nam_fun = "debug";;
let nam_mod = "Nwchemdata_parser_u_LANL2DZ_aoset_numerical_values_block_debug";;

(* Debug *)

open Nwchemdata_parser_aoset_numerical_values_block_v;;

let sym_lex_sta = Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_stack_of_nwc_fullnameoffile fno_nwc;;

(* <center_and_shell_name> ::= <center_name> { <space> } <shell_name_extended_sp> <eol> *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 2 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
     (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol
       (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
         "Ne")))
);;

(* <aoset_shell_contraction_values> ::= <space> positive_float <space> float <space> [ float ] [ <space> ] <eol> *)

let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line 
    sym_lex_s;;

let sym_lex_eol_s = Stack.copy sym_lex_s;;

let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 3 (
(sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
         Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))
);;

(* aoset_shell_contraction_values_tree_of_nwchemdata_lexer_symbol_stack *)
let sym_nwc_t = Nwchemdata_parser_aoset_numerical_values_block_v.aoset_shell_contraction_values_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s;;

test_number 4 (
( sym_nwc_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
         "")),
   [Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
       (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "12100.0000000"));
    Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
       (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "0.0012000"))])
);;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

(* aoset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack *)
(* reset Stack *)

let sym_lex_s = Stack.copy sym_lex_eol_s;;

let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 5 (
(sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
         Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))
);;


let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let nam_csi = "Center Shell 1";;
let sym_nwc_t =Nwchemdata_parser_aoset_numerical_values_block_v.aoset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack nam_csi sym_lex_s;;

test_number 6 (
(sym_nwc_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values_block
         "Center Shell 1")),
   [Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
           "")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "12100.0000000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "0.0012000"))]);
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
           "")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "432.8000000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "0.0413050"))]);
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
           "")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "43.7700000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "0.3624330"))]);
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
           "")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "5.1270000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "0.1300350"))])])
);;

(* Next #BASIS *)
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis 
    sym_lex_s;;

(* Au   S *)
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic
    sym_lex_s;;

(* eol *)
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line 
    sym_lex_s;;

let sym_lex_eol_s = Stack.copy sym_lex_s;;

let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 7 (
(sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
         Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))
);;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let nam_csi = "Center Shell 2";;
let sym_nwc_t = Nwchemdata_parser_aoset_numerical_values_block_v.aoset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack nam_csi sym_lex_s;;

test_number 8 (
( sym_nwc_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values_block
         "Center Shell 2")),
   [Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
           "")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "2.8090000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_negative "-1.2021556"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "1.1608481"))]);
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
           "")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "1.5950000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "1.6741578"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_negative "-1.8642846"))]);
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_shell_contraction_values
           "")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "0.2826000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_non_negative "0.0000000"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "1.3064399"))])])
);;

(*
test_number 9 (
(sym_nwc_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =

let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

(* <space> *)
    Nwchemdata_parser_tools_v.skip_any_space_until_something_of_nwchemdata_lexer_symbol_stack sym_lex_s;;

(* positive_float *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;
  let sym_nwc_pfl_t = 
    Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_positive_non_negative_float nam_mod nam_fun sym_lex_pop;;

test_number 10 (
( sym_nwc_pfl_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
     (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "12100.0000000"))
);;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

(* <spaced_float> *)

let sym_nwc_sfl_t = Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_for_spaced_float_of_nwchemdata_lexer_symbol_stack sym_lex_s;;

test_number 11 (
(sym_nwc_sfl_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
     (Nwchemdata_closure_symbol_t.Nwchemdata_closure_float_positive "0.0012000"))
);;

let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;
Nwchemdata_parser_tools_v.skip_any_space_until_something_of_nwchemdata_lexer_symbol_stack sym_lex_s;;
let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

  
Nwchemdata_parser_tools_v.skip_any_space_until_something_of_nwchemdata_lexer_symbol_stack sym_lex_s;;
let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;
Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_float nam_mod nam_fun sym_lex_top;;


let sym_nwc_sfl_t = 
    Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_for_pop_spaced_float_of_nwchemdata_lexer_symbol_pop nam_mod nam_fun sym_lex_top;;


let sym_nwc_scv_t = Nwchemdata_parser_aoset_numerical_values_block_v.aoset_shell_contraction_values_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

*)
