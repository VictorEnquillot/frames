open Make_test_v;;

testing "Figure_fullnameoffile_list_by_figure_context_database_tag_provider_v with
    Figure_fullnameoffile_list_by_figure_context_database_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;




(* Tracing *)


(* toplevel 
   #use "Figure_fullnameoffile_list_by_figure_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Figure_fullnameoffile_list_by_figure_context_database_tag_provider_v;;

let tag_dcd = Figure_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Figure_context_database_symbol_t.figure_context_database_symbol Tag_t.tag ) =
  (Figure_context_database_symbol_t.Figure_context_database_constructor "db1points",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_figure_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files"
);;


let nof_l =
  Figure_nameoffile_list_by_figure_context_database_tag_provider_v.provide 
    tag_dcd;;

test_number 3 (
( nof_l : string list ) =
  ["gaussian_figure_3_21g.nwc"; "gaussian_figure_6_31gss.nwc";
   "gaussian_figure_6_31gssp.nwc"; "gaussian_figure_cc_pVTZ.nwc";
   "gaussian_figure_lanl2dz.nwc"; "gaussian_figure_test.nwc";
   "gaussian_figure_test_ecp.nwc"]
);;

let fno_dba_l = provide tag_dcd;;

test_number 4 (
(fno_dba_l : string list ) = 
["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_figure_3_21g.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_figure_6_31gss.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_figure_6_31gssp.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_figure_cc_pVTZ.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_figure_lanl2dz.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_figure_test.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_figure_test_ecp.nwc"]
);;

