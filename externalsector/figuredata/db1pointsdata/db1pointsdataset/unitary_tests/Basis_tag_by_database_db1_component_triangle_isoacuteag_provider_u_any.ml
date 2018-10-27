open Make_test_v;;

testing "Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_v
   Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* toplevel 
   #use "Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

*)

let nam_cod = "Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

let nam_dir_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
nam_dir_dba_l
(* : String.t list *)
  =
["/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db1";
 "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db_2"]
);;

let dta_dba_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_2 *)

let nam_dba = "db_2";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dba) dta_dba_l;;

test_number 2 ( 
tag_ldb
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_database "db_2"),
   [2])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
dta_tri_l 
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_entity_db_2_symbol
     (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "ire"),
    [1; 2]);
   (Database_entity_symbol_t.Database_entity_db_2_symbol
     (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "iso"),
    [2; 2])]
);;

(* 1 Triangle ire *)

let nam_tri = "ire";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 4 ( 
dta_tri
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
 (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "ire"),
   [1; 2])
);;

let tag_bas = Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 5 (
tag_bas
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag list *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "ire"),
   [2; 1; 2])
);;

(* 2 Triangle iso *)

let nam_tri = "iso";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 6 ( 
dta_tri
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "iso"),
   [2; 2])
);;

let tag_bas = Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 7 (
tag_bas
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag list *)
=
 (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "iso"),
   [2; 2; 2])
);;

