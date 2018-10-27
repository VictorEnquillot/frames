open Make_test_v;;

testing "Localinput_parser_list_variable_type_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_list_variable_type_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_v" "debug";;*)

(* toplevel 
   #use "Localinput_parser_list_variable_type_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

*)

(* inputbox : define poi_a                                                     *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* inputbox :        external                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* inputbox :          type [ "figure" "set" "fence" "point" "constructor" ]|| *)
(* inputbox :          external_name "t_a"                                  || *)
(* inputbox :          external_context con_db1                             || *)
(* inputbox :          end -- external -------------------------------------|| *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* inputbox :        end -- define                                             *)

open Localinput_parser_list_variable_type_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_point_a";;
let nam_var = "Poi_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_def_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor
    sym_lex_l;;

let (_, sym_lex_lbr_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_token_l_bracket
    sym_lex_def_sl;;

let sym_lex_sl = sym_lex_lbr_sl ;;

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;
test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "figure"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "set"))))]
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
let lex_rig_0_ssl = List_v.sublist_of_int_of_length_of_list 0 5 lex_rig_0_sl;;

test_number 4 (
( lex_rig_0_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "figure"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "set"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "fence"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "point"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "constructor"))))]
);;

(* step _1_ *)

let lex_1_sl = lex_rig_0_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 5 ( 
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
  (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
	(Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
           (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
              "figure"))))
);;

let nam_1_var = Localinput_lexer_symbol_v.string_off lex_1_cur;;

test_number 6 (
(nam_1_var : string ) = 
"figure"
);;

let lex_rig_1_sl = List.tl lex_1_sl;;
let lex_rig_1_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_1_sl;;

test_number 7 (
(lex_rig_1_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "set"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "fence"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "point"))))]
);;

let sym_loi_1_lwl = 
  Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_constructor 
    nam_1_var;;          

let sym_loi_1_f = Tree_v.make_of_leaf sym_loi_1_lwl;;
 
test_number 8 (
(sym_loi_1_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
         (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
           (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
             "figure")))))
);; 

let acc_stl = [sym_loi_1_f];;
	
(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 9 (
(lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
       (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
         (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
           "set"))))
);;

let nam_2_var = Localinput_lexer_symbol_v.string_off lex_2_cur;;

test_number 10 (
(nam_2_var : string ) = 
"set"
);;

let sym_loi_2_lwl = 
  Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_constructor 
    nam_2_var;;          

let sym_loi_2_f = Tree_v.make_of_leaf sym_loi_2_lwl;;
 
test_number 11 (
(sym_loi_2_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
         (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
           (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
             "set")))))
);; 
	
let lex_rig_2_sl = List.tl lex_2_sl;;
let acc_stl = (sym_loi_2_f :: acc_stl);;

(* step _3_ *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

test_number 12 (
(lex_3_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
       (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
         (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
           "fence"))))
);;

let nam_3_var = Localinput_lexer_symbol_v.string_off lex_3_cur;;

test_number 13 (
(nam_3_var : string ) = 
"fence"
);;

let sym_loi_3_lwl = 
  Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_constructor 
    nam_3_var;;          

let sym_loi_3_f = Tree_v.make_of_leaf sym_loi_3_lwl;;
 
test_number 14 (
(sym_loi_3_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
         (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
           (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
             "fence")))))
);; 
	
let lex_rig_3_sl = List.tl lex_3_sl;;
let acc_stl = (sym_loi_3_f :: acc_stl);;

(* step _4_ *)

let lex_4_sl = lex_rig_3_sl;;
let lex_4_cur = List.hd lex_4_sl ;;

test_number 15 (
(lex_4_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
       (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
         (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
           "point"))))
);;

let nam_4_var = Localinput_lexer_symbol_v.string_off lex_4_cur;;

test_number 16 (
(nam_4_var : string ) = 
"point"
);;

let sym_loi_4_lwl = 
  Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_constructor 
    nam_4_var;;          

let sym_loi_4_f = Tree_v.make_of_leaf sym_loi_4_lwl;;
 
test_number 17 (
(sym_loi_4_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
         (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
           (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
             "point")))))
);; 
	
let lex_rig_4_sl = List.tl lex_4_sl;;
let acc_stl = (sym_loi_4_f :: acc_stl);;

(* step _5_ *)

let lex_5_sl = lex_rig_4_sl;;
let lex_5_cur = List.hd lex_5_sl ;;

test_number 18 (
(lex_5_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
       (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
         (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
           "constructor"))))
);;

let nam_5_var = Localinput_lexer_symbol_v.string_off lex_5_cur;;

test_number 19 (
(nam_5_var : string ) = 
"constructor"
);;

let sym_loi_5_lwl = 
  Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_constructor 
    nam_5_var;;          

let sym_loi_5_f = Tree_v.make_of_leaf sym_loi_5_lwl;;
 
test_number 20 (
(sym_loi_5_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
         (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
           (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
             "constructor")))))
);; 
	
let lex_rig_5_sl = List.tl lex_5_sl;;
let acc_stl = (sym_loi_5_f :: acc_stl);;

(* step _6_ token_r_bracket *)

let lex_6_sl = lex_rig_5_sl;;
let lex_6_cur = List.hd lex_6_sl ;;

test_number 21 (
(lex_6_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket
);;

let sym_loi_lis = 
	  Localinput_symbol_v.localinput_set_body_list_variable_type_constructor 
	    nam_var;;

test_number 22 (
( sym_loi_lis : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
       (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
         (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
           "Poi_a"))))
);;

let acc_stl_rev = List.rev acc_stl;;
let lex_rig_6_sl = List.tl lex_6_sl;;
	
let sym_loi_st = Tree_v.make_of_node sym_loi_lis acc_stl_rev;;

test_number 23 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
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
               "constructor")))))])
);;

let lex_rig_6_sl = List.tl lex_6_sl;;
let lex_rig_6_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_6_sl;;

test_number 24 (
(lex_rig_6_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_name_symbol
        (Localinput_lexer_keyword_varnamed_external_name_symbol_t.Localinput_lexer_keyword_varnamed_external_name_constructor
          "T_A")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol
          (Localinput_lexer_basic_word_doublequoted_capitalized_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_constructor
            "T_A"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_context_symbol
        (Localinput_lexer_keyword_varnamed_external_context_symbol_t.Localinput_lexer_keyword_varnamed_external_context_constructor
          "Con_db1")))]
);;

test_number 25 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
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
             "constructor")))))])
);;

test_number 26 (
(sym_loi_st, lex_rig_6_sl) = provide (nam_var, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
