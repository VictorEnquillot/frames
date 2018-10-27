open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
    Localinput_parser_tree_by_basicname_inputbox_provider_u_define_operator_tra_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Localinput_parser_handle_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(* 	    cofactor  *)
(* 	      cofactor_entity Seg_bc *)
(* 	      end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* stop *)

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_define_operator_tra_bc.ml";; 

*)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_ibo = "Define_operator_tra_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let sym_lex_lco_l =
  Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v.provide
    bna_ibo;;

let sym_loi_lcd = List_v.only_element_of_predicate_off_list 
      Localinput_lexer_symbol_v.is_localinput_lexer_command_define_symbol_off_localinput_lexer_symbol
      sym_lex_lco_l;;

test_number 1 (
(sym_loi_lcd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
  (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
     (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
	"Tra_bc"))
);;

(* handle_command lex list *)

let sym_lco = Localinput_lexer_symbol_v.localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_loi_lcd;;

test_number 2 (
(sym_lco :
  Localinput_lexer_command_symbol_t.localinput_lexer_command_symbol ) =
  Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
   (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
     "Tra_bc")
);;

let sym_lex_hco_sl = 
  Localinput_lexer_handle_command_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide
    (bna_ibo, sym_lco);;

(* block_command lex list *)

let sym_lex_bco_sl = List.tl sym_lex_hco_sl;;
let sym_lex_bco = List.hd sym_lex_bco_sl;; 

test_number 3 ( 
(sym_lex_bco : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
       (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
         (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
           "Tra_bc"))))
);;

(* handle_variable_kind lex list *)

let sym_lex_hvk_sl = List.tl sym_lex_bco_sl;;
let sym_lex_hvk = List.hd sym_lex_hvk_sl;; 

test_number 4 ( 
(sym_lex_hvk : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
   (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
     (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
       "Tra_bc"))
);;

(* block_variable_kind lex list *)

(* _keyword_defvarnamed_type *)

let sym_lex_bvk_sl = List.tl sym_lex_hvk_sl;;
let sym_lex_bvk = List.hd sym_lex_bvk_sl;; 

test_number 5 ( 
(sym_lex_bvk : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
     (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
       (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
         "Tra_bc")))
);;

(* handle_cofactor lex list *)

let (sym_lex_hco, sym_lex_bco_sl) = List_v.head_n_remainder_list_of_predicate_of_list  
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor
    sym_lex_bvk_sl;;

test_number 6 (
(sym_lex_hco : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
     (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol
       (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_constructor
         "Tra_bc")))
);;

(* block_cofactor lex list *)

let sym_lex_bco = List.hd sym_lex_bco_sl;;

test_number 7 (
(sym_lex_bco : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
     (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol
       (Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor
         "Seg_bc")))
);;

(* block_cofactor subtree *)

let (sym_loi_blo_st, sym_lex_rem_sl) = 
    Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
      (bna_ibo, sym_lex_bco_sl);;

test_number 8 (
(sym_loi_blo_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
           (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
             "Seg_bc")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
             (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
               "Seg_bc")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "cofactor"))))))])
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_hco;;

let sym_loi_han = 
    Localinput_symbol_v.localinput_set_body_handle_cofactor_constructor 
      nam_var ;;

test_number 9 (
(sym_loi_han : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
       (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
         (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
           "Tra_bc"))))
);;

let sym_loi_st = provide bna_ibo;;

test_number 10 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
       (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
         "Define_operator_tra_bc")),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
           (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
             (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
               (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
                 (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                   "Tra_bc")))))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
               (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
                 (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
                   "Tra_bc"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
             (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
               (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
                 "Tra_bc")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
               (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_operator_symbol
                 (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
                   "Tra_bc")))));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_body_symbol
             (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
               (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
                 (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_operator_symbol
                   (Localinput_set_body_handle_variable_operator_symbol_t.Localinput_set_body_handle_variable_operator_constructor
                     "Tra_bc"))))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
                 (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
                   (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
                     "Tra_bc")))));
          Tree_t.Inner
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_body_symbol
               (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
                 (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
                   (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
                     "Tra_bc")))),
           [Tree_t.Inner
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_body_symbol
                 (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
                   (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
                     (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
                       "Tra_bc")))),
             [Tree_t.Leaf
               (Localinput_symbol_t.Localinput_set_symbol
                 (Localinput_set_symbol_t.Localinput_set_fence_symbol
                   (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                     (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                       (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_cofactor_symbol
                         (Localinput_set_fence_keyword_word_cofactor_symbol_t.Localinput_set_fence_keyword_word_cofactor_constructor
                           "Tra_bc"))))));
              Tree_t.Inner
               (Localinput_symbol_t.Localinput_set_symbol
                 (Localinput_set_symbol_t.Localinput_set_body_symbol
                   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
                     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
                       (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
                         "Seg_bc")))),
               [Tree_t.Leaf
                 (Localinput_symbol_t.Localinput_set_symbol
                   (Localinput_set_symbol_t.Localinput_set_fence_symbol
                     (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                       (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
                         (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
                           "Seg_bc")))));
                Tree_t.Leaf
                 (Localinput_symbol_t.Localinput_set_symbol
                   (Localinput_set_symbol_t.Localinput_set_fence_symbol
                     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                       (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                         (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                           (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                             "cofactor"))))))])]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                   (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                     (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                       (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                         "operator"))))))])]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                   (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                     "define"))))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
             (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol
               (Localinput_set_fence_keyword_command_stop_symbol_t.Localinput_set_fence_keyword_command_stop_constructor
                 "inputbox"))))))])
);;

let sym_loi_inn_l = Tree_v.inner_node_list_off_tree sym_loi_st;;

test_number 11 (
( sym_loi_inn_l : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
        "Define_operator_tra_bc"));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
            (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
              (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                "Tra_bc"))))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
          (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
          (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_operator_symbol
            (Localinput_set_body_handle_variable_operator_symbol_t.Localinput_set_body_handle_variable_operator_constructor
              "Tra_bc")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
          (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
          (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
          (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
            "Seg_bc"))))]
);;

let sym_loi_lea_l = Tree_v.leaf_node_list_off_tree sym_loi_st;;

test_number 12 (
( sym_loi_lea_l : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
          (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
            (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
              "Tra_bc")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_operator_symbol
          (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
        (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
          (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_cofactor_symbol
            (Localinput_set_fence_keyword_word_cofactor_symbol_t.Localinput_set_fence_keyword_word_cofactor_constructor
              "Tra_bc")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
          (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
            "Seg_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
            (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
              "cofactor")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
            (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
              "operator")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
            (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
              "define")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
          (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol
            (Localinput_set_fence_keyword_command_stop_symbol_t.Localinput_set_fence_keyword_command_stop_constructor
              "inputbox")))))]
);;

let sym_loi_l = Tree_v.node_list_off_tree sym_loi_st;;

let sym_loi_lbt_l = List.filter
    Localinput_symbol_v.is_localinput_set_body_box_type_constructor
    sym_loi_l
;;

let cou_loi_lbt = List.length sym_loi_lbt_l;;
test_number 13 (
List.length sym_loi_lbt_l = 1
);;
