open Make_test_v;;

testing "Coordinate_as_context_domain_tag_by_unit_provider_v with
    Coordinate_as_context_domain_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_as_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Coordinate_as_context_domain_tag_by_unit_provider_v;;

let fnd_cur = Unix.getcwd ();;

test_number 1 (
(fnd_cur : string ) =
  "/keep/sources/ocaml_top/setup/frames/internalsector/coordinateset/coordinateset_builder_trees/unitary_tests"
);;

let (nam_dom, nam_sec) = 
  Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide fnd_cur;;

test_number 2 (
( nam_dom : string ) = 
"coordinate"
);;

test_number 3 (
(nam_sec : string ) = 
"internal"
);;

let soi_dom = 
  Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
    (nam_dom, nam_sec) ;;

test_number 4 (
(soi_dom : int list ) = 
[6; 5]
);;

let sym_coo_ccd = 
    Coordinate_symbol_v.coordinate_context_domain_constructor 
    nam_dom ;;

test_number 5 (
( sym_coo_ccd : Coordinate_symbol_t.coordinate_symbol ) =
  Coordinate_symbol_t.Coordinate_context_symbol
   (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
     (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
       "coordinate"))
);;

let tag_coo_ccd  = Tag_v.make sym_coo_ccd soi_dom;;

test_number 6 (
( tag_coo_ccd :
 Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
      (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
        "coordinate")),
   [6; 5])
);;

test_number 7 (
tag_coo_ccd = provide ()
);;
