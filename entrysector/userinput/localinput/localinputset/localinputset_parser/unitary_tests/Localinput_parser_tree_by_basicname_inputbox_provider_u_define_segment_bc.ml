open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
    Localinput_parser_tree_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";; 

*)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_parser_tree_by_basicname_inputbox_provider_v";;
let nam_ibo = "Print_length_segment_bc";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

(* Inputbox : define Con_db1  *)
(* Inputbox :        context *)
(* Inputbox : 	       database "db1points" *)
(* Inputbox :          domain "figure" *)
(* Inputbox : 	       end -- context *)
(* Inputbox :        end -- define *)

let lex_0_sl = List.nth sym_lex_hcs_ll 0;;
let sym_loi_0_st = localinput_symbol_subtree_list_of_inputbox_name_n_localinput_lexeme_sublist (nam_ibo, lex_0_sl);;

test_number 1 (
(sym_loi_0_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Con_db1")))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
             (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
               (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
                 "Con_db1"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
           (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
             (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
               "Con_db1")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
             (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
               (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
                 "Con_db1")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
             (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
               (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
                 (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
                   "Con_db1"))))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
               (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_context_symbol
                 (Localinput_set_fence_variable_kind_context_symbol_t.Localinput_set_fence_variable_kind_context_constructor
                   "Con_db1")))));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_body_symbol
             (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
               (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
                 (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
                   "db1points")))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
                   (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                     "db1points")))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
                   (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
                     "figure")))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                 (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                   (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                     (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                       "context"))))))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                 (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                   "define"))))))])])
);;

(* Inputbox : define Len *)
(* Inputbox :        operator  *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "measure" "constructor"] *)
(* Inputbox : 	       operation "length" *)
(* Inputbox : 	       ondomain "figure"   *)
(* Inputbox :          end -- operator *)
(* Inputbox :        end -- define *)

let lex_1_sl = List.nth sym_lex_hcs_ll 1;;
let sym_loi_1_st = localinput_symbol_subtree_list_of_inputbox_name_n_localinput_lexeme_sublist (nam_ibo, lex_1_sl);;

test_number 2 (
(sym_loi_1_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =

(* Inputbox : define Seg_bc *)
(* Inputbox :        external  *)
(* Inputbox :          type [ "figure" "set" "body" "segment" "constructor" ] *)
(* Inputbox :          external_name "BC" *)
(* Inputbox :          external_context Con_db1 *)
(* Inputbox :          end -- external *)
(* Inputbox :        end -- define *)

(* Inputbox : define Len_bc *)
(* Inputbox :        target  *)
(* Inputbox :          type [ "property" "operand" "target" "measured" "constructor" ] *)
(* Inputbox : 	 target_operator Len *)
(* Inputbox :          target_operand Seg_bc *)
(* Inputbox : 	 end -- target *)
(* Inputbox :        end -- define *)

(* Inputbox : define Uni_len *)
(* Inputbox :        external  *)
(* Inputbox :          type [ "units" "length" "bohr" ] *)
(* Inputbox :          external_context Con_nwc *)
(* Inputbox :          end -- external *)
(* Inputbox :        end -- define *)

(* Inputbox : print Len_bc *)
(* Inputbox :       units [ Uni_len ] *)
(* Inputbox :       end -- print *)

(* Inputbox : stop *)

