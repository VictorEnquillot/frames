open Make_test_v;;

testing "Skeleton_tag_tree_by_database_name_n_databox_name_provider_v with
    Skeleton_tag_tree_by_database_name_n_databox_name_provider_u_test_ao.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Skeleton_tag_tree_by_database_name_n_databox_name_provider_u_test_ao.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Skeleton_tag_tree_by_database_name_n_databox_name_provider_v;; 

let (tag_ske_dom, tag_ske_fba, tag_ske_fbo) =
  Skeleton_as_context_tag_trio_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_dbo);;

test_number 1 (
(tag_ske_dom : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
      (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
        "skeleton")),
   [22])
);;

test_number 2 (
(tag_ske_fba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [5; 22])
);;

test_number 3 (
(tag_ske_fbo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "test_ao")),
   [6; 5; 22])
);;

let sym_ske_fbo_st =
    Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo);;

test_number 4 (
( sym_ske_fbo_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "test_ao")),
   [Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
             (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
               "test_ao")))),
     [Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_body_symbol
         (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
           (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
             (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
               (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
                 "he")))),
       [Tree_t.Inner
         (Skeleton_symbol_t.Skeleton_body_symbol
           (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
             (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
               (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
                 (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
                   "he s")))),
         [Tree_t.Inner
           (Skeleton_symbol_t.Skeleton_body_symbol
             (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
               (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                 (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                   (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                     "he s 1")))),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he s 1 1"))));
            Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he s 1 2"))))]);
          Tree_t.Inner
           (Skeleton_symbol_t.Skeleton_body_symbol
             (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
               (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                 (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                   (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                     "he s 2")))),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he s 2 1"))))])]);
        Tree_t.Inner
         (Skeleton_symbol_t.Skeleton_body_symbol
           (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
             (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
               (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
                 (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
                   "he p")))),
         [Tree_t.Inner
           (Skeleton_symbol_t.Skeleton_body_symbol
             (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
               (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                 (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                   (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                     "he p 2")))),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he p 2 1"))));
            Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he p 2 2"))))]);
          Tree_t.Inner
           (Skeleton_symbol_t.Skeleton_body_symbol
             (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
               (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                 (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                   (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                     "he p 3")))),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he p 3 1"))))])])])]);
    Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
           (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
             "test_ao"))))])
);;

let soi_ske_fbo = Tag_v.sole_index_off_tag tag_ske_fbo;;

test_number 5 (
(soi_ske_fbo : Sole_index_t.sole_index ) = 
[6; 5; 22]
);;

let soi_ske_fbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ske_fbo_st 
      soi_ske_fbo;;

test_number 6 (
(soi_ske_fbo_st : Sole_index_t.sole_index Tree_t.tree ) = Tree_t.Inner ([6; 5; 22],
   [Tree_t.Inner ([1; 6; 5; 22],
     [Tree_t.Inner ([1; 1; 6; 5; 22],
       [Tree_t.Inner ([1; 1; 1; 6; 5; 22],
         [Tree_t.Inner ([1; 1; 1; 1; 6; 5; 22],
           [Tree_t.Leaf [1; 1; 1; 1; 1; 6; 5; 22];
            Tree_t.Leaf [2; 1; 1; 1; 1; 6; 5; 22]]);
          Tree_t.Inner ([2; 1; 1; 1; 6; 5; 22],
           [Tree_t.Leaf [1; 2; 1; 1; 1; 6; 5; 22]])]);
        Tree_t.Inner ([2; 1; 1; 6; 5; 22],
         [Tree_t.Inner ([1; 2; 1; 1; 6; 5; 22],
           [Tree_t.Leaf [1; 1; 2; 1; 1; 6; 5; 22];
            Tree_t.Leaf [2; 1; 2; 1; 1; 6; 5; 22]]);
          Tree_t.Inner ([2; 2; 1; 1; 6; 5; 22],
           [Tree_t.Leaf [1; 2; 2; 1; 1; 6; 5; 22]])])])]);
    Tree_t.Leaf [2; 6; 5; 22]])
);;

let tag_ske_fbo_st = Tree_v.map2 Tag_v.make sym_ske_fbo_st soi_ske_fbo_st;;
  
test_number 7 (
( tag_ske_fbo_st : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_context_symbol
      (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
        (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
          "test_ao")),
     [6; 5; 22]),
   [Tree_t.Inner
     ((Skeleton_symbol_t.Skeleton_body_symbol
        (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
          (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
            (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
              (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
                "test_ao")))),
       [1; 6; 5; 22]),
     [Tree_t.Inner
       ((Skeleton_symbol_t.Skeleton_body_symbol
          (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
            (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
              (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
                (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
                  "he")))),
         [1; 1; 6; 5; 22]),
       [Tree_t.Inner
         ((Skeleton_symbol_t.Skeleton_body_symbol
            (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
              (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
                  (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
                    "he s")))),
           [1; 1; 1; 6; 5; 22]),
         [Tree_t.Inner
           ((Skeleton_symbol_t.Skeleton_body_symbol
              (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
                (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                  (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                    (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                      "he s 1")))),
             [1; 1; 1; 1; 6; 5; 22]),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he s 1 1"))),
              [1; 1; 1; 1; 1; 6; 5; 22]);
            Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he s 1 2"))),
              [2; 1; 1; 1; 1; 6; 5; 22])]);
          Tree_t.Inner
           ((Skeleton_symbol_t.Skeleton_body_symbol
              (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
                (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                  (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                    (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                      "he s 2")))),
             [2; 1; 1; 1; 6; 5; 22]),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he s 2 1"))),
              [1; 2; 1; 1; 1; 6; 5; 22])])]);
        Tree_t.Inner
         ((Skeleton_symbol_t.Skeleton_body_symbol
            (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
              (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
                  (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
                    "he p")))),
           [2; 1; 1; 6; 5; 22]),
         [Tree_t.Inner
           ((Skeleton_symbol_t.Skeleton_body_symbol
              (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
                (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                  (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                    (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                      "he p 2")))),
             [1; 2; 1; 1; 6; 5; 22]),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he p 2 1"))),
              [1; 1; 2; 1; 1; 6; 5; 22]);
            Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he p 2 2"))),
              [2; 1; 2; 1; 1; 6; 5; 22])]);
          Tree_t.Inner
           ((Skeleton_symbol_t.Skeleton_body_symbol
              (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
                (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                  (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
                    (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
                      "he p 3")))),
             [2; 2; 1; 1; 6; 5; 22]),
           [Tree_t.Leaf
             (Skeleton_symbol_t.Skeleton_fence_symbol
               (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
                 (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
                   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
                     "he p 3 1"))),
              [1; 2; 2; 1; 1; 6; 5; 22])])])])]);
    Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
           (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
             "test_ao"))),
      [2; 6; 5; 22])])
);;

let tag_ske_fba_st = Tree_v.make_of_node tag_ske_fba [tag_ske_fbo_st];;

let tag_ske_tsn_l  = Tree_v.root_topson_node_list_off_tree tag_ske_fba_st;;

test_number 8 (
(tag_ske_tsn_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 22]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "test_ao")),
    [6; 5; 22])]
);;

let tag_ske_t = Tree_v.make_of_node tag_ske_dom [tag_ske_fba_st];;
let tag_ske_tsn_l  = Tree_v.root_topson_node_list_off_tree tag_ske_t;;

test_number 9 (
( tag_ske_tsn_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [22]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 22])]
);;

test_number 10 (
tag_ske_t = provide (nam_dba, nam_dbo)
);;

