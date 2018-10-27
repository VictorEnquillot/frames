open Make_test_v;;

testing "Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v with
    Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_any.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;
Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

open Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v;;

(* Databox *)

let tag_pcb = 
  Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_bas);;

test_number 1 (
(tag_pcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor "lanl2dz",
   [5; 5; 19])
);;

let sym_ske_st = Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v.provide tag_pcb;;

let boo = sym_ske_st = provide (nam_dba, nam_bas);;

test_number 2 (
boo
);;
