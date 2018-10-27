open Make_test_v;;

testing "Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v with
    Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";; 

*)

open Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
let nam_var = "Len";;

let sym_lex_nam_n_kin = localinput_lexer_symbol_duo_list_of_inputbox_name nam_ibo;;

test_number 1 (
( sym_lex_nam_n_kin : Localinput_lexer_symbol_t.localinput_lexer_symbol Duo_t.duo list) =
  [(Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Con_db1"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);

   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Len"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator);
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Seg_bc"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Len_bc"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target);
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Uni_len"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external)]
);;

let sym_lex_dl = sym_lex_nam_n_kin;;
let nam_var_n_sym_lvk = List.map variable_name_n_localinput_lexer_variable_kind_symbol_of_input_lexer_symbol_duo sym_lex_dl;;

test_number 2 (
(nam_var_n_sym_lvk :
  (string,
   Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol)
  Doublet_t.doublet list ) =
  [("Con_db1",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);
   ("Len",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator);
   ("Seg_bc",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   ("Len_bc",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target);
   ("Uni_len",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external)]
);;

test_number 3 (
nam_var_n_sym_lvk = provide nam_ibo
);;
