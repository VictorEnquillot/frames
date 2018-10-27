open Make_test_v;;

testing "Figureset_target value_v";;

(* toplevel 
   #use "target_value_u_any.ml";; 

*)

let nam_adb = "db_2";;
let wha_fig = "file defined";;
let nam_fig = "ire";; 
let wha_coo = "file defined";;
let nam_pro_l = ["perimeter"];;

let val_tar = Figureset_target_value_v.make nam_adb wha_fig nam_fig nam_pro_l;;

test_number 1 (
val_tar
(* : Trs_t.target_value *)
=
{Figureset_target_value_t.database_name = "db_2"; 
 Figureset_target_value_t.figure_what = "file defined";
 Figureset_target_value_t.figure_name = "ire";
 Figureset_target_value_t.coordinate_what = "file defined";
 Figureset_target_value_t.units = "angstroms";
 Figureset_target_value_t.property_name_list = ["perimeter"]}
);;

let Figureset_target_value_provider_by_figureset_target_name_v.store "current" val_tar;;
