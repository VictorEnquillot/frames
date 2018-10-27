open Make_test_v;;

testing "Coordinate_fullnameoffile_by_coordinate_context_databox_tag_provider_v with
    Coordinate_fullnameoffile_by_coordinate_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Coordinate_fullnameoffile_by_coordinate_context_databox_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Coordinate_fullnameoffile_by_coordinate_context_databox_tag_provider_v;;

let nam_nbo = "lanl2dz";;

let tag_nbo = Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 (
( tag_nbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

let (nam_dba, nam_nbo) =
    Databox_name_n_database_name_by_coordinate_context_databox_tag_provider_v.provide
      tag_nbo;;
  
test_number 2 (
(nam_dba : string ) =
"db1points"
);;

let fno_db1 = Coordinate_fullnameoffile_by_databox_name_n_database_name_provider_v.provide (nam_dba, nam_nbo);;

test_number 3 (
( fno_db1 : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/db1points/files/lanl2dz.db1"
);;
