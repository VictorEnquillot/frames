open Make_test_v;;

testing "Skeleton_context_domain_tag_by_unit_provider_v with
    Skeleton_context_domain_tag_by_unit_provider_u_any.ml";;

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
   #use "Skeleton_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Skeleton_context_domain_tag_by_unit_provider_v;;

let fnd_cur = Unix.getenv ("BSKE");;

test_number 1 (
(fnd_cur : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/internalsector/skeletonset/skeletonset_builder_trees"
);;

let (nam_dom, nam_sec) = 
  Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide fnd_cur;;

test_number 2 (
( nam_dom : string ) = 
"skeleton"
);;

test_number 3 (
(nam_sec : string ) = 
"internal"
);;

let soi_dom = 
  Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
    (nam_dom, nam_sec) ;;

test_number 4 (
(soi_dom : int list ) = 
[20; 5]
);;

let sym_ecd = 
    Skeleton_context_domain_symbol_v.skeleton_context_domain_constructor 
    nam_dom ;;

test_number 5 (
(sym_ecd :
  Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol ) =
  Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
   "skeleton"
);;

let tag_ecd  = Tag_v.make sym_ecd soi_dom;;

test_number 6 (
( tag_ecd :
  Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol
  Tag_t.tag ) =
  (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
    "skeleton",
   [20; 5])
);;

test_number 7 (
tag_ecd = provide ()
);;
