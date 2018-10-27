open Make_test_v;;

testing "Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)

(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";; 
         
*)

open Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v;; 

let nam_dbo = "cc_pVTZ";;
let nam_dba = "nwchem";;

let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;
let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;

(* Argument (bna_dbo, bna_dba) *)

let tag_ske_t = Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba);;

let tag_ske_tsn_l  = Tree_v.root_topson_node_list_off_tree tag_ske_t;;

test_number 1 (
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

let tag_ske_l = Tree_v.node_list_off_tree tag_ske_t;;

test_number 2 (
( tag_ske_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [22]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 22]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "try_ao")),
    [6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
           (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
             "try_ao")))),
    [1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
           (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
             "he")))),
    [1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
           (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
             "he s")))),
    [1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he s 1")))),
    [1; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he s 1 2"))),
    [2; 1; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he s 2")))),
    [2; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he s 2 1"))),
    [1; 2; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
           (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
             "he p")))),
    [2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he p 2")))),
    [1; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 1"))),
    [1; 1; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 2"))),
    [2; 1; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he p 3")))),
    [2; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 3 1"))),
    [1; 2; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
         (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
           "try_ao"))),
    [2; 6; 5; 22])]
);;

test_number 3 (
tag_ske_l = provide (nam_dbo, nam_dba)
);;

