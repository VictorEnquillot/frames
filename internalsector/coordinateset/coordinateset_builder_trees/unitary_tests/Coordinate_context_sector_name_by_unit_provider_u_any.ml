open Make_test_v;;

testing "Coordinate_context_sector_name_by_unit_provider_v with
    Coordinate_context_sector_name_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_context_sector_name_by_unit_provider_u_any.ml";; 

*)

open Coordinate_context_sector_name_by_unit_provider_v;;
  
let fnd_cur = Unix.getenv ("BELE");;

test_number 1 (
(fnd_cur : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/internalsector/coordinateset/coordinateset_builder_trees"
);;

let (_, nam_sec) =
    Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide
      fnd_cur;;

test_number 2 (
(nam_sec : string ) =
"internal"
);;

test_number 3 (
nam_sec = provide ()
);;
