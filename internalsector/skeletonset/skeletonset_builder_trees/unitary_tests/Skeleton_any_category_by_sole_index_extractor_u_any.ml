open Make_test_v;;

testing "Skeleton_any_category_by_sole_index_extractor_v with
    Skeleton_any_category_by_sole_index_extractor_u_any.ml";;

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
   #use "Skeleton_any_category_by_sole_index_extractor_u_any.ml";; 

*)

open Skeleton_any_category_by_sole_index_extractor_v;;

let nam_sbo = "try_ao";;
let nam_sba = "nwchem";;

let tag_ske_l = 
    Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_sbo, nam_sba);;

let tag_ske_any = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_fence_centered_aopef_constructor s)
	&&
      (Skeleton_symbol_v.string_off s = "he p 2 2")
      )
    tag_ske_l;;

test_number 1 (
(tag_ske_any : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he p 2 2"))),
   [2; 1; 2; 1; 1; 16; 5; 20; 5])
);;

let soi_any = Tag_v.sole_index_off_tag tag_ske_any;;

let nam_sae = skeleton_fence_name_off_sole_index soi_any;;

test_number 2 (
(nam_sae : string ) = 
"skeleton_fence_centered_aopef_constructor"
);;

test_number 3 (
nam_sbo = skeleton_context_databox_string_off_off_sole_index soi_any
);;

test_number 4 (
nam_sba = skeleton_context_database_string_off_off_sole_index soi_any
);;

let nam_scd = skeleton_context_domain_string_off_off_sole_index soi_any;;

test_number 5 (
(nam_scd : string ) = 
"skeleton"
);;

let nam_scs = skeleton_context_sector_string_off_off_sole_index soi_any;;

test_number 6 (
(nam_scs : string ) = 
"internal"
);;
