open Make_test_v;;

testing "Localinput_lexer_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_v
        Localinput_lexer_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_lexer_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_u_print_perimeter_triangle_w.ml";;

*)

open Localinput_lexer_variable_kind_symbol_by_variable_name_n_inputbox_name_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;

let nam_n_sym_lvk_l =
    Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 1 (
(nam_n_sym_lvk_l : 
  (string,
   Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol)
  Doublet_list_t.doublet_list ) =
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

let nam_var = "Len_bc";;
let sym_lvk = Doublet_list_v.right_of_left_off_doublet_list nam_var nam_n_sym_lvk_l;;

test_number 2 (
( sym_lvk :
    Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol ) =
Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target
);;

test_number 3 (
sym_lvk = provide (nam_var, nam_ibo)
);;
