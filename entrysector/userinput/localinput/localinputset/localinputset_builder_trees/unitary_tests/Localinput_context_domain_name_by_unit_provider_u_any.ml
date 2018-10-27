open Make_test_v;;

testing "Localinput_context_domain_name_by_unit_provider_v with
    Localinput_context_domain_name_by_unit_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Localinput_context_domain_name_by_unit_provider_u_any.ml";; 

*)

(* Debug *)

open Localinput_context_domain_name_by_unit_provider_v;;

let (_, nam_dom, _) = Localinput_context_name_trio_by_unit_provider_v.provide ();;

test_number 1 (
(nam_dom : string ) = 
"user"
);;

test_number 2 (
nam_dom = provide ()
);;
