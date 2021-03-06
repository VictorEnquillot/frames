open Make_test_v;;

testing "Figure_tag_subtree_by_figure_tag_provider_v with
    Figure_tag_subtree_by_figure_tag_provider_u_any.ml";;

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
   #use "Figure_tag_subtree_by_figure_tag_provider_u_any.ml";; 

*)

open Figure_tag_subtree_by_figure_tag_provider_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;

let tag_fig_l = 
    Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

let tag_fig = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Figure_symbol_v.is_figure_set_body_segment_constructor s)
	&&
      (Figure_symbol_v.string_off s = "BC")
      )
    tag_fig_l;;

test_number 1 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
        (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
          "BC")),
   [1; 15; 1; 7; 5])
);;

let soi_fig = Tag_v.sole_index_off_tag tag_fig;;

test_number 2 (
(soi_fig : Sole_index_t.sole_index ) = 
 [1; 15; 1; 7; 5]
);;

let tag_fbo = Figure_any_category_by_sole_index_extractor_v.figure_context_databox_tag_off_sole_index soi_fig;;

test_number 3 (
(tag_fbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol
  Tag_t.tag ) =
 (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "segment_BC",
   [15; 1; 7; 5])
);;

let tag_fig_t = Figure_tag_tree_by_figure_context_databox_tag_provider_v.provide tag_fbo;;

let tag_fig_st = Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_fig) tag_fig_t;;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_fig_st;;

test_number 4 (
(tag_lea_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
       (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "BC_B")),
    [1; 1; 15; 1; 7; 5]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
       (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "BC_C")),
    [2; 1; 15; 1; 7; 5])]
);;

let tag_fen = List.filter (fun (s, i) -> (Figure_symbol_v.is_figure_set_fence_symbol_off_figure_symbol s) )  tag_lea_l;;

test_number 5 (
tag_fen = tag_lea_l
);;

let tag_fen_ffp = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Figure_symbol_v.is_figure_set_fence_point_constructor s)
	&&
      (Figure_symbol_v.string_off s = "BC_B")
    )
    tag_fen;;

let tag_pat_ffp = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_fen_ffp) tag_fig_t);;

test_number 6 (
( tag_pat_ffp : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
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
    [15; 1; 7; 5]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
       (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor "BC")),
    [1; 15; 1; 7; 5]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
       (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "BC_B")),
    [1; 1; 15; 1; 7; 5])]
);;
