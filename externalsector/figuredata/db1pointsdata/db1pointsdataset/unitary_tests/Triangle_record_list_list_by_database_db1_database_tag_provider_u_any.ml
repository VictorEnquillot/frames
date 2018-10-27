open Make_test_v;;

testing "Triangle_record_list_list_by_database_db1_database_tag_provider_v
   Triangle_record_list_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Triangle_record_list_list_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_cod = "Triangle_record_list_list_by_database_db1_database_tag_provider_u_any.ml";;

let nam_dos = "figureset";;
let sym_dos = Database_entity_symbol_v.make "domainset" nam_dos;;
let soi_dos = Sole_index_v.make 4 [];;
Database_entity_symbol_by_sole_index_register_v.store soi_dos sym_dos;;
let db_tag_dos = Tag_v.make sym_dos soi_dos;;

(* Db_1 *)

let nam_dab = "db1";;
let idx_dab = 1;;
let sym_dab = Database_entity_symbol_v.make "database" nam_dab;;
let soi_dab = Sole_index_v.make idx_dab soi_dos;;
Database_entity_symbol_by_sole_index_register_v.store soi_dab sym_dab;;
let tag_ldb = Tag_v.make sym_dab soi_dab;;

test_number 1 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
(Database_entity_symbol_t.Database "db1", [1])
);;

let rcd_l = Database_record_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
rcd_l
(* : string list *)
=
  ["triangle T";
   "vertex A       1. 1. 0.";
   "vertex B       0. 0. 0.";
   "vertex C       2. 0. 0.";
   "triangle U";
   "vertex A       0. 0. 0.";
   "vertex B       0. 1. 0.";
   "vertex C       1. 0. 0."]
);;

let rcd_tri_ll = Triangle_record_list_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
rcd_tri_ll
(* : string list list *)
=
  [["triangle T";
   "vertex A       1. 1. 0.";
   "vertex B       0. 0. 0.";
    "vertex C       2. 0. 0."];
   ["triangle U";
   "vertex A       0. 0. 0.";
   "vertex B       0. 1. 0.";
    "vertex C       1. 0. 0."]]
);;

