open Make_test_v;;

testing "Nwchemdata_parser_v with
    Nwchemdata_parser_u_LANL2DZ_aoset_center_contraction_scheme.ml";;

(* Deleting Registers *)



(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Nwchemdata_parser_u_LANL2DZ_aoset_center_contraction_scheme.ml";; 

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
let nam_mod = "Nwchemdata_parser_u_LANL2DZ_aoset_center_contraction_scheme_debug";;

(* Debug *)

open Nwchemdata_parser_aoset_center_contraction_scheme_v;;

let sym_lex_sta = Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_stack_of_nwc_fullnameoffile fno_nwc;;

(* <shell_expansion> ::= <left_parenthesis> <aoset_center_contraction_image> <right_parenthesis> *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_basis
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 2 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
   Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_basis
);;

let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 3 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
   Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis
);;

(* <left_parenthesis> *)

let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_l_parenthesis
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 4 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol
         Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_parenthesis)))
);;


(* <aoset_center_contraction_image> ::= <positive_integer_n_shell_name> {<comma> <positive_integer_n_shell_name>}  *)

(* <positive_integer_n_shell_name> *)

let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 5 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
     (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
       (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
         (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
           "8"))))
);;


let nam_cen = "? center name ?";;
let what = "EXPANSION";;

let sym_nwc_pns_t = Nwchemdata_parser_aoset_center_contraction_scheme_v.positive_integer_n_shell_name_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack 
	    nam_cen
	    what
	    sym_lex_s;;

test_number 6 (
(sym_nwc_pns_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
         "8 s EXPANSION")),
   [Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
       (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "8"));
    Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
         (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "s")))])
);;

let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

(* <comma> *)

test_number 7 (
(sym_lex_pop : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
     (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
       (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
         Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_comma)))
);;

(* EXPANSION *)
(* <aoset_center_contraction_image> ::= <positive_integer_n_shell_name> {<comma> <positive_integer_n_shell_name>}  *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 8 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
     (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
       (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
         (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
           "8"))))
);;

let sym_nwc_aci_t = Nwchemdata_parser_aoset_center_contraction_scheme_v. aoset_center_contraction_image_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack nam_cen what sym_lex_s;;

test_number 9 (
( sym_nwc_aci_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_image
         "? center name ? EXPANSION")),
   [Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
           "8 s EXPANSION")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "8"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
           (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "s")))]);
    Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
         Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_comma));
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
           "3 p EXPANSION")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "3"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
           (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "p")))])])
);;

let nam_cen = "? center name ?";;
let what = "CONTRACTION";;

(* CONTRACTION *)
(* <aoset_center_contraction_image> ::= <positive_integer_n_shell_name> {<comma> <positive_integer_n_shell_name>}  *)

let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 10 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
 Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
   (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol
     (Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol
       (Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol
         (Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_integer
           "3"))))
);;

let sym_nwc_aci_t = Nwchemdata_parser_aoset_center_contraction_scheme_v. aoset_center_contraction_image_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack nam_cen what sym_lex_s;;

test_number 11 (
(sym_nwc_aci_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_image
         "? center name ? CONTRACTION")),
   [Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
           "3 s CONTRACTION")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "3"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
           (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "s")))]);
    Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
         Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_comma));
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
           "2 p CONTRACTION")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
         (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "2"));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
           (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "p")))])])
);;


(* <aoset_contraction_definition> ::= <hash_basisset> <space> <shell_expansion> <space> <right_arrow> <space> <shell_contraction> <eol> *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 12 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
   Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis
);;

let sym_nwc_aci_t = Nwchemdata_parser_aoset_center_contraction_scheme_v.aoset_center_contraction_scheme_tree_of_center_name_of_nwchemdata_lexer_symbol_stack nam_cen sym_lex_s;;

test_number 13 (
(sym_nwc_aci_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
 Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_scheme
         "? center name ?")),
   [Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_hash_basisset
           "? center name ?")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_hash_basis));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_set));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_colon))]);
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_shell_expansion "!!!")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_left_parenthesis));
      Tree_t.Inner
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
           (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_image
             "? center name ? EXPANSION")),
       [Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "8 s EXPANSION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "8"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "s")))]);
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
             Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_comma));
        Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "3 p EXPANSION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "3"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "p")))])]);
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_right_parenthesis))]);
    Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
         Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_right_arrow));
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_shell_contraction "???")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_left_bracket));
      Tree_t.Inner
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
           (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_image
             "? center name ? CONTRACTION")),
       [Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "3 s CONTRACTION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "3"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "s")))]);
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
             Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_comma));
        Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "2 p CONTRACTION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "2"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "p")))])]);
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_right_bracket))])])
);;

(* <aoset_center_contraction_scheme> ::= <hash_basisset> <space> <shell_expansion> <space> <right_arrow> <space> <shell_contraction> <eol> *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_basis
    sym_lex_s;;

let sym_lex_s = Stack_v.delete_included_of_predicate_of_stack 
    Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis
    sym_lex_s;;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

test_number 14 (
(sym_lex_top : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol ) =
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
   Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis
);;

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let sym_nwc_ccs_t = Nwchemdata_parser_aoset_center_contraction_scheme_v.aoset_center_contraction_scheme_tree_of_center_name_of_nwchemdata_lexer_symbol_stack nam_cen sym_lex_s;;

test_number 15 (
(sym_nwc_ccs_t : Nwchemdata_symbol_t.nwchemdata_symbol Tree_t.tree ) =
Tree_t.Inner
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
       (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_scheme
         "? center name ?")),
   [Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_hash_basisset
           "? center name ?")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_hash_basis));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_set));
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_colon))]);
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_shell_expansion "!!!")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_left_parenthesis));
      Tree_t.Inner
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
           (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_image
             "? center name ? EXPANSION")),
       [Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "8 s EXPANSION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "8"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "s")))]);
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
             Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_comma));
        Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "3 p EXPANSION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "3"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "p")))])]);
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_right_parenthesis))]);
    Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
         Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_right_arrow));
    Tree_t.Inner
     (Nwchemdata_symbol_t.Nwchemdata_body_symbol
       (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
         (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_shell_contraction "???")),
     [Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_left_bracket));
      Tree_t.Inner
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
           (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_center_contraction_image
             "? center name ? CONTRACTION")),
       [Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "3 s CONTRACTION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "3"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "s")))]);
        Tree_t.Leaf
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
             Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_comma));
        Tree_t.Inner
         (Nwchemdata_symbol_t.Nwchemdata_body_symbol
           (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
             (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_positive_integer_n_shell_name
               "2 p CONTRACTION")),
         [Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_closure_symbol
             (Nwchemdata_closure_symbol_t.Nwchemdata_closure_integer_positive "2"));
          Tree_t.Leaf
           (Nwchemdata_symbol_t.Nwchemdata_body_symbol
             (Nwchemdata_body_symbol_t.Nwchemdata_body_variable_symbol
               (Nwchemdata_body_variable_symbol_t.Nwchemdata_body_variable_shell_name "p")))])]);
      Tree_t.Leaf
       (Nwchemdata_symbol_t.Nwchemdata_body_symbol
         (Nwchemdata_body_symbol_t.Nwchemdata_body_keyword_symbol
           Nwchemdata_body_keyword_symbol_t.Nwchemdata_body_keyword_right_bracket))])])
);;

