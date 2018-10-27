open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
    Localinput_parser_tree_by_basicname_inputbox_provider_u_print_length_segment_bc_define_len.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_parser_tree_by_basicname_inputbox_provider_v" "debug";;

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_print_length_segment_bc_define_len.ml";; 

*)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_parser_tree_by_basicname_inputbox_provider_v";;
let nam_ibo = "Print_length_segment_bc";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

(* Inputbox : define Len *)
(* Inputbox :        operator  *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "measure" "constructor"] *)
(* Inputbox : 	       operation "length" *)
(* Inputbox : 	       ondomain "figure"   *)
(* Inputbox :          end -- operator *)
(* Inputbox :        end -- define *)

let sym_lex_sl = List.nth sym_lex_hcs_ll 1;;

let sym_loi_han_st = 
  Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexeme_sublist_provider_v.provide 
    (nam_ibo, sym_lex_sl)

let sym_loi_1_st = localinput_symbol_subtree_list_of_inputbox_name_n_localinput_lexeme_sublist (nam_ibo, sym_lex_1_sl);;

