open Make_test_v;;

testing "Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v
        Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

*)

open Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;

let sym_lex_lcd_l = 
    Localinput_lexer_handle_command_define_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo
;;

test_number 1 (
List.length sym_lex_lcd_l = 5
);;

let sym_lex_def_2l = List.map 
      (List_v.sublist_of_int_of_int_of_list 1 2) 
      sym_lex_lcd_l;;

test_number 2 (
(sym_lex_def_2l :
  Localinput_lexer_symbol_t.localinput_lexer_symbol list list ) =
 [[Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Con_db1")));
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "context")))];
   [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Len")));
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "operator")))];
   [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Seg_bc")));
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "external")))];
   [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Len_bc")));
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "target")))];
   [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Uni_len")));
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "external")))]]
);;

let sym_lex_lwc_n_lvk_l = List.map Duo_v.duo_of_list sym_lex_def_2l;; 

test_number 3 (
(sym_lex_lwc_n_lvk_l :
  Localinput_lexer_symbol_t.localinput_lexer_symbol Duo_t.duo list ) =
  Localinput_lexer_symbol_t.localinput_lexer_symbol Duo_t.duo list =
  [(Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Con_db1"))),
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "context"))));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Len"))),
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "operator"))));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Seg_bc"))),
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "external"))));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Len_bc"))),
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "target"))));
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Uni_len"))),
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "external"))))]
);;

test_number 4 (
sym_lex_lwc_n_lvk_l = provide nam_ibo
);;
