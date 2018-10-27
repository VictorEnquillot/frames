open Make_test_v;;

testing "Coordinate_context_domain_name_by_unit_provider_v with
    Coordinate_context_domain_name_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_context_domain_name_by_unit_provider_u_any.ml";; 

*)

open Coordinate_context_domain_name_by_unit_provider_v;;
  
let fnd_cur = Unix.getcwd ();;

test_number 1 (
(fnd_cur : string ) =
  "/keep/sources/ocaml_top/setup/frames/internalsector/coordinateset/coordinateset_builder_trees/unitary_tests"
);;

let (nam_dom, _) =
    Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide
      fnd_cur;;

test_number 2 (
(nam_dom : string ) =
"coordinate"
);;

test_number 3 (
nam_dom = provide ()
);;
