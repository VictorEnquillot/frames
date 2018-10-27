open Make_test_v;;

testing "Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v with
        Localinput_lexer_symbol_list_by_basicname_inputbox_provider_u_define_operator_tra_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

(* Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";;  *)

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(* 	      cofactor_entity Seg_bc *)
(* 	      end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* stop *)

(* toplevel 
   #use "Localinput_lexer_symbol_list_by_basicname_inputbox_provider_u_define_operator_tra_bc.ml";;

*)

open Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Define_operator_tra_bc";;
let bna_ibo = Basicname_v.basicname_variable_operator_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
  Basicname_t.Variable_operator "Define_operator_tra_bc"
);;

let sym_lex_l = Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v.provide bna_ibo;;

test_number 2 (
sym_lex_l = provide nam_ibo
);;
