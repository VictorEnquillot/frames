open Make_test_v;;

testing "Skeleton_nameoffile_list_by_skeleton_context_database_tag_provider_v with
    Skeleton_nameoffile_list_by_skeleton_context_database_tag_provider_u_any.ml";;

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
   #use "Skeleton_nameoffile_list_by_skeleton_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Skeleton_nameoffile_list_by_skeleton_context_database_tag_provider_v;;

let tag_dcd = Skeleton_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Skeleton_context_database_symbol_t.skeleton_context_database_symbol Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor "nwchem",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_skeleton_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files"
);;

let nof_l = provide tag_dcd;;

test_number 3 (
( nof_l : string list ) =  
["gaussian_skeleton_3_21g.nwc"; "gaussian_skeleton_6_31gss.nwc";
   "gaussian_skeleton_6_31gssp.nwc"; "gaussian_skeleton_cc_pVTZ.nwc";
   "gaussian_skeleton_lanl2dz.nwc"; "gaussian_skeleton_test.nwc";
   "gaussian_skeleton_test_ecp.nwc"]
);;


