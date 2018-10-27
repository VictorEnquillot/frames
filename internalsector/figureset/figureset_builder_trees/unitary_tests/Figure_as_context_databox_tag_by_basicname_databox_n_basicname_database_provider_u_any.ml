open Make_test_v;;

testing "Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v with
    Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)


open Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v;;

let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;

let nam_qua = 
  Figure_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide (nam_fbo, nam_fba) 
;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("segment_BC", "db1points", "figure", "internal")
);;

let (nam_fbo, nam_fba, nam_fcd, nam_fcs) = nam_qua;;

let ord_fcs = Sector_ordinal_by_sector_name_provider_v.provide nam_fcs;;
  
let ord_fcd = Domain_ordinal_by_domain_name_provider_v.provide nam_fcd;;
  
let ord_fba = Database_ordinal_by_database_name_provider_v.provide nam_fba;;

let ord_fbo = Databox_ordinal_by_databox_name_provider_v.provide nam_fbo;;

let soi_fbo = [ord_fbo; ord_fba; ord_fcd; ord_fcs];;

test_number 2 (
(soi_fbo : Sole_index_t.sole_index ) = 
[15; 1; 7; 5]
);;

let sym_fig_fbo = Figure_symbol_v.figure_context_databox_constructor nam_fbo;;

test_number 3 (
(sym_fig_fbo : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
     (Figure_context_databox_symbol_t.Figure_context_databox_constructor
       "segment_BC"))
);;

let tag_fig_fbo = Tag_v.make sym_fig_fbo soi_fbo;;

test_number 4 (
( tag_fig_fbo : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
        "segment_BC")),
   [15; 1; 7; 5])
);;

test_number 5 (
tag_fig_fbo = provide (nam_fbo, nam_fba)
);;
