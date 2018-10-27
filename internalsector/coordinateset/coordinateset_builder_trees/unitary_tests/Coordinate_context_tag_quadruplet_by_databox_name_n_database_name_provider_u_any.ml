open Make_test_v;;

testing "Coordinate_context_tag_quadruplet_by_databox_name_n_database_name_provider_v with
    Coordinate_context_tag_quadruplet_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_context_tag_quadruplet_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Coordinate_context_tag_quadruplet_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;
    
  let tag_ecs = Coordinate_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_ecd = Coordinate_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_dba = 
    Coordinate_context_database_tag_by_database_name_provider_v.provide 
      nam_dba;;  

  let tag_dbo = 
    Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide 
      (nam_dbo, nam_dba);;

let tag_qua = Quadruplet_v.make tag_dbo tag_dba tag_ecd tag_ecs;;

test_number 1 (
(tag_qua :
  (Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
   Tag_t.tag,
   Coordinate_context_database_symbol_t.coordinate_context_database_symbol
   Tag_t.tag,
   Coordinate_context_domain_symbol_t.coordinate_context_domain_symbol
   Tag_t.tag,
   Coordinate_context_sector_symbol_t.coordinate_context_sector_symbol
   Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
     "Point_a",
    [16; 5; 6; 5]),
   (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
     "db1points",
    [5; 6; 5]),
   (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
     "coordinate",
    [6; 5]),
   (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
     "internal",
    [5]))
);;

let nam_qua = Quadruplet_v.map 
    Coordinate_context_databox_tag_v.string_off 
    Coordinate_context_database_tag_v.string_off 
    Coordinate_context_domain_tag_v.string_off 
    Coordinate_context_sector_tag_v.string_off 
    tag_qua 
;;

test_number 2 (
( nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("Point_a", "db1points", "coordinate", "internal")
);;

test_number 3 (
() = Check_consistency_by_coordinate_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_qua = provide (nam_dbo, nam_dba)
);;
