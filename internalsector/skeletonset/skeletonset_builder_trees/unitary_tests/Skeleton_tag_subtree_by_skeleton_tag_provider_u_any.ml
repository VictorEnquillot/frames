open Make_test_v;;

testing "Skeleton_tag_subtree_by_skeleton_tag_provider_v with
    Skeleton_tag_subtree_by_skeleton_tag_provider_u_any.ml";;

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
   #use "Skeleton_tag_subtree_by_skeleton_tag_provider_u_any.ml";; 

*)

open Skeleton_tag_subtree_by_skeleton_tag_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_ske_l = 
    Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_ske = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal_constructor s)
	&&
      (Skeleton_symbol_v.string_off s = "he p 2")
      )
    tag_ske_l;;

test_number 1 (
(tag_ske : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "he p 2")))),
   [1; 2; 1; 1; 16; 5; 20; 5])
);;

let soi_ske = Tag_v.sole_index_off_tag tag_ske;;

test_number 2 (
(soi_ske : Sole_index_t.sole_index ) = 
 [1; 2; 1; 1; 16; 5; 20; 5]
);;

let tag_sbo = Skeleton_any_category_by_sole_index_extractor_v.skeleton_context_databox_tag_off_sole_index soi_ske;;

test_number 3 (
(tag_sbo :
  Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol
  Tag_t.tag ) =
 (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "try_ao",
   [16; 5; 20; 5])
);;

let tag_ske_t = Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide tag_sbo;;

let tag_ske_st = Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_ske) tag_ske_t;;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_ske_st;;

test_number 4 (
(tag_lea_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 1"))),
    [1; 1; 2; 1; 1; 16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 2"))),
    [2; 1; 2; 1; 1; 16; 5; 20; 5])]
);;

let tag_fen = List.filter (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_fence_symbol_off_skeleton_symbol s) )  tag_lea_l;;

test_number 5 (
tag_fen = tag_lea_l
);;

let tag_fen_sca = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_fence_centered_aopef_constructor s)
	&&
      (Skeleton_symbol_v.string_off s = "he p 2 2")
    )
    tag_fen;;

let tag_pat_sca = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_fen_sca) tag_ske_t);;

test_number 6 (
( tag_pat_sca : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
       (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
         "internal")),
    [5]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [20; 5]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "try_ao")),
    [16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
           (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
             "try_ao")))),
    [1; 16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
           (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
             "he")))),
    [1; 1; 16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
           (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
             "he p")))),
    [2; 1; 1; 16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he p 2")))),
    [1; 2; 1; 1; 16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 2"))),
    [2; 1; 2; 1; 1; 16; 5; 20; 5])]
);;
