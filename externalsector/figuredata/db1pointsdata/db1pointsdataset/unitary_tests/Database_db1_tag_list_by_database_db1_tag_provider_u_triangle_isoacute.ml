open Make_test_v;;

testing "Son_database_db1_tag_list_by_father_database_db1_tag_provider_v with
   Database_db1_tag_list_by_database_db1_tag_provider_u_triangle_isoacute.ml";;

(* toplevel 
   #use "Database_db1_tag_list_by_database_db1_tag_provider_u_triangle_isoacute.ml";;

*)


Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_dom = "figure";;
let nof = "../triangle_isoacute.db1";;

let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Figure, [3])
);;

let tag_eld = Database_db1_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_eld 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

let tag_ent = Tag_v.map_entity Database_db1_symbol_v.database_db1_symbol_of_database_db1_database_symbol tag_eld;;
let tag_ent_l = Son_database_db1_tag_list_by_father_database_db1_tag_provider_v.provide tag_ent;;


