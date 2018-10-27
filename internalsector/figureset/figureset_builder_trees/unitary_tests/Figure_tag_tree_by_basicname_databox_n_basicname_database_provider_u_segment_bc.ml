open Make_test_v;;

testing "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v with
    Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_u_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length   angstrom  *)
(* coordinates_units_angle    degree *)
(* coordinates_kind           cylindrical   *)
(* figure_kind segment  *)
(* figure_name BC *)
(* vertex BC_B       1.  0.  0. *)
(* vertex BC_C       1. 90.  1. *)

(* toplevel 
   #use "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_u_segment_bc.ml";; 

*)

open Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_fig_qua =
    Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba);;

test_number 1 (
(tag_fig_qua : Figure_symbol_t.figure_symbol Tag_t.tag Quatuor_t.quatuor ) =
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

let (tag_fig_dbo, tag_fig_dba, tag_fig_dom, tag_fig_sec) = tag_fig_qua;;

let sym_fig_dbo_st =
    Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba);;

test_number 2 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_set_symbol
       (Figure_set_symbol_t.Figure_set_body_symbol
         (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
           (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
             "BC"))),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_set_symbol
         (Figure_set_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "BC_B"))));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_set_symbol
         (Figure_set_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "BC_C"))))])])
);;
 
let soi_fig_dbo = Tag_v.sole_index_off_tag tag_fig_dbo;;

let soi_fig_dbo_st = 
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_fig_dbo_st 
    soi_fig_dbo 
;;

test_number 3 (
(soi_fig_dbo_st : Sole_index_t.sole_index Tree_t.tree ) =
Tree_t.Inner ([15; 1; 7; 5],
	      [Tree_t.Inner ([1; 15; 1; 7; 5],
			     [Tree_t.Leaf [1; 1; 15; 1; 7; 5]; Tree_t.Leaf [2; 1; 15; 1; 7; 5]])])
);;
  
let tag_fig_dbo_st = Tree_v.map2 Tag_v.make sym_fig_dbo_st soi_fig_dbo_st;;

test_number 4 (
(tag_fig_dbo_st : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_databox_symbol
        (Figure_context_databox_symbol_t.Figure_context_databox_constructor
          "segment_BC")),
     [15; 1; 7; 5]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_set_symbol
        (Figure_set_symbol_t.Figure_set_body_symbol
          (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
            (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
              "BC"))),
       [1; 15; 1; 7; 5]),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_set_symbol
         (Figure_set_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "BC_B"))),
        [1; 1; 15; 1; 7; 5]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_set_symbol
         (Figure_set_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "BC_C"))),
        [2; 1; 15; 1; 7; 5])])])
);;

let tag_fig_dba_st = Tree_v.make_of_node tag_fig_dba [tag_fig_dbo_st];;

let tag_fig_dom_st = Tree_v.make_of_node tag_fig_dom [tag_fig_dba_st];;

let tag_fig_st = Tree_v.make_of_node tag_fig_sec [tag_fig_dom_st];;

test_number 5 (
(tag_fig_st : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
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
           ((Figure_symbol_t.Figure_set_symbol
              (Figure_set_symbol_t.Figure_set_body_symbol
                (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
                  (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
                    "BC"))),
             [1; 15; 1; 7; 5]),
           [Tree_t.Leaf
             (Figure_symbol_t.Figure_set_symbol
               (Figure_set_symbol_t.Figure_set_fence_symbol
                 (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
                   (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                     "BC_B"))),
              [1; 1; 15; 1; 7; 5]);
            Tree_t.Leaf
             (Figure_symbol_t.Figure_set_symbol
               (Figure_set_symbol_t.Figure_set_fence_symbol
                 (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
                   (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                     "BC_C"))),
              [2; 1; 15; 1; 7; 5])])])])])])
);;

test_number 6 (
tag_fig_st = provide (bna_dbo, bna_dba)
);;

