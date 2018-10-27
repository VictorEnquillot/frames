open Make_test_v;;

testing "Skeleton_tag_tree_by_unit_provider_v with
    Skeleton_tag_tree_by_unit_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_tree_by_unit_provider_u_any.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Skeleton_tag_tree_by_unit_provider_v;;

let tag_ske_t = provide ();;

(* Top *)

let tag_ske_tso_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (s, i) -> List.length i < 5) tag_ske_t;; 

test_number 1 (
( tag_ske_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
 [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "")),
    [14]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 14]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "lanl2dz")),
    [5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopef_symbol
           (Skeleton_body_centered_aopef_symbol_t.Skeleton_body_centered_aopefset_anycenter
             "lanl2dz")))),
    [1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 14])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_ske_t;;
let tag_fen_l = List.filter 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_fence_symbol_off_skeleton_symbol s) 
	&&
      (List_v.is_substring_of_string_of_string (Skeleton_symbol_v.string_off s) "ne")
    )
    tag_lea_l;;

test_number 2 (
( tag_fen_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 1 1")),
    [1; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 1 2")),
    [2; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 1 3")),
    [3; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 1 4")),
    [4; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 2 1")),
    [1; 2; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 2 2")),
    [2; 2; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 2 3")),
    [3; 2; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne s 3 1")),
    [1; 3; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne p 2 1")),
    [1; 1; 2; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne p 2 2")),
    [2; 1; 2; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "ne p 3 1")),
    [1; 2; 2; 1; 1; 5; 5; 14])]
);;

let tag_fen_l = List.filter 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_fence_symbol_off_skeleton_symbol s) 
	&&
      (List_v.is_substring_of_string_of_string (Skeleton_symbol_v.string_off s) "au")
    )
    tag_lea_l;;

test_number 3 (
( tag_fen_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au s 1 1")),
    [1; 1; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au s 1 2")),
    [2; 1; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au s 1 3")),
    [3; 1; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au s 2 1")),
    [1; 2; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au p 2 1")),
    [1; 1; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au p 2 2")),
    [2; 1; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au p 3 1")),
    [1; 2; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au p 3 2")),
    [2; 2; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au p 4 1")),
    [1; 3; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au d 3 1")),
    [1; 1; 3; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au d 3 2")),
    [2; 1; 3; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
         "au d 4 1")),
    [1; 2; 3; 2; 1; 5; 5; 14])]
);;
