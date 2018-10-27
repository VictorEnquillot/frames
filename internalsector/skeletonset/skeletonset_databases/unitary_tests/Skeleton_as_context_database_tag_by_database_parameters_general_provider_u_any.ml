open Make_test_v;;

testing "Skeleton_as_context_database_tag_by_parameters_general_provider_v with
    Skeleton_as_context_database_tag_by_parameters_general_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_as_context_database_tag_by_parameters_general_provider_u_any.ml";; 

*)

open Skeleton_as_context_database_tag_by_parameters_general_provider_v;;

let nam_dba = Parameters_general_provider_v.provide "database-name";;

let tag_ske_dba = Skeleton_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 1 (
( tag_ske_dba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [5; 19])
);;

let boo = tag_ske_dba = provide () ;;

test_number 2 (
boo
);;
