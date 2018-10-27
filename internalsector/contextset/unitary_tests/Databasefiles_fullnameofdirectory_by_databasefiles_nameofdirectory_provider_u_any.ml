open Make_test_v;;

testing "Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_v
   Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_u_any.ml";;

*)

open Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_v;;

let nod_dbf = "g9xdatafiles";;

let fnd_dbf_l = Databasefiles_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
(fnd_dbf_l : String.t list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/chemicaldata/pdbdata/pdbdatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata/db2geometrydatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/molprodata/molprodatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles"]
);;

let fnd_dbf = List_v.only_element_of_predicate_off_list (fun f -> Filename.basename f = nod_dbf) fnd_dbf_l;;

test_number 2 (
( fnd_dbf : string) = 
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdatafiles"
);;

test_number 3 (
fnd_dbf = provide nod_dbf
);;

