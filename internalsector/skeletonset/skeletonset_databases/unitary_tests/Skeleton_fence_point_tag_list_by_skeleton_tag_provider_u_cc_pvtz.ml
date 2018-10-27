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

let tag_fbo = Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

test_number 1 (
(tag_fbo : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
(Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
  "cc_pvtz",
 [3; 1; 8])
);;

let tag_fig_l = Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v.provide tag_fbo;;

test_number 2 (
(tag_fig_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [8]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [1; 8]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "cc_pvtz")),
    [3; 1; 8]);
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_body_symbol
       (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
         (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor "S"))),
    [1; 3; 1; 8]);
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
         (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor "S_B"))),
    [1; 1; 3; 1; 8]);
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
         (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor "S_C"))),
    [2; 1; 3; 1; 8])]
);;

(* Argument tag_fig *)

open Skeleton_field_fence_point_tag_list_by_skeleton_tag_provider_v;; 

let tag_fig_fbs = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_field_body_cc_pvtzymbol_off_skeleton_symbol s)
    tag_fig_l
;;

let tag_fig = tag_fig_fbs;;

test_number 3 (
( tag_fig : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_field_symbol
    (Skeleton_field_symbol_t.Skeleton_field_body_symbol
      (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
        (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor "S"))),
   [1; 3; 1; 8])
);;

let tag_fig_ffp_l = provide tag_fig;;
  
test_number 4 (
(tag_fig_ffp_l : Skeleton_field_fence_point_symbol_t.skeleton_field_fence_point_symbol list ) =
  [Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor "S_B";
   Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor "S_C"]
);;
