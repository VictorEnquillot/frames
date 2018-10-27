open Make_test_v;;

testing "Skeleton_tag_subtree_by_skeleton_context_databox_tag_provider_v with
    Skeleton_tag_subtree_by_skeleton_context_databox_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_subtree_by_skeleton_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Skeleton_tag_subtree_by_skeleton_tag_provider_v;;

let tag_ske_l = Skeleton_tag_all_list_by_databox_name_provider_v.provide nam_bas;;

let tag_ske_sor = List.find 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal s)
	&&
      (Skeleton_symbol_v.string_off s = "ne p 3")
    )
    tag_ske_l
;; 

test_number 1 ( 
(tag_ske_sor : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_body_symbol
      (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
        (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopef_symbol
          (Skeleton_body_centered_aopef_symbol_t.Skeleton_body_centered_aopefset_shellordinal
            "ne p 3")))),
   [2; 2; 1; 1; 5; 5; 14])
);;

let tag_ske_sor_st = provide tag_ske_sor;;

test_number 2 (
( tag_ske_sor_st :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_symbol
      (Skeleton_symbol_t.Skeleton_body_symbol
        (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
          (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopef_symbol
            (Skeleton_body_centered_aopef_symbol_t.Skeleton_body_centered_aopefset_shellordinal
              "ne p 3")))),
     [2; 2; 1; 1; 5; 5; 14]),
   [Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_symbol
       (Skeleton_symbol_t.Skeleton_fence_symbol
         (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
           "ne p 3 1")),
      [1; 2; 2; 1; 1; 5; 5; 14])])
);;
