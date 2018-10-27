open Make_test_v;;

testing "Float_value_by_float_tag_provider_v
   Float_value_by_float_tag_provider_u_any.ml";;

(* toplevel 
   #use "Float_value_by_float_tag_provider_u_any.ml";;

*)

let nam_cod = "Float_value_by_float_tag_provider_u_any.ml";;

let nam_dir_dba = Tools_dcfig_v.nameofdatabasesdirectory ();;

test_number 1 (
 nam_dir_dba
(* : string *)
=
  "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/"
);;

let dta_dba_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_1 *)

let nam_dba = "db1";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dba) dta_dba_l;;

test_number 2 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"),
   [1])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
dta_tri_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_triangle "T"),
    [1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_triangle "u"),
    [2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_triangle "v"),
    [3; 1])]
);;

let dta_flo_l =
  [(Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
    [1; 1; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
    [2; 1; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
    [3; 1; 2; 1])]
;;

let flo = Float_value_by_float_tag_provider_v.provide (List.nth dta_flo_l 0);;

(* let ent_l = Register_v.entry_list Database_entity_symbol_by_sole_index_register_v.register;; *)
(* let dta_flo_l = Doublet_list_v.filter_if_left (fun s -> (List.length s = 5) ) ent_l;;  *)
(* let dum = Float_value_by_float_tag_register_v.dump ();;     *)

