open Make_test_v;;

testing "Son_database_db1_tag_list_by_father_database_db1_tag_provider_v with
   Database_db1_tag_list_by_database_db1_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_tag_list_by_database_db1_tag_provider_u_any.ml";;

*)


Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Figure, [3])
);;

let tag_eld = Database_db1_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_eld 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

let tag_ent_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_eld;;
let count = List.length tag_ent_l;;

test_number 3 (
count = 54
);;

(* Component Tag *)

let tag_son_l = Son_database_db1_tag_list_by_father_database_db1_tag_provider_v.provide tag_ent;;

