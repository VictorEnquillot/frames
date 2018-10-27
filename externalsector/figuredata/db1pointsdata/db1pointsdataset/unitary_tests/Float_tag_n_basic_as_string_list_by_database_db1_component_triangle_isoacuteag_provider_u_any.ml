open Make_test_v;;

testing "Float_tag_n_basic_as_string_list_by_database_db1_component_triangle_isoacuteag_provider_v
   Float_tag_n_basic_as_string_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* toplevel 
   #use "Float_tag_n_basic_as_string_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

*)

let nam_cod = "Float_tag_n_basic_as_string_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

let nam_dir_dab = Tools_dcfig_v.nameofdatabasesdirectory ();;

test_number 1 (
 nam_dir_dab
(* : string *)
=
  "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/"
);;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_1 *)

let idx_dab = 1;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

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
    [2; 1])]
);;

(* 1 Triangle T *)

let idx_tri = 1;;
let dta_tri = List.nth dta_tri_l (idx_tri-1);;

test_number 4 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "T"),
   [1; 1])
);;

let dta_flo_l = Float_tag_n_basic_as_string_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_ver;;

test_number 5 (
dta_flo_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
[]
);;


(* 2 Triangle U *)

let idx_tri = 2;;
let dta_tri = List.nth dta_tri_l (idx_tri-1);;

test_number 6 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "u"),
   [2; 1])
);;

let dta_flo_l = Float_tag_n_basic_as_string_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_ver;;

test_number 7 (
dta_flo_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
    [1; 1; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
    [2; 1; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
    [3; 1; 2; 1])]
);;

