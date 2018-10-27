open Make_test_v;;

testing "Float_tag_n_basic_as_string_list_by_database_db1_database_tag_provider_v
   Float_tag_n_basic_as_string_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Float_tag_n_basic_as_string_list_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_cod = "Float_tag_n_basic_as_string_list_by_database_db1_database_tag_provider_u_any.ml";;

let nam_dos = "figureset";;
let db_tag_dos = Database_entity_symbol_by_sole_index_provider_v.domainset_tag_of_domainset_name nam_dos;;
let sym_dos = Tag_v.symbol_off_tag db_tag_dos;;

let nam_dir_dab = Local_database_tag_by_unit_provider_v.nameofdatabasesdirectory_of_domainset_symbol sym_dos;;

test_number 1 (
 nam_dir_dab
(* : string *)
=
  "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/alien_db/"
);;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide db_tag_dos;;

(* 1 Database Db_1 *)

let idx_dab = 1;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 2 ( 
tag_ldb
(* : Db_tag_t.db_tag *)
=
(Database_entity_symbol_t.Database "db1", [1])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
dta_tri_l 
(* : Db_tag_t.db_tag list *)
=
  [(Database_entity_symbol_t.Triangle "T", [1; 1]);
   (Database_entity_symbol_t.Triangle "u", [2; 1])]
);;

let db_tag_flo_l = Float_tag_n_basic_as_string_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 4 (
db_tag_flo_l
(* : Database_entity_symbol_t.alien_database_entity_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Float "1.", [1; 1; 1; 1]);
   (Database_entity_symbol_t.Float "1.", [2; 1; 1; 1]);
   (Database_entity_symbol_t.Float "-2.", [3; 1; 1; 1]);
   (Database_entity_symbol_t.Float "0.", [1; 2; 1; 1]);
   (Database_entity_symbol_t.Float "0.", [2; 2; 1; 1]);
   (Database_entity_symbol_t.Float "-2.", [3; 2; 1; 1]);
   (Database_entity_symbol_t.Float "2.", [1; 3; 1; 1]);
   (Database_entity_symbol_t.Float "0.", [2; 3; 1; 1]);
   (Database_entity_symbol_t.Float "-2.", [3; 3; 1; 1]);

   (Database_entity_symbol_t.Float "0.", [1; 1; 2; 1]);
   (Database_entity_symbol_t.Float "0.", [2; 1; 2; 1]);
   (Database_entity_symbol_t.Float "-3.", [3; 1; 2; 1]);
   (Database_entity_symbol_t.Float "0.", [1; 2; 2; 1]);
   (Database_entity_symbol_t.Float "1.", [2; 2; 2; 1]);
   (Database_entity_symbol_t.Float "-3.", [3; 2; 2; 1]);
   (Database_entity_symbol_t.Float "1.", [1; 3; 2; 1]);
   (Database_entity_symbol_t.Float "0.", [2; 3; 2; 1]);
   (Database_entity_symbol_t.Float "-3.", [3; 3; 2; 1])]
);;

(* 2 Database Db_2 *)

let idx_dab = 2;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 5 ( 
tag_ldb
(* : Db_tag_t.db_tag *)
=
(Database_entity_symbol_t.Database "db_2", [2])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 6 (
dta_tri_l 
(* : Database_entity_symbol_t.alien_database_entity_symbol Tag_t.tag list *)
 =
  [(Database_entity_symbol_t.Triangle "ire", [1; 2]);
   (Database_entity_symbol_t.Triangle "iso", [2; 2])]
);;

let db_tag_flo_l = Float_tag_n_basic_as_string_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 7 (
db_tag_flo_l
(* : Database_entity_symbol_t.alien_database_entity_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Float "3.", [1; 1; 1; 2]);
   (Database_entity_symbol_t.Float "3.", [2; 1; 1; 2]);
   (Database_entity_symbol_t.Float "-3.", [3; 1; 1; 2]);
   (Database_entity_symbol_t.Float "0.", [1; 2; 1; 2]);
   (Database_entity_symbol_t.Float "0.", [2; 2; 1; 2]);
   (Database_entity_symbol_t.Float "-3.", [3; 2; 1; 2]);
   (Database_entity_symbol_t.Float "0.", [1; 3; 1; 2]);
   (Database_entity_symbol_t.Float "6.", [2; 3; 1; 2]);
   (Database_entity_symbol_t.Float "-3.", [3; 3; 1; 2]);

   (Database_entity_symbol_t.Float "1.", [1; 1; 2; 2]);
   (Database_entity_symbol_t.Float "3.", [2; 1; 2; 2]);
   (Database_entity_symbol_t.Float "1.", [3; 1; 2; 2]);
   (Database_entity_symbol_t.Float "1.", [1; 2; 2; 2]);
   (Database_entity_symbol_t.Float "1.", [2; 2; 2; 2]);
   (Database_entity_symbol_t.Float "1.", [3; 2; 2; 2]);
   (Database_entity_symbol_t.Float "1.", [1; 3; 2; 2]);
   (Database_entity_symbol_t.Float "4.", [2; 3; 2; 2]);
   (Database_entity_symbol_t.Float "1.", [3; 3; 2; 2])]
);;

let dum = Float_tag_n_basic_as_string_list_by_database_db1_tag_register_v.dump ();;
