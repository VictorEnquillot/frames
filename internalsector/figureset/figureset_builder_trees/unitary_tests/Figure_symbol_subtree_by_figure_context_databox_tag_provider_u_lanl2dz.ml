open Make_test_v;;

testing "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v with
    Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_lanl2dz.ml";;

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
   #use "Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_lanl2dz.ml";; 

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
let nam_mod = "Son_db1pointsdata_tag_list_by_father_db1pointsdata_tag_provider_v";; 
Cpu_by_module_name_n_function_name_register_v.store (nam_mod, "build_n_store") true;; 

(* Debug *)

open Figure_symbol_subtree_by_figure_context_databox_tag_provider_v;;

let sym_fig_st = provide tag_pcb;;

