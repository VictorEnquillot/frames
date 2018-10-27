open Make_test_v;;

testing "Databox_name_list_by_skeleton_context_database_tag_provider_v with
    Databox_name_list_by_skeleton_context_database_tag_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Databox_name_list_by_skeleton_context_database_tag_provider_u_any.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Databox_name_list_by_skeleton_context_database_tag_provider_v;;

let tag_pcd = Skeleton_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 ( 
( tag_pcd : Skeleton_context_database_symbol_t.skeleton_context_database_symbol Tag_t.tag ) =
(Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
   "nwchem",
 [5; 14])
);;

let nam_bas_l = provide tag_pcd;;

test_number 2 (
( nam_bas_l : String.t list ) =
  ["3_21g"; "6_31gss"; "6_31gssp"; "cc_pvtz"; "lanl2dz"; "test"; "test_ecp"]
);;

