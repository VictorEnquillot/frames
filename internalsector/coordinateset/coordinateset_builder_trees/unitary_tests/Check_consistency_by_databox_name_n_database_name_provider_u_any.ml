open Make_test_v;;

testing "Check_consistency_by_databox_name_n_database_name_provider_v with
        Check_consistency_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Check_consistency_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Check_consistency_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

Check_consistency_by_box_name_n_base_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
() = provide (nam_dbo, nam_dba)
);;
