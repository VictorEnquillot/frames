open Make_test_v;;

testing "Figure_context_database_tag_by_database_name_provider_v with
        Figure_context_database_tag_by_database_name_provider_u_any.ml";;

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
   #use "Figure_context_database_tag_by_database_name_provider_u_any.ml";; 

*)

open Figure_context_database_tag_by_database_name_provider_v;;

let nam_fba = "db1points";;

let nam_fcs = Figure_context_sector_name_by_unit_provider_v.provide ();;

let nam_fcd = Figure_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_fcs = Sector_ordinal_by_sector_name_provider_v.provide nam_fcs;;
   
let ord_fcd = Domain_ordinal_by_domain_name_provider_v.provide nam_fcd;;
  
let ord_fba = Database_ordinal_by_database_name_provider_v.provide nam_fba;;
  
let soi_fba = [ord_fba; ord_fcd; ord_fcs];;

test_number 1 (
(soi_fba : int list ) = 
[1; 7; 5]
);;

let sym_fba = 
  Figure_context_database_symbol_v.figure_context_database_constructor 
    nam_fba 
;;

test_number 2 (
(sym_fba : Figure_context_database_symbol_t.figure_context_database_symbol ) =
  Figure_context_database_symbol_t.Figure_context_database_constructor
   "db1points"
);;
 
let tag_fba = Tag_v.make sym_fba soi_fba;;

test_number 3 (
(tag_fba : Figure_context_database_symbol_t.figure_context_database_symbol
  Tag_t.tag ) =
  (Figure_context_database_symbol_t.Figure_context_database_constructor
    "db1points",
   [1; 7; 5])
);;

test_number 4 (
tag_fba = provide nam_fba
);;
