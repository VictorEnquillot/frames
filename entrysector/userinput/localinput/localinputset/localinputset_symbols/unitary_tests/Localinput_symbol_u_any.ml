open Make_test_v;;

testing "Localinput_symbol_v with
   Localinput_symbol_u_any.ml";;

(* toplevel 
   #use "Localinput_symbol_u_any.ml";;

*)

open Localinput_symbol_v;;

let sym_loi_dom = make "localinput_context_domain_constructor" "user";;

test_number 1 (
(sym_loi_dom : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_context_symbol
   (Localinput_context_symbol_t.Localinput_context_domain_symbol
     (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
       "user"))
);;

