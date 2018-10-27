open Make_test_v;;

testing "Coordinate_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v with
    Coordinate_as_context_tag_quatuor_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_as_context_tag_quatuor_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Coordinate_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;
    
  let tag_coo_ccs = Coordinate_as_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_coo_ccd = Coordinate_as_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_coo_cba = 
    Coordinate_as_context_database_tag_by_database_name_provider_v.provide 
      nam_dba;;  

  let tag_coo_cbo = 
    Coordinate_as_context_databox_tag_by_databox_name_n_database_name_provider_v.provide 
      (nam_dbo, nam_dba);;

let tag_coo_qua = Quadruplet_v.make tag_coo_cbo tag_coo_cba tag_coo_ccd tag_coo_ccs;;

test_number 1 (
(tag_coo_qua :
  (Coordinate_symbol_t.coordinate_symbol Tag_t.tag,
   Coordinate_symbol_t.coordinate_symbol Tag_t.tag,
   Coordinate_symbol_t.coordinate_symbol Tag_t.tag,
   Coordinate_symbol_t.coordinate_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "Point_a")),
    [16; 5; 6; 5]),
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [5; 6; 5]),
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "coordinate")),
    [6; 5]),
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_sector_symbol
       (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
         "internal")),
    [5]))
);;

let nam_qua = Quatuor_v.map 
      Coordinate_tag_v.string_off 
      tag_coo_qua;;

test_number 2 (
(nam_qua : string Quatuor_t.quatuor ) =
  ("Point_a", "db1points", "coordinate", "internal")
);;

test_number 3 (
() = Check_consistency_by_coordinate_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_coo_qua = provide (nam_dbo, nam_dba)
);;
