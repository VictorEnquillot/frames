open Make_test_v;;

testing "Localinput_lexer_as_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_v
        Localinput_lexer_as_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_lexer_as_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_u_print_length_segment_bc.ml";;

*)

open Localinput_lexer_as_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_v;;

let nam_ibo = "Print_length_segment_bc";;

let sym_lex_lvk_l =
    Localinput_lexer_as_variable_kind_symbol_list_by_inputbox_name_provider_v.provide
      nam_ibo;;

test_number 1 (
( sym_lex_lvk_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_db1"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Seg_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol
      (Localinput_lexer_variable_kind_target_symbol_t.Localinput_lexer_variable_kind_target_constructor
        "Len_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Uni_len"))]
);;

let nam_var = "Len_bc";;
let sym_lex_lvk = List_v.only_element_of_predicate_off_list 
    (fun s -> Localinput_lexer_symbol_v.string_off s = nam_var)
    sym_lex_lvk_l;;

test_number 2 (
(sym_lex_lvk : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
   (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol
     (Localinput_lexer_variable_kind_target_symbol_t.Localinput_lexer_variable_kind_target_constructor
       "Len_bc"))
);;

test_number 3 (
sym_lex_lvk = provide (nam_var, nam_ibo)
);;
