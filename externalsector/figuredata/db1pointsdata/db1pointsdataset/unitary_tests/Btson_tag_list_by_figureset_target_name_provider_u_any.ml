open Make_test_v;;

testing "Btson_tag_list_by_figureset_target_name_provider_v";;

(* toplevel 
   #use "Btson_tag_list_by_figureset_target_name_provider_u_any.ml";; 

*)

let nam_mod = "A triangle";;
let nam_adb = "db_2";;
let wha_fig = "triangle";;
let nam_fig = "ire";; 

let mod_fig_1 = Figureset_model_v.make nam_mod nam_adb wha_fig nam_fig;;

let nam_mod = "A point";;
let nam_adb = "db1";;
let wha_fig = "vertex";;
let nam_fig = "P";; 

let mod_fig_2 = Figureset_model_v.make nam_mod nam_adb wha_fig nam_fig;;

let nam_tar = "Target 1";;
let wha_coo = "cartesian";;
let uni_coo = "meters";;
let mod_fig_l = [mod_fig_1; mod_fig_2];; 
let nam_pro_l = ["perimeter"; "surface"];;

let val_tar = Figureset_target_value_by_figureset_target_name_provider_v.define nam_tar mod_fig_l wha_coo uni_coo nam_pro_l;;

test_number 1 (
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
   Figureset_model_t.database_name = "db1";
   Figureset_model_t.figure_what = "vertex";
   Figureset_model_t.figure_name = "P"}];

 Figureset_target_value_t.coordinate_what = "cartesian";
 Figureset_target_value_t.coordinate_units = "meters";
 Figureset_target_value_t.property_name_list = ["perimeter"; "surface"]}
);;

let dta_bts_l = Btson_tag_list_by_figureset_target_name_provider_v.provide nam_tar;;

test_number 2 (
dta_bts_l
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_entity_db_2_symbol
     (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "ire"),
    [1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "P"),
    [2; 1])]
);;
