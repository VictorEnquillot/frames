open Make_test_v;;

testing "Skeleton_fence_by_skeleton_tag_provider_v with
    Skeleton_fence_by_skeleton_tag_provider_u_any.ml";;

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
   #use "Skeleton_fence_by_skeleton_tag_provider_u_any.ml";; 

*)

open Skeleton_fence_by_skeleton_tag_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;
 
let tag_ske_l = Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (nam_ebo, nam_eba);;

let tag_ske_sca = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_fence_centered_aopef_constructor s)
	&&
      (Skeleton_symbol_v.string_off s = "he p 2 2")
    )
    tag_ske_l;;

test_number 1 (
(tag_ske_sca : Skeleton_symbol_t.skeleton_symbol Tag_t.tag) =
  (Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he p 2 2"))),
   [2; 1; 2; 1; 1; 16; 5; 20; 5])
);;

let tag_ske_sca_st = 
    Skeleton_tag_subtree_by_skeleton_tag_provider_v.provide tag_ske_sca;;

let fen_ske_sca = Tree_v.leaf_node_list_off_tree tag_ske_sca_st;;

test_number 2 (
(fen_ske_sca : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 2"))),
    [2; 1; 2; 1; 1; 16; 5; 20; 5])]
);;

test_number 3 (
fen_ske_sca = provide tag_ske_sca
);;
