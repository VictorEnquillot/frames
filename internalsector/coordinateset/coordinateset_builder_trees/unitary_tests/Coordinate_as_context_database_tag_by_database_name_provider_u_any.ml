open Make_test_v;;

testing "Coordinate_as_context_database_tag_by_database_name_provider_v with
        Coordinate_as_context_database_tag_by_database_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_as_context_database_tag_by_database_name_provider_u_any.ml";; 

*)

open Coordinate_as_context_database_tag_by_database_name_provider_v;;

let nam_dba = "db1points";;

let nam_ecs = Coordinate_context_sector_name_by_unit_provider_v.provide ();;

let nam_ecd = Coordinate_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
   
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_dba = Database_ordinal_by_database_name_provider_v.provide nam_dba;;
  
let soi_dba = [ord_dba; ord_ecd; ord_ecs];;

test_number 1 (
(soi_dba : int list ) = 
[5; 6; 5]
);;

let sym_coo_cba = 
  Coordinate_symbol_v.coordinate_context_database_constructor 
    nam_dba 
;;

test_number 2 (
(sym_coo_cba : Coordinate_symbol_t.coordinate_symbol ) =
 Coordinate_symbol_t.Coordinate_context_symbol
   (Coordinate_context_symbol_t.Coordinate_context_database_symbol
     (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
       "db1points"))
);;
 
let tag_coo_cba = Tag_v.make sym_coo_cba soi_dba;;

test_number 3 (
(tag_coo_cba : Coordinate_symbol_t.coordinate_symbol
  Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_database_symbol
      (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
        "db1points")),
   [5; 6; 5])
);;

test_number 4 (
tag_coo_cba = provide nam_dba
);;
