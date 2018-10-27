open Make_test_v;;

testing "Database_filename_by_database_db1_database_tag_provider_v
   Database_filename_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_filename_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_cod = "Database_filename_by_database_db1_database_tag_provider_u_any.ml";;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

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

test_number 2 (
fin
(* : Filename_p.filename *) 
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/alien_db/db1/triangles.db1"
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

test_number 4 (
fin
(* : Filename_p.filename *) 
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/alien_db/db_2/triangles.db_2"
);;

