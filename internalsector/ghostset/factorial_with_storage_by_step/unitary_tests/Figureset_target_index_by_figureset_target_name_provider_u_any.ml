open Make_test_v;;

testing "Figureset_target_index_by_figureset_target_name_provider_v";;

(* toplevel 
   #use "Figureset_target_index_by_figureset_target_name_provider_u_any.ml";; 

*)

(* Model A triangle *)

let nam_mod = "A triangle";;
let nam_adb = "db_2";;
let wha_fig = "triangle";;
let nam_fig = "ire";; 

let mod_fig_1 = Figureset_model_v.make nam_mod nam_adb wha_fig nam_fig;;

test_number 1 (
mod_fig_1
(* : Figureset_model_t.figureset_model list *)
  =
{Figureset_model_t.model_name = "A triangle";
 Figureset_model_t.database_name = "db_2";
 Figureset_model_t.figure_what = "triangle";
 Figureset_model_t.figure_name = "ire"}
);;

(* Model A point *)

let nam_mod = "A point";;
let nam_adb = "db_1";;
let wha_fig = "vertex";;
let nam_fig = "P";; 

let mod_fig_2 = Figureset_model_v.make nam_mod nam_adb wha_fig nam_fig;;

test_number 2 (
mod_fig_2 
(* : Figureset_model_t.figureset_model list *)
  =
  {Figureset_model_t.model_name = "A point";
   Figureset_model_t.database_name = "db_1";
   Figureset_model_t.figure_what = "vertex";
   Figureset_model_t.figure_name = "P"}
);;

(* Target 1 *)

let nam_tar = "Target 1";;
let wha_coo = "cartesian";;
let uni_coo = "meters";;
let mod_fig_l = [mod_fig_1; mod_fig_2];; 
let nam_pro_l = ["perimeter"; "surface"];;

let val_tar = Figureset_target_value_v.make nam_tar mod_fig_l wha_coo uni_coo nam_pro_l;;

test_number 3 (
 val_tar 
(* : Figureset_target_value_t.figureset_target_value *)
=
{Figureset_target_value_t.figureset_target_name = "Target 1";

 Figureset_target_value_t.figureset_model_list =
 [{Figureset_model_t.model_name = "A triangle";
   Figureset_model_t.database_name = "db_2";
   Figureset_model_t.figure_what = "triangle";
   Figureset_model_t.figure_name = "ire"};

  {Figureset_model_t.model_name = "A point";
   Figureset_model_t.database_name = "db_1";
   Figureset_model_t.figure_what = "vertex";
   Figureset_model_t.figure_name = "P"}];

 Figureset_target_value_t.coordinate_what = "cartesian";
 Figureset_target_value_t.coordinate_units = "meters";
 Figureset_target_value_t.property_name_list = ["perimeter"; "surface"]}
);;

(* Usage *)

let val_tar = Figureset_target_value_by_figureset_target_name_provider_v.define nam_tar mod_fig_l wha_coo uni_coo nam_pro_l;;

test_number 4 (
val_tar 
(* : Figureset_target_value_t.figureset_target_value *)
=
  {Figureset_target_value_t.figureset_target_name = "Target 1";
   Figureset_target_value_t.figureset_model_list =
    [{Figureset_model_t.model_name = "A triangle";
      Figureset_model_t.database_name = "db_2";
      Figureset_model_t.figure_what = "triangle";
      Figureset_model_t.figure_name = "ire"};
     {Figureset_model_t.model_name = "A point";
      Figureset_model_t.database_name = "db_1";
      Figureset_model_t.figure_what = "vertex";
      Figureset_model_t.figure_name = "P"}];
   Figureset_target_value_t.coordinate_what = "cartesian";
   Figureset_target_value_t.coordinate_units = "meters";
   Figureset_target_value_t.property_name_list = ["perimeter"; "surface"]}
);;

test_number 5 (
val_tar = Figureset_target_value_by_figureset_target_name_provider_v.provide "Target 1"
);;

let mod_fig_l = Figureset_target_value_v.figureset_model_list_off_figureset_target_value val_tar;; 

test_number 6 (
mod_fig_l 
(* : Figureset_model_t.figureset_model list *)
=
  [{Figureset_model_t.model_name = "A triangle";
    Figureset_model_t.database_name = "db_2";
    Figureset_model_t.figure_what = "triangle";
    Figureset_model_t.figure_name = "ire"};

   {Figureset_model_t.model_name = "A point";
    Figureset_model_t.database_name = "db_1";
    Figureset_model_t.figure_what = "vertex";
    Figureset_model_t.figure_name = "P"}]
);;

let nam_mod = "A triangle";;
let mod_fig = List.find (fun m -> Figureset_model_v.model_name_off_figureset_model m = nam_mod) mod_fig_l;;

test_number 7 (
mod_fig 
(* : string *)
= 
{Figureset_model_t.model_name = "A triangle";
 Figureset_model_t.database_name = "db_2";
 Figureset_model_t.figure_what = "triangle";
 Figureset_model_t.figure_name = "ire"}
);;

let wha_fig = Figureset_model_v.figure_what_off_figureset_model mod_fig;;

test_number 8 (
wha_fig 
(* : string *)
= 
"triangle"
);;

let idx_tar = Figureset_target_index_by_figureset_target_name_provider_v.provide nam_tar;;

test_number 9 (
idx_tar
(* : int *)
=
1
);;

let dum = Figureset_target_index_by_figureset_target_name_register_v.dump ();;

test_number 10 (
dum
(* :string *)
= 
"[ (Target 1, 1) ]"
);;

let idx_tar = Figureset_target_index_by_figureset_target_name_provider_v.provide "truc";;

test_number 11 (
idx_tar
(* : int *)
=
2
);;

let dum = Figureset_target_index_by_figureset_target_name_register_v.dump ();;

test_number 12 (
dum
(* :string *)
= 
"[ (Target 1, 1);\n   (truc, 2) ]"
);;
