open Make_test_v;;

testing "Figure_context_domain_tag_by_unit_provider_v with
    Figure_context_domain_tag_by_unit_provider_u_any.ml";;

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
   #use "Figure_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Figure_context_domain_tag_by_unit_provider_v;;

let fnd_cur = Unix.getenv ("BFIG");;

test_number 1 (
(fnd_cur : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/internalsector/figureset/figureset_builder_trees"
);;

let (nam_dom, nam_sec) = 
  Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide fnd_cur;;

test_number 2 (
( nam_dom : string ) = 
"figure"
);;

test_number 3 (
(nam_sec : string ) = 
"internal"
);;

let soi_dom = 
  Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
    (nam_dom, nam_sec) ;;

test_number 4 (
(soi_dom : int list ) = 
[7; 5]
);;

let sym_fcd = 
    Figure_context_domain_symbol_v.figure_context_domain_constructor 
    nam_dom ;;

test_number 5 (
(sym_fcd :
  Figure_context_domain_symbol_t.figure_context_domain_symbol ) =
  Figure_context_domain_symbol_t.Figure_context_domain_constructor
   "figure"
);;

let tag_fcd  = Tag_v.make sym_fcd soi_dom;;

test_number 6 (
( tag_fcd :
  Figure_context_domain_symbol_t.figure_context_domain_symbol
  Tag_t.tag ) =
  (Figure_context_domain_symbol_t.Figure_context_domain_constructor
    "figure",
   [7; 5])
);;

test_number 7 (
tag_fcd = provide ()
);;
