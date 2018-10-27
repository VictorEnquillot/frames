open Make_test_v;;

testing "Cluster_name_n_record_list_list_by_database_db1_component_triangle_isoacuteag_provider_v
   Cluster_name_n_record_list_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* toplevel 
   #use "Cluster_name_n_record_list_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

*)

let nam_cod = "Cluster_name_n_record_list_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

(* 1 Triangle T *)

let nam_tri = "t";;
let tag_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) tag_tri_l;;

test_number 2 ( 
tag_tri
(* : Database_db1_symbol_t.database_db1_database_symbol * Sole_index_t.sole_index *)
=
  (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_triangle
      "T"),
   [1])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide tag_tri;;

test_number 3 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
=
 [("triangle", ["triangle T"]);
   ("vertex",
    ["vertex A       1. 2. -2."; 
     "vertex B       0. 0. -2.";
     "vertex C       2. 0. -2."])]
);;

(* 2 Triangle u *)

let nam_tri = "u";;
let tag_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) tag_tri_l;;

test_number 4 ( 
tag_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_triangle
      "u"),
   [2])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide tag_tri;;

test_number 5 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
=
[("triangle", ["triangle U"]);
 ("vertex",
  ["vertex A       0. 0. -3."; 
   "vertex B       0. 1. -3.";
   "vertex C       1. 0. -3."])]
);;

(* 2 Triangle v *)

let nam_tri = "v";;
let tag_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) tag_tri_l;;

test_number 6 ( 
tag_tri
(* :  Database_entity_symbol_t.database_entity_symbol * Sole_index_t.sole_index *)
=
  (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_triangle
      "v"),
   [3])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide tag_tri;;

test_number 7 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
=
  [("triangle", ["triangle V"]);
   ("vertex",
    ["vertex A       1. 0.5 -2."; 
     "vertex B       0. 0. -2.";
     "vertex C       2. 0. -2."])]
);;

