open Make_test_v;;

testing "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v with
    Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_any.ml";;

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
   #use "Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_any.ml";; 

*)

open Figure_symbol_subtree_by_figure_context_databox_tag_provider_v;;

let nam_nbo = "cc_pVTZ";;
 
let tag_nbo = Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide nam_nbo;;

test_number 1 ( 
(tag_nbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "cc_pVTZ",
   [8; 5; 20; 2])
);;

test_number 2 (
nam_nbo = Figure_context_databox_tag_v.string_off tag_nbo 
);;

let sym_nwc_st = 
  Figure_parser_v.figure_symbol_tree_root_databox_of_basicname_databox 
    nam_nbo;;

let tag_nwc_rtl = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 3 (
(tag_nwc_rtl : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
        "cc_pVTZ"));
   Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_version_symbol
      (Figure_context_version_symbol_t.Figure_context_version_constructor
        "v1.2.2"));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_node_symbol
      (Figure_set_body_node_symbol_t.Figure_set_body_node_aobasis_block
        "cc_pVTZ"))]
);;

test_number 4 (
sym_nwc_st = provide tag_nbo
);;
