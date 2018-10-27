open Make_test_v;;

testing "Triangle_filename_by_database_db1_component_triangle_isoacuteag_provider_v
   Triangle_filename_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* toplevel 
   #use "Triangle_filename_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

*)

let nam_cod = "Triangle_filename_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;
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

let fna_tri = Triangle_filename_by_database_db1_component_triangle_isoacuteag_provider_v.provide tag_tri;;

test_number 3 (
fna_tri 
(* : Filename_p.filename list *)
=
  Filename_p.filename "./triangle_isoacute.db1"
);;
