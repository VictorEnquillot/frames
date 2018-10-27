open Make_test_v;;

testing "Skeleton_fence_by_skeleton_tag_provider_v with
    Skeleton_fence_tag_fence_by_skeleton_tag_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_fence_tag_fence_by_skeleton_tag_provider_u_any.ml";;

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)
     
open Skeleton_fence_by_skeleton_tag_provider_v;;

let tag_ske_l = Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v.provide () ;;

let tag_ske = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_body_centered_aopefset_anycenter s)
    tag_ske_l;;

test_number 1 (  
(tag_ske : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_body_symbol
      (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
        (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
          (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter
            "lanl2dz")))),
   [1; 5; 5; 19])
);;

let tag_ske_st = 
    Skeleton_tag_subtree_by_skeleton_tag_provider_v.provide tag_ske ;;

let tag_fen = Tree_v.leaf_node_list_off_tree tag_ske_st;;

let tag_fen_1l = List.filter 
    (fun (s, i) -> (List_v.is_substring_of_string_of_string (Skeleton_symbol_v.string_off s) "ne s 2 ") )
    tag_fen;;

test_number 2 (
(tag_fen_1l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "ne s 2 1"))))),
    [1; 2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "ne s 2 2"))))),
    [2; 2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "ne s 2 3"))))),
    [3; 2; 1; 1; 1; 5; 5; 19])]
);;

let tag_fen_2l = List.filter 
    (fun (s, i) -> (List_v.is_substring_of_string_of_string (Skeleton_symbol_v.string_off s) "au s 2 ") )
    tag_fen;;

test_number 3 (
(tag_fen_2l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "au s 2 1"))))),
    [1; 2; 1; 2; 1; 5; 5; 19])]
);;
