open Make_test_v;;

testing "Database_entity_filename_list_by_database_db1_database_tag_provider_v
   Database_entity_filename_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_entity_filename_list_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_cod = "Database_entity_filename_list_by_database_db1_database_tag_provider_u_any.ml";;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
dta_dab_l 
(* : Db_tag_t.db_tag list *)
  =
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"), [1]);
   (Database_entity_symbol_t.Database_entity_db_2_symbol
     (Database_entity_db_2_symbol_t.Database_entity_db_2_database "db_2"), [2])]
);;

(* 1 Database db1 *)

let idx_dab = 1;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 2 (
tag_ldb 
(* : Db_tag_t.db_tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"),   [1])
);;

let fin_ent_l = Database_entity_filename_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
fin_ent_l 
(* : Filename_p.filename list *)
 =
[
 Filename_p.filename "./triangle_isoacute.db1"; 
 Filename_p.filename "./triangle_isoright.db1";
 Filename_p.filename "./triangle_isoobtuse.db1";
 Filename_p.filename "./segment_bc.db1"; 
 Filename_p.filename "./vertex_a.db1"
]
);;

(* 2 Database db_2 *)

let idx_dab = 2;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 4 (
tag_ldb 
(* : Db_tag_t.db_tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_database "db_2"),   [2])
);;

let fin_ent_l = Database_entity_filename_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 5 (
fin_ent_l 
(* : Filename_p.filename list *)
 =
[
 Filename_p.filename "./triangle_ire.db_2"; 
 Filename_p.filename "./triangle_iso.db_2";
]
);;

