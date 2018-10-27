open Make_test_v;;

testing "Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v
   Database_db1_tag_all_list_by_database_db1_domain_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_tag_all_list_by_database_db1_domain_tag_provider_u_any.ml";;

*)

let nam_cod = "Database_db1_tag_all_list_by_database_db1_domain_tag_provider_u_any.ml";;

let nam_dos = "figureset";;
let sym_dos = Database_entity_symbol_v.make "domainset" nam_dos;;
let soi_dos = Sole_index_v.make 4 [];;
Database_entity_symbol_by_sole_index_register_v.store soi_dos sym_dos;;
let db_tag_dos = Tag_v.make sym_dos soi_dos;;

test_number 1 ( 
db_tag_dos
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
 (Database_entity_symbol_t.Database "figureset", [4])

);;

let nam_dir = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.nameofdirectory_of_database_symbol sym_dos;;
let nam_dir_dab = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.nameofdatabasesdirectory_of_database_symbol sym_dos;;

test_number 2 (
 nam_dir_dab
(* : string *)
=
  "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/alien_db/"
);;

let nam_fil_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.nameoffile_list_in_alien_db_of_database_symbol sym_dos;;
let sym_dab_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.database_symbol_list_of_database_symbol sym_dos;;

test_number 3 (
sym_dab_l
(* : Database_entity_symbol_t.db1_symbol list *)
=
  [
   Database_entity_symbol_t.Database "db1"; 
   Database_entity_symbol_t.Database "db_2";
 ]
);;

let dta_dab_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide db_tag_dos;;

test_number 4 (
 dta_dab_l 
(* : Db_tag_t.db_tag list *)
  =
[(Database_entity_symbol_t.Database "db1", [1]);
 (Database_entity_symbol_t.Database "db_2", [2])]
);;
