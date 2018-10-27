open Make_test_v;;

testing "Management_v with
    Management_u_is_set_debug.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Management_u_is_set_debug.ml";;

*)

open Management_v;;

let nam_fun = "some_function";;

(* "Nwchemdata_parser_v debug" *) 

Register_v.delete Trace_what_by_module_name_register_v.register;;

let nam_mod = "Nwchemdata_parser_v";;

Trace_what_by_module_name_register_v.store nam_mod "debug";;

(* let is_set_any_what_of_module_name nam_mod *)

let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod;;

test_number 1 (
(str_wha : string ) = 
"debug"
);;

let is_set_any = is_set_any_what_of_module_name nam_mod;;

test_number 2 (
(is_set_any : bool ) = 
false
);;

let is_stored = Trace_what_by_module_name_register_v.is_stored nam_mod;;

test_number 3 (
(is_stored : bool ) = 
true
);;

let is_set = Management_v.is_set_debug_of_module_name nam_mod;;

test_number 4 (
(is_set : bool ) = 
true
);;

(* "Nwchemdata_parser_v any" *) 

Register_v.delete Trace_what_by_module_name_register_v.register;;

Trace_what_by_module_name_register_v.store nam_mod "any";;

(* let is_set_any_what_of_module_name nam_mod *)

let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod;;

test_number 5 (
(str_wha : string ) = 
"any"
);;

let is_set_any = is_set_any_what_of_module_name nam_mod;;

test_number 6 (
(is_set_any : bool ) = 
true
);;

let is_stored = Trace_what_by_module_name_register_v.is_stored nam_mod;;

test_number 7 (
(is_stored : bool ) = 
true
);;

let is_set = Management_v.is_set_debug_of_module_name nam_mod;;

test_number 8 (
(is_set : bool ) = 
false
);;

(* "any_v any" *) 

Register_v.delete Trace_what_by_module_name_register_v.register;;

Trace_what_by_module_name_register_v.store "Any_v" "debug";;

(* let is_set_any_what_of_module_name nam_mod *)

let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod;;

test_number 9 (
(str_wha : string ) = 
"debug"
);;

let is_set_any_what = is_set_any_what_of_module_name nam_mod;;

test_number 10 (
(is_set_any_what : bool ) = 
false
);;

let is_stored = Trace_what_by_module_name_register_v.is_stored nam_mod;;

test_number 11 (
(is_stored : bool ) = 
true
);;

let is_set = Management_v.is_set_debug_of_module_name nam_mod;;

test_number 12 (
(is_set : bool ) = 
true
);;
