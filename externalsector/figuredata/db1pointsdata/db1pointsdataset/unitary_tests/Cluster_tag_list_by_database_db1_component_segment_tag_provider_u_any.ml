open Make_test_v;;

testing "Cluster_tag_list_by_database_db1_component_segment_tag_provider_v
   Cluster_tag_list_by_database_db1_component_segment_tag_provider_u_any.ml";;

(* toplevel 
   #use "Cluster_tag_list_by_database_db1_component_segment_tag_provider_u_any.ml";;

*)

let nam_cod = "Cluster_tag_list_by_database_db1_component_segment_tag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_com_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

let tag_vec_l = Segment_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

(* 1 Segment bc *)

let nam_vec = "bc";;
let tag_vec = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_vec) tag_vec_l;;

test_number 2 ( 
tag_vec
(* : Database_db1_symbol_t.database_db1_database_symbol * Sole_index_t.sole_index *)
=
  (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_segment
      "bc"),
   [4])
);;

let tag_clu_l = Cluster_tag_list_by_database_db1_component_segment_tag_provider_v.provide tag_vec;;

test_number 3 (
tag_clu_l
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag list *)
=
    [1; 4]);
    [2; 4])]
);;

