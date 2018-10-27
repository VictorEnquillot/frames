open Make_test_v;;

testing "Cluster_tag_list_by_database_db1_component_tag_provider_v
   Cluster_tag_list_by_database_db1_component_tag_provider_u_any.ml";;

(* toplevel 
   #use "Cluster_tag_list_by_database_db1_component_tag_provider_u_any.ml";;

*)

let nam_cod = "Cluster_tag_list_by_database_db1_component_tag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_com_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

(* 1 Triangle T *)

let nam_tri = "t";;
let tag_com = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) tag_com_l;;

test_number 2 ( 
tag_com
(* : Database_db1_symbol_t.database_db1_database_symbol * Sole_index_t.sole_index *)
=
  (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_triangle
      "T"),
   [1])
);;

let tag_clu_l = Cluster_tag_list_by_database_db1_component_tag_provider_v.provide tag_com;;

test_number 3 (
tag_clu_l
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag list *)
=
       "triangle"),
    [1; 1]);
       "vertex"),
    [2; 1])]
);;

(* 2 Triangle u *)

let nam_tri = "u";;
let tag_com = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) tag_com_l;;

test_number 4 ( 
tag_com
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_triangle
      "u"),
   [2])
);;

let tag_clu_l = Cluster_tag_list_by_database_db1_component_tag_provider_v.provide tag_com;;

test_number 5 (
tag_clu_l
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag list *)
=
       "triangle"),
    [1; 2]);
       "vertex"),
    [2; 2])]
);;

(* 2 Triangle v *)

let nam_tri = "v";;
let tag_com = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) tag_com_l;;

test_number 6 ( 
tag_com
(* :  Database_entity_symbol_t.database_entity_symbol * Sole_index_t.sole_index *)
=
   (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_triangle
      "v"),
   [3])
);;

let tag_clu_l = Cluster_tag_list_by_database_db1_component_tag_provider_v.provide tag_com;;

test_number 7 (
tag_clu_l
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag list *)
=
       "triangle"),
    [1; 3]);
       "vertex"),
    [2; 3])]
);;

