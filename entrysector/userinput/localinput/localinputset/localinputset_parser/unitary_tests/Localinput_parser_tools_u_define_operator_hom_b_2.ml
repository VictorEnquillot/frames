open Make_test_v;;

testing "Localinput_parser_tools_v with
    Localinput_parser_tools_u_define_operator_hom_b_2.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;


(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_parser_tools_v" "cpu debug";; *)

(* toplevel 
   #use "Localinput_parser_tools_u_define_operator_hom_b_2.ml";; 

*)

(* Localinput File *)

let nof_ibo = "Define_operator_hom_b_2.loc";;
let fno_ibo = Inputbox_fullnameoffile_by_basicname_inputboxoffile_provider_v.provide nof_ibo;;

test_number 1 (
(fno_ibo : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Define_operator_hom_b_2.loc"
);;

let nam_ibo = Context_name_by_context_nameoffile_provider_v.provide nof_ibo;;
let nam_ibo = "Define_operator_hom_b_2";; (* Improve *)
let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name nam_ibo;;
let sym_def = Localinput_lexer_symbol_t.Localinput_lexer_command_symbol Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;;

let sym_kcb = Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_cofactor_basic;;
let sub_lex_ll = List_v.burst_left_included_of_predicate_of_list (fun e -> e = sym_kcb) sym_lex_l;;
let len_lex_ll = List.length sub_lex_ll;;
let sub_lex_l2 = List.nth sub_lex_ll 1;;

open Localinput_parser_tools_v;;

(* Stack *)

let sym_lex_s = localinput_symbol_stack_of_localinput_symbol_list sub_lex_l2;;

let lex_s = sym_lex_s;;
let sym_lex_cur = Stack.pop lex_s;;
let sym_lex_nex = Stack.pop lex_s;;

test_number 2 (
(sym_lex_nex : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
     (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor
       "2.0"))
);;

let str_flo = Localinput_lexer_symbol_v.string_off sym_lex_nex;;

test_number 3 ( 
(str_flo : string ) =
"2.0"
);;

let sym_loi_nex = Localinput_symbol_v.localinput_set_fence_basic_float_constructor str_flo;;

test_number 4 (
(sym_loi_nex : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_fence_symbol
   (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_numerical_symbol
     (Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol
       (Localinput_set_fence_basic_float_symbol_t.Localinput_set_fence_basic_float_constructor
         "2.0")))
);;

let sym_loi_bwa = Localinput_symbol_v.localinput_set_fence_basic_word_anycase_constructor "trUc";;

test_number 5 (
(sym_loi_bwa : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_fence_symbol
   (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
     (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_anycase_symbol
       (Localinput_set_fence_basic_word_anycase_symbol_t.Localinput_set_fence_basic_word_anycase_constructor
         "trUc")))
);;
