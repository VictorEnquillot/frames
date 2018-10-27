open Make_test_v;;

testing "Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

*)

(* Inputbox : define Poi_a *)
(* Inputbox :        external  *)
(* Inputbox :          type [ "figure" "set" "fence" "point" "constructor" ] *)
(* Inputbox :          external_name "T_A" *)
(* Inputbox :          external_context Con_db1 *)
(* Inputbox :          end -- external *)
(* Inputbox :        end -- define *)

open Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_point_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_def_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor
    sym_lex_l;;

let (_, sym_lex_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor
    sym_lex_def_sl;;  

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;
test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Poi_a"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Poi_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Poi_a")))]
);;

let nam_lex_top = "localinput_lexer_basic_word_bare_capitalized_constructor";;
let nam_var = 
    Localinput_parser_tools_v.string_off_of_module_name_of_lexeme_list_of_top_lexeme_name
      nam_mod
      sym_lex_sl 
      nam_lex_top;;

test_number 2 (
(nam_var : string ) = 
"Poi_a"
);;

(* step _1_ *)

let acc_stl = [];;
let lex_1_sl = sym_lex_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 3 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
       (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
         (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
           "Poi_a"))))
);;

let (sym_loi_f, lex_rig_1_sl) = 
  Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide 
    (nam_ibo, lex_1_sl);;

test_number 4 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
             (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
               "Poi_a"))))))
);;

let acc_stl = sym_loi_f :: acc_stl;;

(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 5 (
( lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
   (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
     (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
       "Poi_a"))
);;

let lex_2_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_2_sl;;

test_number 6 (
(lex_2_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Poi_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Poi_a")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket]
);;

let (sym_loi_han_st, lex_rig_2_sl) =
  Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide  
    (nam_ibo, lex_2_sl);;

test_number 7 (
( sym_loi_han_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
Tree_t.Inner
 (Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
       (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
         (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_external_symbol
           (Localinput_set_body_handle_variable_external_symbol_t.Localinput_set_body_handle_variable_external_constructor
             "Poi_a"))))),
 [Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
         (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
           (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
             (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
               "Poi_a"))))));
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
           (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
             "Poi_a")))),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
           (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
             (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
               "Poi_a")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                 (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                   "Poi_a"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
             (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
               (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                 "Poi_a")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "figure")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "set")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "fence")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "point")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "constructor")))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol
             (Localinput_set_fence_cell_external_name_symbol_t.Localinput_set_fence_cell_external_name_constructor
               "T_A")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol
             (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
               "Con_db1")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "external"))))))])])
);;

let lex_rig_2_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_2_sl;;

test_number 8 (
(lex_rig_2_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Uni_len"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_len"))))]
);;

let acc_stl = sym_loi_han_st :: acc_stl;;

(* step _3_ *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

test_number 9 (
(lex_3_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
     (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
       (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
         "define")))
);;

let (sym_loi_end_f, lex_rig_3_sl) = 
	    Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	      lex_3_sl;;

test_number 10 (
(sym_loi_end_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
Tree_t.Leaf
 (Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
       (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
         (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
           (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
             "define"))))))
);;
	
	
let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl);;

let sym_loi_blo = 
  Localinput_symbol_v.localinput_set_body_block_define_constructor 
    nam_var ;;

test_number 11 (
(sym_loi_blo : Localinput_symbol_t.localinput_symbol ) =
Localinput_symbol_t.Localinput_set_symbol
  (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
	(Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
              "Poi_a"))))
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev;;

test_number 12 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
             "Poi_a")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                 "Poi_a"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
           (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
             (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_external_symbol
               (Localinput_set_body_handle_variable_external_symbol_t.Localinput_set_body_handle_variable_external_constructor
                 "Poi_a"))))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
             (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
               (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
                 (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
                   "Poi_a"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
             (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
               (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
                 "Poi_a")))),
       [Tree_t.Inner
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_body_symbol
             (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
               (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
                 (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
                   "Poi_a")))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                 (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                   (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                     (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                       "Poi_a"))))));
          Tree_t.Inner
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_body_symbol
               (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
                 (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
                   (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                     "Poi_a")))),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                   (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                     (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                       "figure")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                   (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                     (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                       "set")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                   (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                     (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                       "fence")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                   (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                     (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                       "point")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                   (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                     (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                       "constructor")))))])]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol
                 (Localinput_set_fence_cell_external_name_symbol_t.Localinput_set_fence_cell_external_name_constructor
                   "T_A")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol
                 (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
                   "Con_db1")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                   (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                     "external"))))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "define"))))))])
);;

test_number 13 (
 (sym_loi_st, lex_rig_3_sl) = provide (nam_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
