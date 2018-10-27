open Make_test_v;;

testing "Skeleton_context_databox_tag_by_databox_name_provider_v with
    Skeleton_context_databox_tag_by_databox_name_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_context_databox_tag_by_databox_name_provider_u_any.ml";; 

*)

open Skeleton_context_databox_tag_by_databox_name_provider_v;;

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_dcd = Skeleton_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Skeleton_context_database_symbol_t.skeleton_context_database_symbol Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor "nwchem",
   [5; 14])
);;

(* Debug *)

let tag_pcd = provide nam_bas;;

test_number 2 (
(tag_pcd : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
(Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
   "lanl2dz",
 [5; 5; 14])
);;

let tag_pcd = Skeleton_context_databox_tag_by_unit_provider_v.provide ();;

test_number 3 (
(tag_pcd : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
(Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
   "lanl2dz",
 [5; 5; 14])
);;

