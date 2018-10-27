open Make_test_v;;

testing "Databox_name_list_by_figure_context_database_tag_provider_v with
    Databox_name_list_by_figure_context_database_tag_provider_u_any.ml";;

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
   #use "Databox_name_list_by_figure_context_database_tag_provider_u_any.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "db1points";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Databox_name_list_by_figure_context_database_tag_provider_v;;

let tag_pcd = Figure_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 ( 
( tag_pcd : Figure_context_database_symbol_t.figure_context_database_symbol Tag_t.tag ) =
(Figure_context_database_symbol_t.Figure_context_database_constructor
   "db1points",
 [5; 14])
);;

let nam_bas_l = provide tag_pcd;;

test_number 2 (
( nam_bas_l : String.t list ) =
  ["3_21g"; "6_31gss"; "6_31gssp"; "cc_pvtz"; "lanl2dz"; "test"; "test_ecp"]
);;

