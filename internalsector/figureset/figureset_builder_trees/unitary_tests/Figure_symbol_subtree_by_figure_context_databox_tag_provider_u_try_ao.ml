open Make_test_v;;

testing "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v with
    Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_segment_BC.ml";;

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


(* Debugging *)


(* toplevel 
   #use "Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_segment_BC.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_dbo = "segment_BC";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (bna_dbo, bna_dba) *)

(* open Figure_symbol_subtree_by_figure_context_databox_tag_provider_v;; *)
  
let tag_fig_fcd = Figure_as_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_fig_fcd : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_domain_symbol
      (Figure_context_domain_symbol_t.Figure_context_domain_constructor
        "figure")),
   [8])
);;

let tag_fig_fba = Figure_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fig_fba : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_database_symbol
      (Figure_context_database_symbol_t.Figure_context_database_constructor
        "db1points")),
   [1; 8])
);;

let tag_fig_fbo = 
  Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
    (bna_dbo, bna_dba);;

test_number 3 (
(tag_fig_fbo : Figure_symbol_t.figure_symbol Tag_t.tag ) =
(Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
 [1; 1; 8])
);;
  
let tag_fig_fco_t = Trio_v.make tag_fig_fcd tag_fig_fba tag_fig_fbo;;

test_number 4 (
(tag_fig_fco_t : Figure_symbol_t.figure_symbol Tag_t.tag Trio_t.trio ) =
  ((Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [8]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [1; 8]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
    [1; 1; 8]))
);;

test_number 5 (
tag_fig_fco_t = provide (bna_dbo, bna_dba)
);;
