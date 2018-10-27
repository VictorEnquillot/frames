open Make_test_v;;

testing "Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v with
    Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v" "debug";; *)
Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_tools_second_pass_v" "debug";;

(* define Con_tw *)
(*        context *)
(*          databox "triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Per_tri *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor" ] *)
(*          end -- operator *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" ] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Perimeter_w *)
(*        target  *)
(*        type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Per_tri *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* print Perimeter_w *)
(*       units  *)
(*         length angstrom *)
(*       	end -- units	     *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";; 

*)

open Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v";;
let nam_ibo = "Print_perimeter_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;; 

let sym_lex_1_l = Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v.provide bna_ibo;;

let sym_lex_top_1_l = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_1_l;;
let sym_lex_1_sl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_1_l;;

test_number 1 (
(sym_lex_1_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol
        (Localinput_lexer_keyword_nextstringed_databox_symbol_t.Localinput_lexer_keyword_nextstringed_databox_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
        (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol
        (Localinput_lexer_keyword_nextstringed_domain_symbol_t.Localinput_lexer_keyword_nextstringed_domain_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_sector_symbol
        (Localinput_lexer_keyword_nextstringed_sector_symbol_t.Localinput_lexer_keyword_nextstringed_sector_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol
        (Localinput_lexer_keyword_nextstringed_external_name_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol
        (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor
          "?nextvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operator_symbol
        (Localinput_lexer_keyword_nextvarnamed_target_operator_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operator_constructor
          "?nextvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operand_symbol
        (Localinput_lexer_keyword_nextvarnamed_target_operand_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operand_constructor
          "?nextvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
      (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol
        (Localinput_lexer_keyword_defvarnamed_units_symbol_t.Localinput_lexer_keyword_defvarnamed_units_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")))]
);;

let sym_lex_nsv_l = 
    Localinput_lexer_lexical_analysis_tools_second_pass_v.localinput_lexer_symbol_list_complete_nextstring_nextvarnamed_of_lexeme_list 
      sym_lex_1_l;;

let sym_lex_nsv_sl = List_v.sublist_of_int_of_length_of_list 0 5 sym_lex_nsv_l;;

test_number 2 (
(sym_lex_nsv_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list )=
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Con_tw"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_tw"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_tw"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol
        (Localinput_lexer_keyword_nextstringed_databox_symbol_t.Localinput_lexer_keyword_nextstringed_databox_constructor
          "triangle_w")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "triangle_w"))))]
);;

let sym_lex_dvn_l = 
    Localinput_lexer_lexical_analysis_tools_second_pass_v.localinput_lexer_symbol_list_complete_defvarnamed_of_lexeme_list
      sym_lex_nsv_l;;

let sym_lex_dvn_sl = List_v.sublist_of_int_of_length_of_list 0 5 sym_lex_dvn_l;;

test_number 3 (
(sym_lex_dvn_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list )=
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Con_tw"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_tw"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_tw"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol
        (Localinput_lexer_keyword_nextstringed_databox_symbol_t.Localinput_lexer_keyword_nextstringed_databox_constructor
          "triangle_w")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "triangle_w"))))]
);;

open Localinput_lexer_lexical_analysis_tools_second_pass_v;;

let sym_lex_l = sym_lex_dvn_l;;

let sym_lex_bna_l = 
    Localinput_lexer_lexical_analysis_tools_second_pass_v.localinput_lexer_symbol_list_complete_blocknamed_of_lexeme_list 
      sym_lex_dvn_l;;

let sym_lex_lus_sl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_bna_l;;

test_number 4 (
sym_lex_lus_sl = []
);;

let sym_lex_emp_l = List.filter (fun s -> Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_operator_constructor s) sym_lex_1_l;;


check_for_empty_string_off sym_lex_l;;
