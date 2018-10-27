open Make_test_v;;

testing "Triangle_isoacuteag_by_database_db1_component_triangle_name_provider_v
   Triangle_isoacuteag_by_database_db1_component_triangle_name_provider_u_any.ml";;

(* toplevel 
   #use "Triangle_isoacuteag_by_database_db1_component_triangle_name_provider_u_any.ml";;

*)

let nam_cod = "Triangle_isoacuteag_by_database_db1_component_triangle_name_provider_u_any.ml";;

let nam_adb = "db1";;
let wha_fig = "triangle";;
let nam_fig = "T";; 
let wha_coo = "cartesian";;
let uni_coo = "angstroms";;
let nam_pro_l = ["perimeter"];;

let val_tar = Figureset_target_value_v.make nam_adb wha_fig nam_fig wha_coo uni_coo nam_pro_l;;
Figureset_target_value_by_figureset_target_name_register_v.store "current" val_tar;;

test_number 1 (
val_tar
(* : Trs_t.target_value *)
=
  {Figureset_target_value_t.alien_db_name = "db1";
   Figureset_target_value_t.figure_what = "triangle";
   Figureset_target_value_t.figure_name = "T";
   Figureset_target_value_t.coordinate_what = "cartesian";
   Figureset_target_value_t.coordinate_units = "angstroms";
   Figureset_target_value_t.property_name_list = ["perimeter"]}
);;

let dta_tri = Triangle_isoacuteag_by_database_db1_component_triangle_name_provider_v.provide nam_fig;;

