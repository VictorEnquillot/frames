open Make_test_v;;

testing "Check_consistency_by_figure_context_name_quatuor_provider_v with
        Check_consistency_by_figure_context_name_quatuor_provider_u_any.ml";;

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
   #use "Check_consistency_by_figure_context_name_quatuor_provider_u_any.ml";; 

*)

open Check_consistency_by_figure_context_name_quatuor_provider_v;;

let nam_fcs = "internal";;
let nam_fcd = "figure";;
let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;

Check_consistency_by_basicname_databox_n_basicname_database_provider_v.provide (nam_fbo, nam_fba);;

let nam_sec = Figure_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string ) = 
"internal"
);;

let nam_dom = Figure_context_domain_name_by_unit_provider_v.provide ();;

test_number 2 (
(nam_dom : string ) = 
"figure"
);;

let nam_qua = Quadruplet_v.make nam_fbo nam_fba nam_fcd nam_fcs;;

test_number 3 (
(nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("segment_BC", "db1points", "figure", "internal")
);;

test_number 4 (
() = provide nam_qua
);;
