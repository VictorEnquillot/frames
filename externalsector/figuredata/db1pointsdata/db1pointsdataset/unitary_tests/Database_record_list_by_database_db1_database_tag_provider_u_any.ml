open Make_test_v;;

testing "Database_record_list_by_database_db1_database_tag_provider_v
   Database_record_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_record_list_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_cod = "Database_record_list_by_database_db1_database_tag_provider_u_any.ml";;

let nam_dos = "figureset";;
let sym_dos = Database_entity_symbol_v.make "domainset" nam_dos;;
let soi_dos = Sole_index_v.make 4 [];;
Database_entity_symbol_by_sole_index_register_v.store soi_dos sym_dos;;
let db_tag_dos = Tag_v.make sym_dos soi_dos;;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide db_tag_dos;;

(* 1 Db_1 *)

let idx_dab = 1;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 1 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
(Database_entity_symbol_t.Database "db1", [1])
);;

let fin = Database_filename_by_database_db1_database_tag_provider_v.provide tag_ldb;;

let rec_l = Database_record_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
rec_l
(* : string list *)
=
  ["triangle T";
   "vertex A       1. 1. -2.";
   "vertex B       0. 0. -2.";
   "vertex C       2. 0. -2.";
   "triangle U";
   "vertex A       0. 0. -3.";
   "vertex B       0. 1. -3.";
   "vertex C       1. 0. -3."]
);;

(* 2 Db_2 *)

let idx_dab = 2;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 3 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
(Database_entity_symbol_t.Database "db_2", [2])
);;

let fin = Database_filename_by_database_db1_database_tag_provider_v.provide tag_ldb;;

let rec_l = Database_record_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 4 (
rec_l
(* : string list *)
 =
  ["triangle ISO";
   "summit   A";
   "segment    A B";
   "units    Angstroms";
   "vertex A       1. 3. 1.";
   "vertex B       1. 1. 1.";
   "vertex C       1. 4. 1.";
   "triangle IRE";
   "summit   X";
   "segment    YZ";
   "vertex A       3. 3. -3.";
   "vertex B       0. 0. -3.";
   "vertex C       0. 6. -3."]
);;
