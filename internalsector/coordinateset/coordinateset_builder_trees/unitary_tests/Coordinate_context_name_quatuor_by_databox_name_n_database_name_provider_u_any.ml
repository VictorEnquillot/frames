open Make_test_v;;

testing "Coordinate_context_name_quatuor_by_databox_name_n_database_name_provider_v with
    Coordinate_context_name_quatuor_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_context_name_quatuor_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Coordinate_context_name_quatuor_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let nam_ecs = Coordinate_context_sector_name_by_unit_provider_v.provide ();;
  
let nam_ecd = Coordinate_context_domain_name_by_unit_provider_v.provide ();;
  
let nam_qua = Quatuor_v.make nam_dbo nam_dba nam_ecd nam_ecs;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("Point_a", "db1points", "coordinate", "internal")
);;

test_number 2 (
() = Check_consistency_by_coordinate_context_name_quatuor_provider_v.provide nam_qua
);;

test_number 3 (
nam_qua = provide (nam_dbo, nam_dba)
);;
