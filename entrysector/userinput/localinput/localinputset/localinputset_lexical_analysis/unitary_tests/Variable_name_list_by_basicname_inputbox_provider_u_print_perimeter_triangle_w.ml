open Make_test_v;;

testing "Variable_name_list_by_basicname_inputbox_provider_v
        Variable_name_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Variable_name_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

*)

open Variable_name_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;

let sym_lex_lwc_n_lvk_l = 
    Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

test_number 1 (
(sym_lex_lwc_n_lvk_l :
  Localinput_lexer_symbol_t.localinput_lexer_symbol Duo_t.duo list ) =
  [(Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
         (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
           (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
             "Con_db1")))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
       (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
         "Con_db1")));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
         (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
           (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
             "Len")))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
       (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
         "Len")));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
         (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
           (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
             "Seg_bc")))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
       (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
         "Seg_bc")));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
         (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
           (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
             "Len_bc")))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol
       (Localinput_lexer_variable_kind_target_symbol_t.Localinput_lexer_variable_kind_target_constructor
         "Len_bc")));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
         (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
           (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
             "Uni_len")))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
       (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
         "Uni_len")))]
);;

let sym_lex_lwc_l = Duo_list_v.left_list_off_duo_list sym_lex_lwc_n_lvk_l;;

test_number 2 (
( sym_lex_lwc_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Con_db1")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Len")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Seg_bc")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Len_bc")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Uni_len")))]
);;

let nam_var_l = List.map Localinput_lexer_symbol_v.string_off sym_lex_lwc_l ;;

test_number 3 (
( nam_var_l : string list ) =
  ["Con_db1"; "Len"; "Seg_bc"; "Len_bc"; "Uni_len"]
);;

test_number 4 (
nam_var_l = provide nam_ibo
);;
