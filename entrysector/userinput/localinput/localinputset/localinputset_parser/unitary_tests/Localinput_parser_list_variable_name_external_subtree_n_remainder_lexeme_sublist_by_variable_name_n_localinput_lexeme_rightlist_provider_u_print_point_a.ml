open Make_test_v;;

testing "Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_v" "debug";;*)

(* toplevel 
   #use "Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

*)

(* Inputbox : print Poi_a *)
(* Inputbox :      units [ Uni_len Uni_ang ] *)
(* Inputbox :      end -- print *)
(* Inputbox : stop *)

open Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v;;

let nam_mod = "Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v";;

let nam_ibo = "Print_point_a";;
let nam_var = "Poi_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_pri_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_print_constructor
    sym_lex_l;;

let (_, sym_lex_lbr_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_token_l_bracket
    sym_lex_pri_sl;;

let sym_lex_sl = sym_lex_lbr_sl ;;

test_number 1 (
( sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_len"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_ang"))));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol
      Localinput_lexer_keyword_unnamed_symbol_t.Localinput_lexer_keyword_unnamed_stop)]
);;

let pre_lex_top = Localinput_lexer_symbol_v.is_localinput_lexer_token_l_bracket;;

let sym_lex_top = 
  Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
    pre_lex_top
    nam_mod
    sym_lex_sl;;

test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket
);;

(* step _0_ *)

let lex_0_sl = sym_lex_sl;;
let lex_0_cur = List.hd lex_0_sl ;;

test_number 3 (
(lex_0_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket
);;

let lex_rig_0_sl = List.tl lex_0_sl;;

test_number 4 (
(lex_rig_0_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list )=
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_len"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_ang"))));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol
      Localinput_lexer_keyword_unnamed_symbol_t.Localinput_lexer_keyword_unnamed_stop)]
);;

(* step _1_ *)

let lex_1_sl = lex_rig_0_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 5 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
       (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
         (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
           "Uni_len"))))
);;

let nam_1_var = Localinput_lexer_symbol_v.string_off lex_1_cur;;

test_number 6 (
(nam_1_var : string ) = 
"Uni_len"
);;

let sym_loi_1_lee = 
  Localinput_symbol_v.localinput_set_fence_variable_name_entity_external_constructor 
    nam_1_var;;          

test_number 7 (
(sym_loi_1_lee : Localinput_symbol_t.localinput_symbol ) =
Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
	 (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
            (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
		  "Uni_len")))))
);;

let sym_loi_1_f = Tree_v.make_of_leaf sym_loi_1_lee;;
 
test_number 8 (
(sym_loi_1_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
             (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
               "Uni_len"))))))
);; 
	
let lex_rig_1_sl = List.tl lex_1_sl;;

test_number 9 (
(lex_rig_1_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_ang"))));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol
      Localinput_lexer_keyword_unnamed_symbol_t.Localinput_lexer_keyword_unnamed_stop)]
);;

let acc_stl = [sym_loi_1_f];;

(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 10 (
(lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
       (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
         (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
           "Uni_ang"))))
);;

let nam_2_var = Localinput_lexer_symbol_v.string_off lex_2_cur;;

test_number 11 (
(nam_2_var : string ) = 
"Uni_ang"
);;

let sym_loi_2_lee = 
  Localinput_symbol_v.localinput_set_fence_variable_name_entity_external_constructor 
    nam_2_var;;          

test_number 12 (
(sym_loi_2_lee : Localinput_symbol_t.localinput_symbol ) =
Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
	 (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
            (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
		  "Uni_ang")))))
);;

let sym_loi_2_f = Tree_v.make_of_leaf sym_loi_2_lee;;
 
test_number 13 (
(sym_loi_2_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
             (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
               "Uni_ang"))))))
);; 
	
let lex_rig_2_sl = List.tl lex_2_sl;;

test_number 14 (
(lex_rig_2_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list) =
  [Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol
      Localinput_lexer_keyword_unnamed_symbol_t.Localinput_lexer_keyword_unnamed_stop)]
);;

let acc_stl = (sym_loi_2_f :: acc_stl);;
let acc_stl_rev = List.rev acc_stl;;
let acc_stl = acc_stl_rev;;

(* step _3_ token_r_bracket *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

test_number 15 (
(lex_3_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket
);;

let sym_loi_llv = 
	  Localinput_symbol_v.localinput_set_body_list_variable_name_external_constructor 
	    nam_var;;

test_number 16 (
( sym_loi_llv : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
       (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_name_external_symbol
         (Localinput_set_body_list_variable_name_external_symbol_t.Localinput_set_body_list_variable_name_external_constructor
           "Poi_a"))))
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_llv acc_stl;;

test_number 17 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
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

let lex_rig_3_sl = List.tl lex_3_sl;;

test_number 18 (
(lex_rig_3_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol
      Localinput_lexer_keyword_unnamed_symbol_t.Localinput_lexer_keyword_unnamed_stop)]
);;

test_number 19 (
(sym_loi_st, lex_rig_3_sl) = provide (nam_var, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
