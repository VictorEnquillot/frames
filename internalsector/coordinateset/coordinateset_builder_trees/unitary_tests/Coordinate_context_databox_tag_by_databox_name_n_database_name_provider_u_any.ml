open Make_test_v;;

testing "Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v with
        Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "Point_a";;

let nam_dba = "db1points";;

let nam_qua = Coordinate_context_name_quatuor_by_databox_name_n_database_name_provider_v.provide
      (nam_dbo, nam_dba) ;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("Point_a", "db1points", "coordinate", "internal")
);;

let (nam_dbo, nam_dba, nam_ecd, nam_ecs) = nam_qua;;

let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
   
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_dba = Database_ordinal_by_database_name_provider_v.provide nam_dba;;
    
let ord_dbo = Databox_ordinal_by_databox_name_provider_v.provide nam_dbo;;
  
let soi_dbo = [ord_dbo; ord_dba; ord_ecd; ord_ecs];;

test_number 2 (
(soi_dbo : int list ) = 
[16; 5; 6; 5]
);;

let sym_dbo = 
    Coordinate_context_databox_symbol_v.coordinate_context_databox_constructor 
      nam_dbo;;

test_number 3 (
(sym_dbo : Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol ) =
  Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
   "Point_a"
);;
 
let tag_dbo = Tag_v.make sym_dbo soi_dbo;;

test_number 4 (
(tag_dbo : Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "Point_a",
   [16; 5; 6; 5])
);;

test_number 5 (
tag_dbo = provide (nam_dbo, nam_dba)
);;
