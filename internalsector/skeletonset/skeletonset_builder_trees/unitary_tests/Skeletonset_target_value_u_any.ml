open Make_test_v;;

testing "Skeletonset_target value_v";;

(* toplevel 
   #use "Skeletonset_target_value_u_any.ml";; 

*)

let nam_mod = "A triangle";;
let nam_adb = "db2";;
let wha_fig = "triangle";;
let nam_fig = "ire";; 

let mod_fig_1 = Skeletonset_model_v.make nam_mod nam_adb wha_fig nam_fig;;

test_number 1 (
mod_fig_1
(* : Skeletonset_model_t.skeletonset_model list *)
  =
{Skeletonset_model_t.model_name = "A triangle";
 Skeletonset_model_t.database_name = "db2";
 Skeletonset_model_t.skeleton_what = "triangle";
 Skeletonset_model_t.skeleton_name = "ire"}
);;

let nam_mod = "A point";;
let nam_adb = "db1";;
let wha_fig = "vertex";;
let nam_fig = "P";; 

let mod_fig_2 = Skeletonset_model_v.make nam_mod nam_adb wha_fig nam_fig;;

test_number 2 (
mod_fig_2 
(* : Skeletonset_model_t.skeletonset_model list *)
  =
  {Skeletonset_model_t.model_name = "A point";
   Skeletonset_model_t.database_name = "db1";
   Skeletonset_model_t.skeleton_what = "vertex";
   Skeletonset_model_t.skeleton_name = "P"}
);;

let nam_tar = "Target 1";;
let wha_coo = "cartesian";;
let uni_coo = "meters";;
let mod_fig_l = [mod_fig_1; mod_fig_2];; 
let nam_pro_l = ["perimeter"; "surface"];;

let val_tar = Skeletonset_target_value_v.make nam_tar mod_fig_l wha_coo uni_coo nam_pro_l;;

test_number 3 (
 val_tar 
(* : Skeletonset_target_value_t.skeletonset_target_value *)
=
{Skeletonset_target_value_t.skeletonset_target_name = "Target 1";

 Skeletonset_target_value_t.skeletonset_model_list =
 [{Skeletonset_model_t.model_name = "A triangle";
   Skeletonset_model_t.database_name = "db2";
   Skeletonset_model_t.skeleton_what = "triangle";
   Skeletonset_model_t.skeleton_name = "ire"};

  {Skeletonset_model_t.model_name = "A point";
   Skeletonset_model_t.database_name = "db1";
   Skeletonset_model_t.skeleton_what = "vertex";
   Skeletonset_model_t.skeleton_name = "P"}];

 Skeletonset_target_value_t.coordinate_what = "cartesian";
 Skeletonset_target_value_t.coordinate_units = "meters";
 Skeletonset_target_value_t.property_name_list = ["perimeter"; "surface"]}
);;

