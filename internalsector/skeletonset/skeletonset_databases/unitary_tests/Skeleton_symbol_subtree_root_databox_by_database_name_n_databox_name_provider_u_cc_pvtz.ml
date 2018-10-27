open Make_test_v;;

testing "Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v with
    Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_cc_pvtz.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v;; 

let sym_fig_ffi_st = 
  Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_dbo);;

test_number 1 (
(sym_fig_ffi_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
 Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_body_symbol
       (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
         (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor "S"))),
   [Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_field_symbol
       (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
         (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
           (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor "S_B"))));
    Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_field_symbol
       (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
         (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
           (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor "S_C"))))])
);;

let tag_fig_fba = Skeleton_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fig_fba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [1; 8])
);;

let tag_fig_fbo = 
  Skeleton_as_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo);;

test_number 3 (
(tag_fig_fbo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "cc_pvtz")),
   [3; 1; 8])
);;

let sym_fig_fbo = Tag_v.entity_off_tag tag_fig_fbo;;

let sym_fig_st = Tree_v.make_of_node sym_fig_fbo [sym_fig_ffi_st];;

test_number 4 (
( sym_fig_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
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

test_number 5 (
sym_fig_st = provide (nam_dba, nam_dbo)
);;
