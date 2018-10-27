open Make_test_v;;

testing "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_lanl2dz.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;



(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Databox *)

let tag_pcb = Skeleton_context_databox_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor "lanl2dz",
   [5; 5; 19])
);;

(* Cpu *)

let nam_mod = "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v";;

Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "provide") true;;
let nam_mod = "Son_nwchemdata_tag_list_by_father_nwchemdata_tag_provider_v";; 
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "build_n_store") true;; 

(* Debug *)

open Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v;;

let sym_ske_st = provide tag_pcb;;

