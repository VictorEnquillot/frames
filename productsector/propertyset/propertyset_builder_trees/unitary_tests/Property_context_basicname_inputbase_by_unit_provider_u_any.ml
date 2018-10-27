open Make_test_v;;

testing "Property_context_basicname_inputbase_by_unit_provider_v with
    Property_context_basicname_inputbase_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)


(* toplevel 
   #use "Property_context_basicname_inputbase_by_unit_provider_u_any.ml";; 

*)

(* Debug *)

open Property_context_basicname_inputbase_by_unit_provider_v;;

let (nam_iba, _, _) = Property_context_name_trio_by_unit_provider_v.provide ();;

test_number 1 (
(nam_iba : string ) = 
"local"
);;

test_number 2 (
nam_iba = provide ()
);;
