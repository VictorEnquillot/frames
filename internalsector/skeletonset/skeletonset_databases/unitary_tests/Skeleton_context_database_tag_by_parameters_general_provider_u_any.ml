open Make_test_v;;

testing "Skeleton_context_database_tag_by_parameters_general_provider_v with
    Skeleton_context_database_tag_by_parameters_general_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_context_database_tag_by_parameters_general_provider_u_any.ml";; 

*)

let nam_dba = "nwchem";;

Parameters_general_register_v.store "database-name" nam_dba;;

open Skeleton_context_database_tag_by_parameters_general_provider_v;;
 
let tag_pcb = Skeleton_context_database_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
( tag_pcb :
  Skeleton_context_database_symbol_t.skeleton_context_database_symbol
  Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
    "nwchem",
   [5; 19])
);;

let boo = tag_pcb = provide () ;;

test_number 2 (
boo
);;
