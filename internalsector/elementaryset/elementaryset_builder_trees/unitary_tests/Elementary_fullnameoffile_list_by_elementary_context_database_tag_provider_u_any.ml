open Make_test_v;;

testing "Elementary_fullnameoffile_list_by_elementary_context_database_tag_provider_v with
    Elementary_fullnameoffile_list_by_elementary_context_database_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;




(* Tracing *)


(* toplevel 
   #use "Elementary_fullnameoffile_list_by_elementary_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Elementary_fullnameoffile_list_by_elementary_context_database_tag_provider_v;;

let tag_dcd = Elementary_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_elementary_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files"
);;


let nof_l =
  Elementary_nameoffile_list_by_elementary_context_database_tag_provider_v.provide 
    tag_dcd;;

test_number 3 (
( nof_l : string list ) =
  ["gaussian_elementary_3_21g.nwc"; "gaussian_elementary_6_31gss.nwc";
   "gaussian_elementary_6_31gssp.nwc"; "gaussian_elementary_cc_pVTZ.nwc";
   "gaussian_elementary_lanl2dz.nwc"; "gaussian_elementary_test.nwc";
   "gaussian_elementary_test_ecp.nwc"]
);;

let fno_dba_l = provide tag_dcd;;

test_number 4 (
(fno_dba_l : string list ) = 
["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_elementary_3_21g.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_elementary_6_31gss.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_elementary_6_31gssp.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_elementary_cc_pVTZ.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_elementary_lanl2dz.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_elementary_test.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_elementary_test_ecp.nwc"]
);;

