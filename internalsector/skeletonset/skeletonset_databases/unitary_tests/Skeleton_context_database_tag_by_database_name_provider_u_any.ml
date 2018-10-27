open Make_test_v;;

testing "Skeleton_context_database_tag_by_database_name_provider_v with
    Skeleton_context_database_tag_by_database_name_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_context_database_tag_by_database_name_provider_u_any.ml";; 

*)

let nam_dba = "nwchem";;

Parameters_general_register_v.store "database-name" nam_dba;;

open Skeleton_context_database_tag_by_database_name_provider_v;;
 
let tag_ske_dba = Skeleton_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 1 (
( tag_ske_dba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [5; 19])
);;

let tag_pcb = Tag_v.map_entity Skeleton_symbol_v.skeleton_context_database_symbol_off_skeleton_symbol tag_ske_dba;;

test_number 2 (
( tag_pcb :
  Skeleton_context_database_symbol_t.skeleton_context_database_symbol
  Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
    "nwchem",
   [5; 19])
);;

let boo = tag_pcb = provide nam_dba;;

test_number 3 (
boo
);;
