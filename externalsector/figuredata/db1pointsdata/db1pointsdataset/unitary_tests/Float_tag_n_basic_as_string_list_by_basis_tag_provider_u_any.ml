open Make_test_v;;

testing "Float_tag_n_basic_as_string_list_by_basis_tag_provider_v
   Float_tag_n_basic_as_string_list_by_basis_tag_provider_u_any.ml";;

(* toplevel 
   #use "Float_tag_n_basic_as_string_list_by_basis_tag_provider_u_any.ml";;

*)

let nam_cod = "Float_tag_n_basic_as_string_list_by_basis_tag_provider_u_any.ml";;

let nam_dir_dab = Tools_dcfig_v.nameofdatabasesdirectory ();;

test_number 1 (
 nam_dir_dab
(* : string *)
=
  "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/"
);;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_2 *)

let idx_dab = 2;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

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

let idx_tri = 1;;
let dta_tri = List.nth dta_tri_l (idx_tri-1);;

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

let idx_tri = 2;;
let dta_tri = List.nth dta_tri_l (idx_tri-1);;

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
 [2; 2; 2]);
);;

let sym_den = Database_entity_symbol_by_sole_index_provider_v.provide [2; 2; 2];;

let dta_n_val_flo_l = Float_tag_n_basic_as_string_list_by_basis_tag_provider_v.provide tag_bas;;

test_number 8 (
dta_n_val_flo_l 
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag list *)
=
  [((Database_entity_symbol_t.Database_entity_db_2_symbol
      Database_entity_db_2_symbol_t.Database_entity_db_2_float,
     [1; 2; 2; 2]),
    1.);
   ((Database_entity_symbol_t.Database_entity_db_2_symbol
      Database_entity_db_2_symbol_t.Database_entity_db_2_float,
     [2; 2; 2; 2]),
    1.);
   ((Database_entity_symbol_t.Database_entity_db_2_symbol
      Database_entity_db_2_symbol_t.Database_entity_db_2_float,
     [3; 2; 2; 2]),
    1.);

   ((Database_entity_symbol_t.Database_entity_db_2_symbol
      Database_entity_db_2_symbol_t.Database_entity_db_2_float,
     [4; 2; 2; 2]),
    1.);
   ((Database_entity_symbol_t.Database_entity_db_2_symbol
      Database_entity_db_2_symbol_t.Database_entity_db_2_float,
     [5; 2; 2; 2]),
    4.);
   ((Database_entity_symbol_t.Database_entity_db_2_symbol
      Database_entity_db_2_symbol_t.Database_entity_db_2_float,
     [6; 2; 2; 2]),
    1.)]
);;

