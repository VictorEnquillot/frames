open Make_test_v;;

testing "Figure_context_database_tag_by_unit_provider_v with
    Figure_context_database_tag_by_unit_provider_u_any.ml";;

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
   #use "Figure_context_database_tag_by_unit_provider_u_any.ml";; 

*)

open Figure_context_database_tag_by_unit_provider_v;;
  
let (nam_fba, nam_dom, nam_sec) = 
  Figure_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide () 
;;

test_number 1 (
((nam_fba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("db1points", "figure", "external") 
);;

let soi_dba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
      (nam_fba, nam_dom, nam_sec) 
;;
  
test_number 2 (
(soi_dba : int list ) = 
[5; 20; 2]
);;

let sym_fba = 
  Figure_context_database_symbol_v.figure_context_database_constructor 
    nam_fba 
;;

test_number 3 (
(sym_fba : Figure_context_database_symbol_t.figure_context_database_symbol ) =
  Figure_context_database_symbol_t.Figure_context_database_constructor
   "db1points"
);;
 
let tag_fba = Tag_v.make sym_fba soi_dba;;

test_number 4 (
(tag_fba : Figure_context_database_symbol_t.figure_context_database_symbol
  Tag_t.tag ) =
  (Figure_context_database_symbol_t.Figure_context_database_constructor
    "db1points",
   [5; 20; 2])
);;

test_number 5 (
tag_fba = provide ()
);;
