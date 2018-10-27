open Make_test_v;;

testing "Localinput_parser_handle_command_subtree_by_basicname_inputbox_provider_v with
    Localinput_parser_handle_command_subtree_by_basicname_inputbox_provider_u_print_translation_tra_bc_point_a_define_tra.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_parser_handle_command_subtree_by_basicname_inputbox_provider_v" "debug";;

(* toplevel 
   #use "Localinput_parser_handle_command_subtree_by_basicname_inputbox_provider_u_print_translation_tra_bc_point_a_define_tra.ml";; 

*)

open Localinput_parser_handle_command_subtree_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_parser_handle_command_subtree_by_basicname_inputbox_provider_v";;
let nam_ibo = "Print_translation_tra_bc_point_a";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_bc *)
(*            end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

let sym_lex_sl = List.nth sym_lex_hcs_ll 1;;

let sym_loi_han_st = 
  Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexeme_sublist_provider_v.provide 
    (nam_ibo, sym_lex_sl)
;;
