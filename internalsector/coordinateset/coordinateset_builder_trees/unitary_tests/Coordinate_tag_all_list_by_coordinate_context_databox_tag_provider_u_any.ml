open Make_test_v;;

testing "Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v with
    Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_u_any.ml";; 

*)

open Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;
 
let tag_dbo =  Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
(tag_dbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "Point_a",
   [16; 5; 6; 5])
);;

test_number 2 (
(nam_dbo, nam_dba) =
   Databox_name_n_database_name_by_coordinate_context_databox_tag_provider_v.provide
     tag_dbo
);;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let tag_coo_con_l = List.filter 
    (fun (s, i) -> Coordinate_symbol_v.is_coordinate_context_symbol_off_coordinate_symbol s)
    tag_coo_l;;

test_number 3 (
(tag_coo_con_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_sector_symbol
       (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
         "internal")),
    [5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "coordinate")),
    [6; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [5; 6; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "Point_a")),
    [16; 5; 6; 5])]
);;

test_number 4 (
tag_coo_l = provide tag_dbo 
);;
