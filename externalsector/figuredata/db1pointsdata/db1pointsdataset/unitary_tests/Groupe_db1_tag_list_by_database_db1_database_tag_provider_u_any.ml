open Make_test_v;;

testing "Database_db1_component_tag_list_by_database_db1_database_tag_provider_v";;

(* toplevel 
   #use "Database_db1_component_tag_list_by_database_db1_database_tag_provider_u_any.ml";; 

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

let dta_dba_l = Local_database_tag_by_unit_provider_v.provide ();;

(* Db_1 *)
let nam_dba = "db1";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dba) dta_dba_l;;

let dta_bts_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
dta_bts_l
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "T")),
    [1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "u")),
    [2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "v")),
    [3; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_segment "bc")),
    [4; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_vertex "a")),
    [5; 1])]
);;

(* Db_2 *)

let nam_dba = "db_2";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dba) dta_dba_l;;

let dta_bts_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
dta_bts_l
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
  []
);;
