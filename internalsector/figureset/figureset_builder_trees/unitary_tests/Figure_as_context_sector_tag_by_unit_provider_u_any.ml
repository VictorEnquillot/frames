open Make_test_v;;

testing "Figure_as_context_sector_tag_by_unit_provider_v with
    Figure_as_context_sector_tag_by_unit_provider_u_any.ml";;

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
   #use "Figure_as_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Figure_as_context_sector_tag_by_unit_provider_v;;

let nam_fcs = Figure_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_fcs : string ) = 
"internal" 
);;

let soi_fcs = Context_sole_index_by_sector_name_provider_v.provide nam_fcs;;
  
test_number 2 (
(soi_fcs : int list ) = 
[5]
);;

let sym_fig_ncs = 
    Figure_symbol_v.figure_context_sector_constructor 
      nam_fcs;;

test_number 3 (
( sym_fig_ncs :
  Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_sector_symbol
     (Figure_context_sector_symbol_t.Figure_context_sector_constructor
       "internal"))
);;
 
let tag_fig_ncs = Tag_v.make sym_fig_ncs soi_fcs;;

test_number 4 (
(tag_fig_ncs :
  Figure_symbol_t.figure_symbol
  Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_sector_symbol
      (Figure_context_sector_symbol_t.Figure_context_sector_constructor
        "internal")),
   [5])
);;

test_number 5 (
tag_fig_ncs = provide ()
);;
