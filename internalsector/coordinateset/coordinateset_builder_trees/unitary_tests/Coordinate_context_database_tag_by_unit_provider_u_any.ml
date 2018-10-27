open Make_test_v;;

testing "Coordinate_context_database_tag_by_unit_provider_v with
    Coordinate_context_database_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_context_database_tag_by_unit_provider_u_any.ml";; 

*)

open Coordinate_context_database_tag_by_unit_provider_v;;
  
let (nam_dba, nam_dom, nam_sec) = 
  Coordinate_context_name_quatuor_by_databox_name_n_database_name_provider_v.provide () 
;;

test_number 1 (
((nam_dba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("db1points", "skeleton", "external") 
);;

let soi_dba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
      (nam_dba, nam_dom, nam_sec) 
;;
  
test_number 2 (
(soi_dba : int list ) = 
[5; 20; 2]
);;

let sym_dba = 
  Coordinate_context_database_symbol_v.coordinate_context_database_constructor 
    nam_dba 
;;

test_number 3 (
(sym_dba : Coordinate_context_database_symbol_t.coordinate_context_database_symbol ) =
  Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
   "db1points"
);;
 
let tag_dba = Tag_v.make sym_dba soi_dba;;

test_number 4 (
(tag_dba : Coordinate_context_database_symbol_t.coordinate_context_database_symbol
  Tag_t.tag ) =
  (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
    "db1points",
   [5; 20; 2])
);;

test_number 5 (
tag_dba = provide ()
);;
