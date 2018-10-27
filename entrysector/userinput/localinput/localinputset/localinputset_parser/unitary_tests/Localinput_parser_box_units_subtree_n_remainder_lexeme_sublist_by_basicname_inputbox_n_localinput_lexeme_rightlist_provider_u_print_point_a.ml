open Make_test_v;;

testing "Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_v" "debug";;*)

(* toplevel 
   #use "Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

*)

(* print Poi_a *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

open Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_mod = "Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";;
let nam_ibo = "Print_point_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_pri_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_print_constructor
    sym_lex_l;;

let (_, sym_lex_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_varnamed_units_constructor
    sym_lex_pri_sl;;  

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_units_symbol
        (Localinput_lexer_keyword_varnamed_units_symbol_t.Localinput_lexer_keyword_varnamed_units_constructor
          "Poi_a")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_len"))))]
);;

let nam_lex_top = "localinput_lexer_keyword_varnamed_units_constructor";;
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

let lex_1_sl = sym_lex_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 3 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
     (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_units_symbol
       (Localinput_lexer_keyword_varnamed_units_symbol_t.Localinput_lexer_keyword_varnamed_units_constructor
         "Poi_a")))
);;

let sym_loi_uni = 
	Localinput_symbol_v.localinput_set_fence_keyword_word_units_constructor 
	  nam_var;;

test_number 4 (
( sym_loi_uni : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
       (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
         (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_units_symbol
           (Localinput_set_fence_keyword_word_units_symbol_t.Localinput_set_fence_keyword_word_units_constructor
             "Poi_a")))))
);;

let sym_loi_1_f = Tree_v.make_of_leaf sym_loi_uni;;

test_number 5 (
(sym_loi_1_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_units_symbol
             (Localinput_set_fence_keyword_word_units_symbol_t.Localinput_set_fence_keyword_word_units_constructor
               "Poi_a"))))))
);;

let lex_rig_1_sl = List.tl lex_1_sl;; 
let acc_stl = [sym_loi_1_f];;

(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 6 (
(lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
  Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket
);;

let (sym_loi_lis_st, lex_rem_sl) =
  Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v.provide
    (nam_var, lex_2_sl);;

test_number 7 (
( sym_loi_lis_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
         (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_name_external_symbol
           (Localinput_set_body_list_variable_name_external_symbol_t.Localinput_set_body_list_variable_name_external_constructor
             "Poi_a")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                 "Uni_len"))))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                 "Uni_ang"))))))])
);;

let sym_loi_box = Localinput_symbol_v.localinput_set_body_box_units_constructor nam_var;;

test_number 8 (
(sym_loi_box : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
       (Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol
         (Localinput_set_body_box_units_symbol_t.Localinput_set_body_box_units_constructor
           "Poi_a"))))
);;

let acc_stl_rev = List.rev (sym_loi_lis_st :: acc_stl) ;;
let sym_loi_st = Tree_v.make_of_node sym_loi_box acc_stl_rev;;
let acc_stl = acc_stl_rev;;

test_number 9 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
Tree_t.Inner
 (Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
       (Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol
         (Localinput_set_body_box_units_symbol_t.Localinput_set_body_box_units_constructor
           "Poi_a")))),
 [Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_units_symbol
             (Localinput_set_fence_keyword_word_units_symbol_t.Localinput_set_fence_keyword_word_units_constructor
               "Poi_a"))))));
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
         (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_name_external_symbol
           (Localinput_set_body_list_variable_name_external_symbol_t.Localinput_set_body_list_variable_name_external_constructor
             "Poi_a")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                 "Uni_len"))))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                 "Uni_ang"))))))])])
);;

test_number 10 (
 (sym_loi_st, lex_rem_sl) = provide (nam_ibo, sym_lex_sl)
);; 

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
