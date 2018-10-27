open Make_test_v;;

testing "Skeleton_point_tag_fence_by_skeleton_tag_provider_v with
    Skeleton_point_tag_fence_by_skeleton_tag_provider_u.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_point_tag_fence_by_skeleton_tag_provider_u.ml";;

*)

let nam_dba = "db1";;

let tag_fig_l = Skeleton_tag_all_list_by_database_name_provider_v.provide nam_dba;;

open Skeleton_point_tag_fence_by_skeleton_tag_provider_v;;

(* Point T_A *)

let nam_fig = "T_A";;
let tag_fig = List.find (fun t -> Skeleton_tag_v.string_off t = nam_fig) tag_fig_l;; 

test_number 1 ( 
( tag_fig : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_field_symbol
    (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
      (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
        (Skeleton_point_symbol_t.Skeleton_point_constructor "T_A"))),
   [1; 2; 1; 6])
);;

let tag_fig_st = Skeleton_tag_subtree_by_skeleton_tag_provider_v.provide tag_fig;;

test_number 2 (
(tag_fig_st : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
         (Skeleton_point_symbol_t.Skeleton_point_constructor "T_A"))),
    [1; 2; 1; 6])
);;

let tag_fig_poi_l = Tree_v.node_list_of_node_predicate_off_tree
      (fun t ->
	Skeleton_symbol_v.is_skeleton_point_symbol_off_skeleton_symbol (Tag_v.entity_off_tag t)
      )
      tag_fig_st;;

test_number 3 (
(tag_fig_poi_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
         (Skeleton_point_symbol_t.Skeleton_point_constructor "T_A"))),
    [1; 2; 1; 6])]
);;

let fen_t_a = provide tag_fig;;

test_number 4 (
(fen_t_a : Skeleton_point_symbol_t.skeleton_point_symbol Tag_t.tag list ) =
  [(Skeleton_point_symbol_t.Skeleton_point_constructor "T_A", [1; 2; 1; 6])]
);;

(* Triangle T *)

let nam_fig = "T";;
let tag_fig = List.find (fun (s, i) -> Skeleton_symbol_v.string_off s = nam_fig) tag_fig_l;; 

test_number 5 ( 
(tag_fig : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
 (Skeleton_symbol_t.Skeleton_field_symbol
    (Skeleton_field_symbol_t.Skeleton_field_body_symbol
      (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
        (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
          (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_acute
            "T")))),
   [2; 1; 6])
);;

let fen_t = provide tag_fig;;

test_number 6 (
(fen_t : Skeleton_point_symbol_t.skeleton_point_symbol Tag_t.tag list ) =
  [(Skeleton_point_symbol_t.Skeleton_point_constructor "T_A", [1; 2; 1; 6]);
   (Skeleton_point_symbol_t.Skeleton_point_constructor "T_B", [2; 2; 1; 6]);
   (Skeleton_point_symbol_t.Skeleton_point_constructor "T_C", [3; 2; 1; 6])]
);;
