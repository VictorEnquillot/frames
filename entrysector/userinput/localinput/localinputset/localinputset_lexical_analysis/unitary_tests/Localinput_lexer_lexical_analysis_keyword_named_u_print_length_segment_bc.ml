open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_keyword_named_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

(* Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";;  *)

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_keyword_named_u_print_length_segment_bc.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;

let nam_mod = "Localinput_lexer_lexical_analysis_v";;
let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

let fno_ibo = Inputbox_fullnameoffile_by_basicname_inputbox_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
( fno_ibo : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Print_length_segment_bc.loc"
);;

let sbu = File_v.scanbuf_of_fullname fno_ibo;;

let sym_lex_1l = localinput_lexer_symbol_list_first_pass_of_inputbox_name_of_scanbuf sbu;;

let sym_lex_lus_l = 
  localinput_lexer_symbol_list_complete_unset_string_off_with_next 
    sym_lex_1l 
;;
  
let sym_lex_new_l = 
  localinput_lexer_symbol_list_complete_unset_string_off_with_next_next 
    sym_lex_lus_l 
;;
  
let sym_lex_lvn_l = 
  localinput_lexer_symbol_list_complete_unset_string_off_with_variable_name 
    sym_lex_new_l 
;;

let pre_lex_lkn s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_named_symbol_off_localinput_lexer_symbol s;;

let sym_lex_lvn_l = List.filter pre_lex_lkn sym_lex_lvn_l;;
let sym_lvn_l = List.map Localinput_lexer_symbol_v.localinput_lexer_keyword_named_symbol_off_localinput_lexer_symbol sym_lex_lvn_l
;;

test_number 2 (
(sym_lvn_l :
  Localinput_lexer_keyword_named_symbol_t.localinput_lexer_keyword_named_symbol
  list ) =
  [Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "print");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_units_symbol
    (Localinput_lexer_keyword_varnamed_units_symbol_t.Localinput_lexer_keyword_varnamed_units_constructor
      "Len_bc");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "define");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "external");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_context_symbol
    (Localinput_lexer_keyword_varnamed_external_context_symbol_t.Localinput_lexer_keyword_varnamed_external_context_constructor
      "Con_nwc");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_type_symbol
    (Localinput_lexer_keyword_varnamed_type_symbol_t.Localinput_lexer_keyword_varnamed_type_constructor
      "Uni_len");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "define");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "target");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_target_operand_symbol
    (Localinput_lexer_keyword_varnamed_target_operand_symbol_t.Localinput_lexer_keyword_varnamed_target_operand_constructor
      "Seg_bc");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_target_operator_symbol
    (Localinput_lexer_keyword_varnamed_target_operator_symbol_t.Localinput_lexer_keyword_varnamed_target_operator_constructor
      "Len");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_type_symbol
    (Localinput_lexer_keyword_varnamed_type_symbol_t.Localinput_lexer_keyword_varnamed_type_constructor
      "Len_bc");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "define");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "external");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_context_symbol
    (Localinput_lexer_keyword_varnamed_external_context_symbol_t.Localinput_lexer_keyword_varnamed_external_context_constructor
      "Con_db1");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_name_symbol
    (Localinput_lexer_keyword_varnamed_external_name_symbol_t.Localinput_lexer_keyword_varnamed_external_name_constructor
      "BC");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_type_symbol
    (Localinput_lexer_keyword_varnamed_type_symbol_t.Localinput_lexer_keyword_varnamed_type_constructor
      "Seg_bc");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "define");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "operator");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol
    (Localinput_lexer_keyword_nextstringed_ondomain_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_constructor
      "Len");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol
    (Localinput_lexer_keyword_nextstringed_operation_symbol_t.Localinput_lexer_keyword_nextstringed_operation_constructor
      "Len");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_type_symbol
    (Localinput_lexer_keyword_varnamed_type_symbol_t.Localinput_lexer_keyword_varnamed_type_constructor
      "Len");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "define");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
    (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
      "context");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol
    (Localinput_lexer_keyword_nextstringed_domain_symbol_t.Localinput_lexer_keyword_nextstringed_domain_constructor
      "figure");
   Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
    (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
      "db1")]
);;
