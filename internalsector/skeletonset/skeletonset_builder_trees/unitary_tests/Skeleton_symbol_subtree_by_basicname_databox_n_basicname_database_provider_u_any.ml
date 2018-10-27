open Make_test_v;;

testing "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_ske_sbo = 
    Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide
      (nam_dbo, nam_dba) 
;;

test_number 1 (
(tag_ske_sbo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "try_ao")),
   [16; 5; 20; 5])
);;

let (sym_ske_sbo, soi_ske_sbo) = tag_ske_sbo ;;


let tag_nwc_l = 
    Skeleton_symbol_from_nwchemdata_tag_translations_v.tag_nwchemdata_all_list_of_basicname_databox 
      nam_dbo ;;

let sym_ske_st = 
  skeleton_symbol_subtree_nwchemdata_of_tag_nwchemdata_all_list_of_skeleton_as_context_databox_symbol
    tag_nwc_l
    sym_ske_sbo;;

test_number 2 (
sym_ske_st = provide (nam_dbo, nam_dba)
);;

