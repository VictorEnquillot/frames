open Make_test_v;;

testing "Figure_tag_tree_by_database_name_n_databox_name_provider_v with
    Figure_tag_tree_by_database_name_n_databox_name_provider_u_point_a_debug.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Debugging *)
                                       
(* toplevel 
   #use "Figure_tag_tree_by_database_name_n_databox_name_provider_u_point_a_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Figure_tag_tree_by_database_name_n_databox_name_provider_v;; 


let (tag_fig_dom, tag_fig_fba, tag_fig_fbo) =
  Figure_as_context_tag_trio_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_dbo);;


test_number 1 (
(tag_fig_dom : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_domain_symbol
      (Figure_context_domain_symbol_t.Figure_context_domain_constructor
        "figure")),
   [8])
);;

test_number 2 (
(tag_fig_fba : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_database_symbol
      (Figure_context_database_symbol_t.Figure_context_database_constructor
        "db1figure")),
   [1; 8])
);;

test_number 3 (
(tag_fig_fbo : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
        "point_a")),
   [1; 1; 8])
);;

let sym_fig_fbo_st =
    Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo);;

test_number 4 (
( sym_fig_fbo_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "point_a")),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
           (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))))])
);;

  
let soi_fig_fbo = Tag_v.sole_index_off_tag tag_fig_fbo;;

test_number 5 (
(soi_fig_fbo : Sole_index_t.sole_index ) = 
[1; 1; 8]
);;

let soi_fig_fbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_fig_fbo_st 
      soi_fig_fbo;;

test_number 6 (
(soi_fig_fbo_st : Sole_index_t.sole_index Tree_t.tree ) =
Tree_t.Inner ([1; 1; 8], 
	      [Tree_t.Leaf [1; 1; 1; 8]])
);;

let tag_fig_fbo_st = Tree_v.map2 Tag_v.make sym_fig_fbo_st soi_fig_fbo_st;;
  
test_number 7 (
( tag_fig_fbo_st : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_databox_symbol
        (Figure_context_databox_symbol_t.Figure_context_databox_constructor
          "point_a")),
     [1; 1; 8]),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
           (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))),
      [1; 1; 1; 8])])
);;

let tag_fig_fba_st = Tree_v.make_of_node tag_fig_fba [tag_fig_fbo_st];;

test_number 8 (
(tag_fig_fba_st : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_database_symbol
        (Figure_context_database_symbol_t.Figure_context_database_constructor
          "db1figure")),
     [1; 8]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_context_databox_symbol
          (Figure_context_databox_symbol_t.Figure_context_databox_constructor
            "point_a")),
       [1; 1; 8]),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
             (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))),
        [1; 1; 1; 8])])])
);;

let tag_fig_t = Tree_v.make_of_node tag_fig_dom [tag_fig_fba_st];;

test_number 9 (
( tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_domain_symbol
        (Figure_context_domain_symbol_t.Figure_context_domain_constructor
          "figure")),
     [8]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_context_database_symbol
          (Figure_context_database_symbol_t.Figure_context_database_constructor
            "db1figure")),
       [1; 8]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_context_symbol
          (Figure_context_symbol_t.Figure_context_databox_symbol
            (Figure_context_databox_symbol_t.Figure_context_databox_constructor
              "point_a")),
         [1; 1; 8]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
               (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
                 "A"))),
          [1; 1; 1; 8])])])])
);;

test_number 10 (
tag_fig_t = provide (nam_dba, nam_dbo)
);;

