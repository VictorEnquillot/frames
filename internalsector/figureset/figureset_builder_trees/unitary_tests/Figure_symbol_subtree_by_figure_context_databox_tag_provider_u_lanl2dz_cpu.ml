open Make_test_v;;

testing "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v with
    Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_lanl2dz_cpu.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;



(* Tracing *)


(* toplevel 
   #use "Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_lanl2dz_cpu.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Databox *)

let tag_pcb = Figure_context_databox_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor "lanl2dz",
   [5; 5; 19])
);;

(* Cpu *)

let nam_mod = "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v";;

Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "provide") true;;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "build_n_store") true;;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "tag_db1pointsdata_all_list_of_basicname_databox") true;;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "db1pointsdata_shell_symmetry_list_of_figure_as_center_symbol_of_tag_db1pointsdata_all_list") true;;

let nam_mod = "Son_db1pointsdata_tag_list_by_father_db1pointsdata_tag_provider_v";;
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "build_n_store") true;;

open Figure_symbol_subtree_by_figure_context_databox_tag_provider_v;;

let nam_fun = "provide";;
let nam_mod = "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v";;
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


let sym_fig_st = provide tag_pcb;;

