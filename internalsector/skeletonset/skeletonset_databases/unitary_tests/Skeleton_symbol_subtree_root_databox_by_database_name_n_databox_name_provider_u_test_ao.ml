open Make_test_v;;

testing "Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v with
    Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_test_ao.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_test_ao.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v;; 

let sym_ske_ffi_st = 
  Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_dbo);;

test_number 1 (
(sym_ske_ffi_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
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

