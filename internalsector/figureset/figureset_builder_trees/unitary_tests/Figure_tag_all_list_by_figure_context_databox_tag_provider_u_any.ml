open Make_test_v;;

testing "Figure_tag_all_list_by_figure_context_databox_tag_provider_v with
    Figure_tag_all_list_by_figure_context_databox_tag_provider_u_any.ml";;

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
   #use "Figure_tag_all_list_by_figure_context_databox_tag_provider_u_any.ml";; 

*)

open Figure_tag_all_list_by_figure_context_databox_tag_provider_v;;

let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;
 
let tag_fbo =  Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide (nam_fbo, nam_fba);;

test_number 1 (
(tag_fbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol
  Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "segment_BC",
   [15; 1; 7; 5])
);;

test_number 2 (
(nam_fbo, nam_fba) =
   Databox_name_n_database_name_by_figure_context_databox_tag_provider_v.provide
     tag_fbo
);;

let tag_fig_l = Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (nam_fbo, nam_fba);;

let tag_fig_con_l = List.filter 
    (fun (s, i) -> Figure_symbol_v.is_figure_context_symbol_off_figure_symbol s)
    tag_fig_l;;

test_number 3 (
(tag_fig_con_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_sector_symbol
       (Figure_context_sector_symbol_t.Figure_context_sector_constructor
         "internal")),
    [5]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [7; 5]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [1; 7; 5]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
    [15; 1; 7; 5])]
);;

test_number 4 (
tag_fig_l = provide tag_fbo 
);;
