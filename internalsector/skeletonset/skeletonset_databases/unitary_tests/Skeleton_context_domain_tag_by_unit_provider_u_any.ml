open Make_test_v;;

testing "Skeleton_context_domain_tag_by_unit_provider_v with
    Skeleton_context_domain_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

(* Debug *)

open Skeleton_context_domain_tag_by_unit_provider_v;;

let tag_ske_dom = Skeleton_as_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_ske_dom : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
      (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
        "skeleton")),
   [19])
);;

let tag_pcd =  Tag_v.map_entity Skeleton_symbol_v.skeleton_context_domain_symbol_off_skeleton_symbol tag_ske_dom;;

test_number 2 (
(tag_pcd :
  Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol Tag_t.tag ) =
  (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
    "skeleton",
   [19])
);;

let boo = tag_pcd = provide ();;

test_number 3 (
boo
);;
