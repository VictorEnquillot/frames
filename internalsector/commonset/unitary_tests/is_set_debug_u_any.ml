open Make_test_v;;

testing "Management_v with
    Nwchemdata_parser_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "any" "debug";;

(* toplevel 
   #use "Nwchemdata_parser_u_any.ml";; 

*)

let is_set = Management_v.is_set_debug_of_module_name nam_mod;;
(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "try_ecp";;

(* Debug *)

open Management_v;;

let sym_lex_sta = Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_stack_of_databox_name nam_dbo;;

(* <basisset_file> ::= <beginning_of_line> <version> <el_block> <ao_basis_block> [ <el_block> <ecp_basis_block> ] end_of_file *)

(* <beginning_of_line> *)

let sym_lex_s = Stack.copy sym_lex_sta;;
let nam_mod = "Nwchemdata_parser_u_try_ecp";;
let nam_fun = "some_function";;
let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s;;

let is_set = Management_v.is_set_debug_of_module_name nam_mod;;
