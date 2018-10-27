open Make_test_v;;

testing "Figure_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_v with
    Figure_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Figure_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Figure_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_v;;

let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;

let nam_fcs = Figure_context_sector_name_by_unit_provider_v.provide ();;
  
let nam_fcd = Figure_context_domain_name_by_unit_provider_v.provide ();;
  
let nam_qua = Quatuor_v.make nam_fbo nam_fba nam_fcd nam_fcs;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("segment_BC", "db1points", "figure", "internal")
);;

test_number 2 (
() = Check_consistency_by_figure_context_name_quatuor_provider_v.provide nam_qua
);;

test_number 3 (
nam_qua = provide (nam_fbo, nam_fba)
);;
