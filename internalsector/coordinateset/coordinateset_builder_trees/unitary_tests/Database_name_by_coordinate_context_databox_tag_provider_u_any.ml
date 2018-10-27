open Make_test_v;;

testing "Database_name_by_coordinate_context_databox_tag_provider_v with
    Database_name_by_coordinate_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Database_name_by_coordinate_context_databox_tag_provider_u_any.ml";; 

*)

open Database_name_by_coordinate_context_databox_tag_provider_v;;
  
let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_dbo = Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
(tag_dbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "Point_a",
   [16; 5; 6; 5])
);;

let soi_dbo = Tag_v.sole_index_off_tag tag_dbo;;

test_number 2 ( 
(soi_dbo : Sole_index_t.sole_index ) = 
[16; 5; 6; 5]
);;

let ord_dba = Sole_index_v.father_index_off_sole_index soi_dbo;;

test_number 3 (
(ord_dba : int ) = 
5
);;

let nam_dba = Database_name_by_ordinal_provider_v.provide ord_dba;;

test_number 4 ( 
(nam_dba : string ) = 
"db1points"
);;

test_number 5 (
nam_dba = provide tag_dbo
);;
