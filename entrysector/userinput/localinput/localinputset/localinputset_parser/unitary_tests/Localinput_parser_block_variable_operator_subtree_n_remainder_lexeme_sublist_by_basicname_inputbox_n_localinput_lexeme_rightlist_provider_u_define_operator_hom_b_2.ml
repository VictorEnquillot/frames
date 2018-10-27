open Make_test_v;;

testing "Localinput_parser_block_variable_operator_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_variable_operator_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_define_operator_hom_b_2.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_operator_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_block_variable_operator_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_define_operator_hom_b_2.ml";;

*)

(* Inputbox : define Hom_b_2                                                                      *)
(* -----------|-------------- handle_variable_operator ---------------------------| *)
(* Inputbox : |      operator                                                                     *)
(* -----------|-------------- block_variable_operator ----------------------------||               *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(* Inputbox :          operation "homothety" *)
(* Inputbox :          ondomain "figure" *)
(* -----------|-------------handle_cofactor ----------------------------||               *)
(* Inputbox : 	       cofactor  *)
(* Inputbox :            cofactor_entity Cen_b  *)
(* Inputbox :            cofactor_basic 2.0  *)
(* Inputbox : ||-------- end -- cofactor ---------------------------------------------------------*)
(* Inputbox : |-------- end -- operator ----------------------------------------------------------*)
(* Inputbox :        end -- define *)

open Localinput_parser_block_variable_operator_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Define_operator_hom_b_2";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_def_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor
    sym_lex_l;;

let (_, sym_lex_typ_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor
    sym_lex_def_sl;;

let sym_lex_sl = sym_lex_typ_sl ;;

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Hom_b_2")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "operator"))))]
);;

let nam_lex_top = "localinput_lexer_keyword_defvarnamed_type_constructor";;
let nam_var = 
    Localinput_parser_tools_v.string_off_of_module_name_of_lexeme_list_of_top_lexeme_name
      nam_mod
      sym_lex_sl 
      nam_lex_top ;;

test_number 2 (
(nam_var : string ) = 
"Hom_b_2"
);;

(* step _1_ *)

let lex_1_sl = sym_lex_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 3 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
     (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
       (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
         "Hom_b_2")))
);;

let (sym_loi_box_st, lex_rig_1_sl) =
	  Localinput_parser_box_type_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	    (nam_ibo, lex_1_sl);;

test_number 4 (
(sym_loi_box_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Hom_b_2")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
               (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                 "Hom_b_2"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
           (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
             (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
               "Hom_b_2")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "operator")))));
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
                 "body")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "creation")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "transformation")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "constructor")))))])])
);;

let acc_stl = [sym_loi_box_st];;

(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 5 (
( lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
     (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_stringed_operation_symbol
       (Localinput_lexer_keyword_stringed_operation_symbol_t.Localinput_lexer_keyword_stringed_operation_constructor
         "Hom_b_2")))
);;

let (sym_loi_cel_f, lex_rig_2_sl) = 
	  Localinput_parser_cell_doublequoted_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_2_sl;;

let acc_stl = sym_loi_lbu_st :: acc_stl;;

(* step _3_ *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

let sof_end = Localinput_lexer_symbol_v.string_off lex_3_cur;;   

let sym_loi_lwe = Localinput_symbol_v.localinput_set_fence_keyword_word_end_constructor sof_end;;

test_number 6 (
(sym_loi_lwe : Localinput_symbol_t.localinput_symbol) =
Localinput_symbol_t.Localinput_set_symbol
  (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
	(Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
	   (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
              (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
		 "print")))))
);;

let sym_loi_f = Tree_v.make_of_leaf sym_loi_lwe;; 
	
let sym_loi_lbp = Localinput_symbol_v.localinput_set_body_block_variable_operator_constructor nam_var;;
let acc_stl_rev = List.rev (sym_loi_f :: acc_stl) ;;
let acc_stl = acc_stl_rev;;
let sym_loi_st = Tree_v.make_of_node sym_loi_lbp acc_stl_rev;;

test_number 7 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_operator_symbol
           (Localinput_set_body_block_variable_operator_symbol_t.Localinput_set_body_block_variable_operator_constructor
             "Hom_b_2")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                 "Hom_b_2"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
           (Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol
             (Localinput_set_body_box_units_symbol_t.Localinput_set_body_box_units_constructor
               "Hom_b_2")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_units_symbol
                 (Localinput_set_fence_keyword_word_units_symbol_t.Localinput_set_fence_keyword_word_units_constructor
                   "Hom_b_2"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
             (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_name_external_symbol
               (Localinput_set_body_list_variable_name_external_symbol_t.Localinput_set_body_list_variable_name_external_constructor
                 "Hom_b_2")))),
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
                     "Uni_ang"))))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "print"))))))])
);;

let lex_rem_sl = List.tl lex_3_sl;;

let (x, y) =  provide (nam_ibo, sym_lex_sl);;

test_number 8 (
 (sym_loi_st, lex_rem_sl) = provide (nam_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
