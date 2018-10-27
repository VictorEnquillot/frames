open Make_test_v;;

testing "Coordinate_fullnameoffile_list_by_coordinate_context_database_tag_provider_v with
    Coordinate_fullnameoffile_list_by_coordinate_context_database_tag_provider_u_any.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Coordinate_fullnameoffile_list_by_coordinate_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Coordinate_fullnameoffile_list_by_coordinate_context_database_tag_provider_v;;

let tag_dcd = Coordinate_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Coordinate_context_database_symbol_t.coordinate_context_database_symbol Tag_t.tag ) =
  (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor "db1points",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_coordinate_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files"
);;


let nof_l =
  Coordinate_nameoffile_list_by_coordinate_context_database_tag_provider_v.provide 
    tag_dcd;;

test_number 3 (
( nof_l : string list ) =
  ["gaussian_coordinate_3_21g.db1"; "gaussian_coordinate_6_31gss.db1";
   "gaussian_coordinate_6_31gssp.db1"; "gaussian_coordinate_cc_pVTZ.db1";
   "gaussian_coordinate_lanl2dz.db1"; "gaussian_coordinate_test.db1";
   "gaussian_coordinate_test_ecp.db1"]
);;

let fno_dba_l = provide tag_dcd;;

test_number 4 (
(fno_dba_l : string list ) = 
["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_3_21g.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_6_31gss.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_6_31gssp.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_cc_pVTZ.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_lanl2dz.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_test.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_test_ecp.db1"]
);;

