open Make_test_v;;

testing "Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_provider_v with
    Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_provider_v;;
  
let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let tag_sbo = Skeleton_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide (nam_ebo, nam_eba);;

test_number 1 (
(tag_sbo :
  Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol
  Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "try_ao",
   [16; 5; 20; 5])
);;

let nam_ebo = Skeleton_context_databox_tag_v.string_off tag_sbo;;

test_number 2 ( 
(nam_ebo : string ) = 
"try_ao"
);;

let nam_eba = 
  Database_name_by_basicname_databox_n_basicname_database_provider_v.provide 
    tag_sbo;;

test_number 3 ( 
(nam_eba : string ) = 
"nwchem"
);;

test_number 4 (
(nam_ebo, nam_eba) = provide tag_sbo
);;
