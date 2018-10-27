open Make_test_v;;

testing "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v with
    Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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

let nam_mod = "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_u_any";;


(* toplevel 
   #use "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;

let tag_fig_qua = Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba);;

test_number 1 (
( tag_fig_qua : Figure_symbol_t.figure_symbol Tag_t.tag Quatuor_t.quatuor ) =
 ((Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
    [15; 1; 7; 5]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [1; 7; 5]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [7; 5]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_sector_symbol
       (Figure_context_sector_symbol_t.Figure_context_sector_constructor
         "internal")),
    [5]))
);;

let (tag_fig_dbo, tag_fig_dba, tag_fig_fcd, tag_fig_fcs) = tag_fig_qua;;

let sym_fig_dbo_st =
  Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba)
;;

test_number 2 (
(sym_fig_dbo_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
         (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor "BC")),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
           (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "BC_B")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
           (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "BC_C")))])])
);;

let soi_fig_dbo = Tag_v.sole_index_off_tag tag_fig_dbo;;

test_number 3 (
(soi_fig_dbo : Sole_index_t.sole_index ) = 
[15; 1; 7; 5]
);;

let soi_fig_dbo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_fig_dbo_st 
    soi_fig_dbo 
;;

test_number 4 (
( soi_fig_dbo_st : Sole_index_t.sole_index Tree_t.tree ) =
Tree_t.Inner ([15; 1; 7; 5],
	      [Tree_t.Inner ([1; 15; 1; 7; 5],
			     [Tree_t.Leaf [1; 1; 15; 1; 7; 5]; 
			      Tree_t.Leaf [2; 1; 15; 1; 7; 5]])])
);;

let tag_fig_dbo_st = Tree_v.map2 Tag_v.make sym_fig_dbo_st soi_fig_dbo_st;;
  
let tag_fig_dba_st = Tree_v.make_of_node tag_fig_dba [tag_fig_dbo_st];;
  
let tag_fig_fcd_st = Tree_v.make_of_node tag_fig_fcd [tag_fig_dba_st];;
 
let tag_fig_t = Tree_v.make_of_node tag_fig_fcs [tag_fig_fcd_st];;

test_number 5 (
(tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_sector_symbol
        (Figure_context_sector_symbol_t.Figure_context_sector_constructor
          "internal")),
     [5]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_context_domain_symbol
          (Figure_context_domain_symbol_t.Figure_context_domain_constructor
            "figure")),
       [7; 5]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_context_symbol
          (Figure_context_symbol_t.Figure_context_database_symbol
            (Figure_context_database_symbol_t.Figure_context_database_constructor
              "db1points")),
         [1; 7; 5]),
       [Tree_t.Inner
         ((Figure_symbol_t.Figure_context_symbol
            (Figure_context_symbol_t.Figure_context_databox_symbol
              (Figure_context_databox_symbol_t.Figure_context_databox_constructor
                "segment_BC")),
           [15; 1; 7; 5]),
         [Tree_t.Inner
           ((Figure_symbol_t.Figure_set_body_symbol
              (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
                (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
                  "BC")),
             [1; 15; 1; 7; 5]),
           [Tree_t.Leaf
             (Figure_symbol_t.Figure_set_fence_symbol
               (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
                 (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                   "BC_B")),
              [1; 1; 15; 1; 7; 5]);
            Tree_t.Leaf
             (Figure_symbol_t.Figure_set_fence_symbol
               (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
                 (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                   "BC_C")),
              [2; 1; 15; 1; 7; 5])])])])])])
);;

let tag_fig_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_fig_t;;

test_number 6 (
(tag_fig_top_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
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
         (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
           "BC")),
    [1; 15; 1; 7; 5])]
);;

test_number 7 (
tag_fig_t = provide (bna_dbo, bna_dba)
);;
