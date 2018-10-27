open Make_test_v;;

testing "Nameoffile_list_by_skeleton_context_database_tag_provider_v with
    Nameoffile_list_by_skeleton_context_database_tag_provider_u_any.ml";;

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
   #use "Nameoffile_list_by_skeleton_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Nameoffile_list_by_skeleton_context_database_tag_provider_v;;

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
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files"
);;

let fno_dba_l = provide tag_dcd;;

test_number 3 (
(fno_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_cc_pvtz.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_6_31gss.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_comment.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_test_ecp.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_test.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_lanl2dz.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_3_21g.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_ecp.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_6_31gssp.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_basis.dgn"]
);;

let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_dgn s) fno_dba_l;;

(* Database file *)

let nam_dgn = Skeleton_context_database_tag_v.string_off tag_dcd;;
let nam_bas = "lanl2dz";;

let nof_dgn = nam_dgn ^ "_" ^ nam_bas ^ ".dgn";;
let fno_dgn = nam_dir ^ "/files/" ^ nof_dgn;;

test_number 4 (
(fno_dgn : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_lanl2dz.dgn"
);;

Parameters_general_register_v.store "databox-file" fno_dgn;;
