open Make_test_v;;

testing "Local_database_tag_by_unit_provider_v
   Local_database_tag_by_unit_provider_u_any.ml";;

(* toplevel 
   #use "Local_database_tag_by_unit_provider_u_any.ml";;

*)

let nam_cod = "Local_database_tag_by_unit_provider_u_any.ml";;

let nam_dir_dom = Tools_dcfig_v.nameofdomaindirectory ();;

test_number 1 (
nam_dir_dom
(* : string *)
= 
"/keep/sources/ocaml_top/setup/frames/figureset"
);;

let nam_dir_dab = Tools_dcfig_v.nameofdatabasesdirectory ();;

test_number 2 (
nam_dir_dab 
(* : string *)
=
  "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/"
);;

let nam_fil_l = Tools_dcfig_v.nameoffile_list_in_databasedirectory ();;

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 3 (
 tag_ldb
(* : Database_db1_database_symbol_t.database_db1_database_symbol
  Tag_t.tag *)
  =
(Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;
