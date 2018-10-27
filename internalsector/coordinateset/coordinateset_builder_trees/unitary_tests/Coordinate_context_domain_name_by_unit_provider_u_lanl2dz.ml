open Make_test_v;;

testing "Coordinate_context_domain_name_by_unit_provider_v with
    Coordinate_context_domain_name_by_unit_provider_u_lanl2dz.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Coordinate_context_domain_name_by_unit_provider_u_lanl2dz.ml";; 

*)

(* Debug *)

open Coordinate_context_domain_name_by_unit_provider_v;;

let nam_dom = provide ();;

test_number 1 (
(nam_dom : string ) = 
"database"
);;
