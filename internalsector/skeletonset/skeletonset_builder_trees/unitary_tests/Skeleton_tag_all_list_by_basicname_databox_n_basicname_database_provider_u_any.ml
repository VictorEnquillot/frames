open Make_test_v;;

testing "Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v;;

let nam_sbo = "try_ao";;
let nam_sba = "nwchem";;
 
let tag_ske_t = 
    Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_sbo, nam_sba);;

let tag_ske_l = Tree_v.node_list_off_tree tag_ske_t;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_ske_l;;

test_number 1 (
( tag_top_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
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
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
         (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
           "try_ao"))),
    [2; 16; 5; 20; 5])]
);;

test_number 2 (
tag_ske_l = provide (nam_sbo, nam_sba)
);;
