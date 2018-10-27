open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
        Localinput_parser_tree_by_basicname_inputbox_provider_u_define_operator_len.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_tree_by_basicname_inputbox_provider_v" "debug";;
*)

Trace_what_by_module_name_register_v.store "Localinput_parser_tools_v" "debug";;

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_define_operator_len.ml";;

*)

(* Inputbox : define Len                                                       *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        operator                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "measure" "constructor"] *)
(* Inputbox : 	       operation "length"                                   || *)
(* Inputbox : 	       ondomain "figure"                                    || *)
(* Inputbox : -------- end -- operator -------------------------------------|| *)
(* Inputbox :        end -- define                                             *)

(* Inputbox : stop                                                             *)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_ibo = "Define_operator_len";;
let nam_var = "Len";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let sym_loi_stl_rev = List.map 
    (fun sl ->
      (Localinput_parser_handle_command_subtree_list_by_basicname_inputbox_n_localinput_lexeme_sublist_provider_v.provide (nam_ibo, sl)
      )
    )  
    sym_lex_hcs_ll;;

let sym_loi_blo = Localinput_symbol_v.localinput_set_body_block_input_constructor nam_ibo;;
let sym_loi_stl = List.rev sym_loi_stl_rev;;
  
let sym_loi_t =  Tree_v.make_of_node sym_loi_blo sym_loi_stl;;

test_number 1 (
(sym_loi_t : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_input_symbol
           (Localinput_set_body_block_input_symbol_t.Localinput_set_body_block_input_constructor
             "Define_operator_len")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_stop_symbol
               (Localinput_set_fence_keyword_word_stop_symbol_t.Localinput_set_fence_keyword_word_stop_constructor
                 "Define_operator_len"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
           (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
             (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
               (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
                 (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                   "Len")))))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
               (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
                 (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
                   "Len"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
             (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
               (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
                 "Len")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
               (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_operator_symbol
                 (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
                   "Len")))));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_body_symbol
             (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
               (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
                 (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_operator_symbol
                   (Localinput_set_body_handle_variable_operator_symbol_t.Localinput_set_body_handle_variable_operator_constructor
                     "Len"))))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
                 (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
                   (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
                     "Len")))));
          Tree_t.Inner
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_body_symbol
               (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
                 (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
                   (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
                     "Len")))),
           [Tree_t.Inner
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_body_symbol
                 (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
                   (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
                     (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
                       "Len")))),
             [Tree_t.Leaf
               (Localinput_symbol_t.Localinput_set_symbol
                 (Localinput_set_symbol_t.Localinput_set_fence_symbol
                   (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                     (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                       (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                         (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                           "Len"))))));
              Tree_t.Inner
               (Localinput_symbol_t.Localinput_set_symbol
                 (Localinput_set_symbol_t.Localinput_set_body_symbol
                   (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
                     (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
                       (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                         "Len")))),
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
                           "measure")))));
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
                   (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
                     (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
                       "length")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                   (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
                     (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
                       "figure")))));
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
                     "define"))))))])])])
);;

test_number 2 (
 sym_loi_t = provide nam_ibo
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
