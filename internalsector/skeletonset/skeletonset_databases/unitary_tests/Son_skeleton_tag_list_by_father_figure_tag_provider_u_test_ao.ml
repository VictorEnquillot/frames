open Make_test_v;;

testing "Son_figure_tag_list_by_father_figure_tag_provider_v with
    Son_figure_tag_list_by_father_figure_tag_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Son_figure_tag_list_by_father_figure_tag_provider_u_cc_pvtz.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_fig_l = Figure_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo) ;;

test_number 1 (
(tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1figure")),
    [1; 8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "cc_pvtz")),
    [3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_field_body_cc_pvtzymbol
         (Figure_field_body_cc_pvtzymbol_t.Figure_field_body_segment_constructor
           "S"))),
    [1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let tag_pre (s, i) = Figure_symbol_v.is_figure_field_body_cc_pvtzymbol_off_figure_symbol s;;
let tag_fig_seg = List_v.only_element_of_predicate_off_list tag_pre tag_fig_l;;

(* Argument tag_fat *)

open Son_figure_tag_list_by_father_figure_tag_provider_v;; 

let tag_fig_fat = tag_fig_seg;;

test_number 2 (
(tag_fig_fat: Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_field_body_cc_pvtzymbol
        (Figure_field_body_cc_pvtzymbol_t.Figure_field_body_segment_constructor
          "S"))),
   [1; 3; 1; 8])
);;

let soi_fig_fat = Tag_v.sole_index_off_tag tag_fig_fat;;
  
let tag_fbo =
    Figure_any_category_by_sole_index_extractor_v.figure_context_databox_tag_off_sole_index 
    soi_fig_fat
;;

test_number 3 (
(tag_fbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "cc_pvtz",
   [3; 1; 8])
);;

let tag_fig_fat_t = 
  Figure_tag_tree_by_figure_context_databox_tag_provider_v.provide  
    tag_fbo
;;

test_number 4 (
(tag_fig_fat_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
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
              "cc_pvtz")),
         [3; 1; 8]),
       [Tree_t.Inner
         ((Figure_symbol_t.Figure_field_symbol
            (Figure_field_symbol_t.Figure_field_body_symbol
              (Figure_field_body_symbol_t.Figure_field_body_cc_pvtzymbol
                (Figure_field_body_cc_pvtzymbol_t.Figure_field_body_segment_constructor
                  "S"))),
           [1; 3; 1; 8]),
         [Tree_t.Leaf
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_field_fence_symbol
               (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
                 (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
                   "S_B"))),
            [1; 1; 3; 1; 8]);
          Tree_t.Leaf
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_field_fence_symbol
               (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
                 (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
                   "S_C"))),
            [2; 1; 3; 1; 8])])])])])
);;

let tag_fig_son_l = provide tag_fig_fat;;

test_number 5 (
( tag_fig_son_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let str_pre = "is_figure_field_fence_point_symbol_off_figure_symbol";;

test_number 6 (
tag_fig_son_l = Figure_any_category_by_sole_index_extractor_v.son_figure_tag_list_of_string_predicate_of_father_sole_index str_pre soi_fig_fat
);;

