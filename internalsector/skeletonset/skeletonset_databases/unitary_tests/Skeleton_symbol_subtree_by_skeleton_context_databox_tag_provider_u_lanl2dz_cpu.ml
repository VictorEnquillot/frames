open Make_test_v;;

testing "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v with
    Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_u_lanl2dz_cpu.ml";;

(* Deleting Registers *)



(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_u_lanl2dz_cpu.ml";; 

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

let nam_mod = "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v";;

Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "provide") true;;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "build_n_store") true;;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "tag_nwchem_all_list_of_databox_name") true;;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "nwchem_shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list") true;;

let nam_mod = "Son_nwchem_tag_list_by_father_nwchem_tag_provider_v";;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "build_n_store") true;;

open Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v;;

let nam_fun = "provide";;
let nam_mod = "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v";;
let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun;;

let flo =
  let g = 1. in
  for i = 0 to 1000 do
    for j = 0 to 1000 do
      let f = Random.float 1. in
      ignore (f +. g) 
    done
  done
;;    

Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;;


let sym_ske_st = provide tag_pcb;;

