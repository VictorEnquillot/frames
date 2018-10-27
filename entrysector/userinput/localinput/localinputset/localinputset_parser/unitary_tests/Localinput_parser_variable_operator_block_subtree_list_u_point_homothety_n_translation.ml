open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_parser_block_variable_operator_subtree_list_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;



(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_parser_block_variable_operator_subtree_list_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nof_loi = "Point_homothety_n_translation.loc";;
let fno_loi = Localinput_fullnameoffile_by_localinput_nameoffile_provider_v.provide nof_loi;;


let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name fno_loi;;

let pre_lex_def = Localinput_lexer_symbol_v.is_localinput_lexer_command_define;;
let pre_lex_pri = Localinput_lexer_symbol_v.is_localinput_lexer_command_print;;

let sym_lex_def_ll = List_v.burst_left_included_of_predicate_of_list pre_lex_def sym_lex_l;;

let wor_cap_n_sym_lvk_dl = Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide fno_loi;;

test_number 1 (
(wor_cap_n_sym_lvk_dl :
  (string,
   Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol)
  Doublet_t.doublet list ) =
  [("Con_db1",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);
   ("Con_hom",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);
   ("Hom_b_2",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator);
   ("Tra_bc",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator);
   ("Seg_bc",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   ("Cen_b",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   ("Poi_a",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   ("Poi_h",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target);
   ("Poi_t",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target);
   ("Uni_len",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   ("Uni_ang",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external)]
);;

let wor_cap = "Hom_b_2";;

let pre_lis wor_cap lis = (List.length lis > 1 ) && (Localinput_lexer_symbol_v.string_off (List.nth lis 1 ) = wor_cap);;
let sym_lex_ope_l = List.find (pre_lis wor_cap) sym_lex_def_ll;;

test_number 2 (
(sym_lex_ope_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Hom_b_2")));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_type;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "operator")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "transformation")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "homothety")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_cofactor;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_cofactor_entity;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Cen_b")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_cofactor_basic;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
      (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor
        "2.0"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_vop_l = (List_v.sublist_of_predicate_excluded_of_predicate_included_of_list 
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_operator
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_end
    sym_lex_ope_l ) @ [Localinput_lexer_symbol_v.localinput_lexer_keyword_end];;

test_number 3 ( 
(sym_lex_vop_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_type;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "operator")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "transformation")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "homothety")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_cofactor;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_cofactor_entity;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Cen_b")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_cofactor_basic;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
      (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor
        "2.0"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_vop_s = Localinput_parser_tools_v.localinput_symbol_stack_of_localinput_symbol_list sym_lex_vop_l;;

let top = Stack.top sym_lex_vop_s;;

test_number 4 (
( top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_type
);;

open Localinput_parser_block_variable_operator_v;;

(* define Hom_b_2              *)
(*        operator             *)

(*          type [ "operator" "transformation" "homothety"] *)
(*          cofactor                  *)
(*             cofactor_entity Cen_b  *)
(*             cofactor_basic 2.0     *)
(*             end -- cofactor        *)
(*          end -- operator           *)

(*        end -- define        *)

(* block_variable_operator_subtree_list_of_localinput_lexer_symbol_stack *)

let sym_loi_vop_stl = block_variable_operator_subtree_list_of_localinput_lexer_symbol_stack
	  	      sym_lex_vop_s;;

test_number 5 (
(sym_loi_vop_stl : Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Localinput_symbol_t.Localinputbody_symbol
      (Localinputbody_symbol_t.Localinputbody_box_symbol
        Localinputbody_box_symbol_t.Localinputbody_box_type),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
          Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_type));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
          (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
            (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
              "operator"))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
          (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
            (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
              "transformation"))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
          (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
            (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
              "homothety"))))]);
   Tree_t.Inner
    (Localinput_symbol_t.Localinputbody_symbol
      (Localinputbody_symbol_t.Localinputbody_expression_symbol
        Localinputbody_expression_symbol_t.Localinputbody_expression_cofactor),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
          (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
            (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
              "Cen_b"))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
          (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol
            (Localinput_set_fence_cell_cofactor_basic_symbol_t.Localinput_set_fence_cell_cofactor_basic_constructor
              "2.0"))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
          Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_end))]);
   Tree_t.Leaf
    (Localinput_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_end))]
);;

test_raises_some_exc Stack.top sym_lex_vop_s;;



