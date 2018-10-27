open Make_test_v;;

testing "Database_db1_component_tag_list_by_database_db1_component_triangle_isoacuteag_provider_v with
   Database_db1_component_tag_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_component_tag_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";; 

*)


let nam_cod = "Database_db1_component_tag_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

let nam_dir_dab_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
nam_dir_dab_l
(* : String.t list *)
  =
["/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db1";
 "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db_2"]
);;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_1 *)

let nam_dab = "db1";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dab) dta_dab_l;;

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
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "T")),
    [1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "u")),
    [2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "v")),
    [3; 1])]
);;

(* 1 Triangle T *)

let nam_tri = "t";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 4 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Database_db1_group_symbol
      (Database_db1_group_symbol_t.Db1_triangle "T")),
   [1; 1])
);;

let db_tag_fig_l = Group_bsu_tag_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 5 (
db_tag_fig_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
=
   Database_entity_symbol_t.database_entity_symbol Tag_t.tag list =
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_vertex "A")),
    [1; 1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_vertex "B")),
    [2; 1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_vertex "C")),
    [3; 1; 1])]
);;

(* 2 Triangle U *)

let nam_tri = "u";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 6 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "u"),
   [2; 1])
);;

let db_tag_fig_l = Group_bsu_tag_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 7 (
db_tag_fig_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "A"),
    [1; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "B"),
    [2; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "C"),
    [3; 2; 1])]
);;

(* 3 Triangle V *)

let nam_tri = "v";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 8 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "v"),
   [3; 1])
);;

let db_tag_fig_l = Group_bsu_tag_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 9 (
db_tag_fig_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "A"),
    [1; 3; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "B"),
    [2; 3; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "C"),
    [3; 3; 1])]
);;

