open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_u_define_operator_hom_b_2.ml";;

(* Deleting Registers *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";; 

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_u_define_operator_hom_b_2.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;
let nam_mod = "Localinput_lexer_lexical_analysis_v";;

let nam_ibo = "Define_operator_hom_b_2";;
let nof_ibo = nam_ibo ^ ".loc";;
let fno_ibo = 
    Inputbox_fullnameoffile_by_inputbox_nameoffile_provider_v.provide 
      nof_ibo;;

test_number 1 (
( fno_ibo : string ) =
 "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Define_operator_hom_b_2.loc"
);;

(* define Hom_b_2 *)
(*        operator  *)
(*          type [ "operator" "body" "creation" "transformation" "constructor" ] *)
(*          operation "homothety" *)
(*          ondomain "figure" *)
(* 	    cofactor  *)
(*             cofactor_entity Cen_b  *)
(*             cofactor_basic 2.0  *)
(* 	       end -- cofactor *)
(*          end -- operator *)
(*        end -- define *)
(* stop *)

let sbu = File_v.scanbuf_of_fullname fno_ibo;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 2 (
(c : char ) = 
'd'
);;

let sym_lex_1l = localinput_lexer_symbol_list_first_pass_of_scanbuf sbu;;
let sym_lex_l = localinput_lexer_symbol_list_second_pass_of_first_pass sym_lex_1l;;

let sym_lex_top_l = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_l;;

test_number 3 (
(sym_lex_top_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Hom_b_2"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Hom_b_2"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Hom_b_2"))]
);;

let pre_lex_beg s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_named_cofactor_constructor s;;
let pre_lex_end s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_named_end_constructor s;;

let sym_lex_sl = List_v.sublist_of_predicate_included_of_predicate_included_of_list  pre_lex_beg  pre_lex_end sym_lex_l;;

test_number 4 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
 [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_cofactor_symbol
        (Localinput_lexer_keyword_named_cofactor_symbol_t.Localinput_lexer_keyword_named_cofactor_constructor
          "Cen_b")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_cofactor_entity_symbol
        (Localinput_lexer_keyword_named_cofactor_entity_symbol_t.Localinput_lexer_keyword_named_cofactor_entity_constructor
          "Cen_b")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Cen_b"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_cofactor_basic_symbol
        (Localinput_lexer_keyword_named_cofactor_basic_symbol_t.Localinput_lexer_keyword_named_cofactor_basic_constructor
          "2.0")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
      (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor
        "2.0"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "cofactor")))]
);;

let sym_lex_end_l = List.filter pre_lex_end sym_lex_l;;

test_number 5 (
(sym_lex_end_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "cofactor")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "operator")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "define")))]
);;

let pre_lex_lkn s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_named_symbol_off_localinput_lexer_symbol s;;
let sym_lex_lkn_l = List.filter pre_lex_lkn sym_lex_l;;

test_number 6 (
(sym_lex_lkn_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_type_symbol
        (Localinput_lexer_keyword_named_type_symbol_t.Localinput_lexer_keyword_named_type_constructor
          "")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_operation_symbol
        (Localinput_lexer_keyword_named_operation_symbol_t.Localinput_lexer_keyword_named_operation_constructor
          "homothety")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_ondomain_symbol
        (Localinput_lexer_keyword_named_ondomain_symbol_t.Localinput_lexer_keyword_named_ondomain_constructor
          "figure")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_cofactor_symbol
        (Localinput_lexer_keyword_named_cofactor_symbol_t.Localinput_lexer_keyword_named_cofactor_constructor
          "Cen_b")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_cofactor_entity_symbol
        (Localinput_lexer_keyword_named_cofactor_entity_symbol_t.Localinput_lexer_keyword_named_cofactor_entity_constructor
          "Cen_b")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_cofactor_basic_symbol
        (Localinput_lexer_keyword_named_cofactor_basic_symbol_t.Localinput_lexer_keyword_named_cofactor_basic_constructor
          "2.0")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "cofactor")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "operator")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "define")))]
);;

let sym_lex_las_l = List_v.last_elements_of_int_of_list 2 sym_lex_l;;

test_number 7 (
(sym_lex_las_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_named_end_symbol
        (Localinput_lexer_keyword_named_end_symbol_t.Localinput_lexer_keyword_named_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol
          (Localinput_lexer_basic_word_bare_lowercase_symbol_t.Localinput_lexer_basic_word_bare_lowercase_constructor
            "stop"))))]
);;

