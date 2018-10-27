open Make_test_v;;

testing "Skeleton_field_fence_point_tag_list_by_skeleton_tag_provider_v with
    Skeleton_field_fence_point_tag_list_by_skeleton_tag_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Skeleton_field_fence_point_tag_list_by_skeleton_tag_provider_u_cc_pvtz.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Skeleton_field_fence_point_tag_list_by_skeleton_tag_provider_v;; 


let (tag_fig_dom, tag_fig_fba, tag_fig_fbo) =
  Skeleton_as_context_tag_trio_by_skeleton_tag_provider_v.provide
    (nam_dba, nam_dbo);;


test_number 1 (
(tag_fig_dom : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
      (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
        "skeleton")),
   [8])
);;

test_number 2 (
(tag_fig_fba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [1; 8])
);;

test_number 3 (
(tag_fig_fbo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "cc_pvtz")),
   [3; 1; 8])
);;

let sym_fig_fbo_st =
    Skeleton_symbol_subtree_by_skeleton_tag_provider_v.provide
      (nam_dba, nam_dbo);;

test_number 4 (
( sym_fig_fbo_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "cc_pvtz")),
   [Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_field_symbol
       (Skeleton_field_symbol_t.Skeleton_field_body_symbol
         (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
           (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor "S"))),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
           (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
             (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
               "S_B"))));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
           (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
             (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
               "S_C"))))])])

);;
  
let soi_fig_fbo = Tag_v.sole_index_off_tag tag_fig_fbo;;

test_number 5 (
(soi_fig_fbo : Sole_index_t.sole_index ) = 
[3; 1; 8]
);;

let soi_fig_fbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_fig_fbo_st 
      soi_fig_fbo;;

test_number 6 (
(soi_fig_fbo_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([3; 1; 8],
   [Tree_t.Inner ([1; 3; 1; 8],
     [Tree_t.Leaf [1; 1; 3; 1; 8]; 
      Tree_t.Leaf [2; 1; 3; 1; 8]])])
);;

let tag_fig_fbo_st = Tree_v.map2 Tag_v.make sym_fig_fbo_st soi_fig_fbo_st;;
  
test_number 7 (
( tag_fig_fbo_st : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_context_symbol
      (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
        (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
          "cc_pvtz")),
     [3; 1; 8]),
   [Tree_t.Inner
     ((Skeleton_symbol_t.Skeleton_field_symbol
        (Skeleton_field_symbol_t.Skeleton_field_body_symbol
          (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
            (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor "S"))),
       [1; 3; 1; 8]),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
           (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
             (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
               "S_B"))),
        [1; 1; 3; 1; 8]);
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
           (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
             (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
               "S_C"))),
        [2; 1; 3; 1; 8])])])
);;

let tag_fig_fba_st = Tree_v.make_of_node tag_fig_fba [tag_fig_fbo_st];;

test_number 8 (
(tag_fig_fba_st : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_context_symbol
      (Skeleton_context_symbol_t.Skeleton_context_database_symbol
        (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
          "nwchem")),
     [1; 8]),
   [Tree_t.Inner
     ((Skeleton_symbol_t.Skeleton_context_symbol
        (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
          (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
            "cc_pvtz")),
       [3; 1; 8]),
     [Tree_t.Inner
       ((Skeleton_symbol_t.Skeleton_field_symbol
          (Skeleton_field_symbol_t.Skeleton_field_body_symbol
            (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
              (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor
                "S"))),
         [1; 3; 1; 8]),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
               (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
                 "S_B"))),
          [1; 1; 3; 1; 8]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
               (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
                 "S_C"))),
          [2; 1; 3; 1; 8])])])])
);;

let tag_fig_t = Tree_v.make_of_node tag_fig_dom [tag_fig_fba_st];;

test_number 9 (
( tag_fig_t : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_context_symbol
      (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
        (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
          "skeleton")),
     [8]),
   [Tree_t.Inner
     ((Skeleton_symbol_t.Skeleton_context_symbol
        (Skeleton_context_symbol_t.Skeleton_context_database_symbol
          (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
            "nwchem")),
       [1; 8]),
     [Tree_t.Inner
       ((Skeleton_symbol_t.Skeleton_context_symbol
          (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
            (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
              "cc_pvtz")),
         [3; 1; 8]),
       [Tree_t.Inner
         ((Skeleton_symbol_t.Skeleton_field_symbol
            (Skeleton_field_symbol_t.Skeleton_field_body_symbol
              (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
                (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor
                  "S"))),
           [1; 3; 1; 8]),
         [Tree_t.Leaf
           (Skeleton_symbol_t.Skeleton_field_symbol
             (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
               (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
                 (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
                   "S_B"))),
            [1; 1; 3; 1; 8]);
          Tree_t.Leaf
           (Skeleton_symbol_t.Skeleton_field_symbol
             (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
               (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
                 (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
                   "S_C"))),
            [2; 1; 3; 1; 8])])])])])
);;

test_number 10 (
tag_fig_t = provide (nam_dba, nam_dbo)
);;

