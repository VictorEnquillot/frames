open Make_test_v;;

testing "Check_consistency_by_coordinate_context_name_quatuor_provider_v with
        Check_consistency_by_coordinate_context_name_quatuor_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Check_consistency_by_coordinate_context_name_quatuor_provider_u_any.ml";; 

*)

open Check_consistency_by_coordinate_context_name_quatuor_provider_v;;

let nam_ecs = "internal";;
let nam_ecd = "coordinate";;
let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

Check_consistency_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let nam_sec = Coordinate_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string ) = 
"internal"
);;

let nam_dom = Coordinate_context_domain_name_by_unit_provider_v.provide ();;

test_number 2 (
(nam_dom : string ) = 
"coordinate"
);;

let nam_qua = Quadruplet_v.make nam_dbo nam_dba nam_ecd nam_ecs;;

test_number 3 (
(nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("Point_a", "db1points", "coordinate", "internal")
);;

test_number 4 (
() = provide nam_qua
);;
