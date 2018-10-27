open Make_test_v;;

testing "Nwchemdata_nameoffile_list_by_nwchemdata_context_database_tag_provider_v with
    Nwchemdata_nameoffile_list_by_nwchemdata_context_database_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_set_fence_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.register;;
Register_v.delete Nwchemdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_tree_by_databox_name_register_v.register;;




(* Tracing *)


(* toplevel 
   #use "Nwchemdata_nameoffile_list_by_nwchemdata_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Nwchemdata_nameoffile_list_by_nwchemdata_context_database_tag_provider_v;;

let tag_dcd = Nwchemdata_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Nwchemdata_context_database_symbol_t.nwchemdata_context_database_symbol Tag_t.tag ) =
  (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor "nwchem",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_nwchemdata_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files"
);;

let nof_l = provide tag_dcd;;

test_number 3 (
( nof_l : string list ) =  
["gaussian_nwchemdata_3_21g.nwc"; "gaussian_nwchemdata_6_31gss.nwc";
   "gaussian_nwchemdata_6_31gssp.nwc"; "gaussian_nwchemdata_cc_pVTZ.nwc";
   "gaussian_nwchemdata_lanl2dz.nwc"; "gaussian_nwchemdata_test.nwc";
   "gaussian_nwchemdata_test_ecp.nwc"]
);;


