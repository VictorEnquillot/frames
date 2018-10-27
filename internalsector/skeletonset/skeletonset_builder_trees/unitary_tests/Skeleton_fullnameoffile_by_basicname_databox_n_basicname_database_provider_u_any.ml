open Make_test_v;;

testing "Skeleton_fullnameoffile_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_fullnameoffile_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Skeleton_fullnameoffile_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

(* Debug *)

open Skeleton_fullnameoffile_by_basicname_databox_n_basicname_database_provider_v;;

let nam_nbo = "lanl2dz";;

let tag_nbo = Skeleton_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide nam_nbo;;

test_number 1 (
( tag_nbo :
  Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

let (nam_eba, nam_nbo) =
    Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_provider_v.provide
      tag_nbo;;
  
test_number 2 (
(nam_eba : string ) =
"nwchem"
);;

let fno_nwc = Skeleton_fullnameoffile_by_basicname_databox_n_basicname_database_provider_v.provide (nam_eba, nam_nbo);;

test_number 3 (
( fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/nwchem/files/lanl2dz.nwc"
);;
