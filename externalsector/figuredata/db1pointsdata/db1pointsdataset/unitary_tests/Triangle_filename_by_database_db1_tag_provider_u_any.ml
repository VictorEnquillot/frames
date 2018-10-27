open Make_test_v;;

testing "Triangle_filename_by_database_db1_tag_provider_v
   Triangle_filename_by_database_db1_tag_provider_u_any.ml";;

(* toplevel 
   #use "Triangle_filename_by_database_db1_tag_provider_u_any.ml";;

*)

let nam_cod = "Triangle_filename_by_database_db1_tag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let fna_tri_l = Triangle_filename_by_database_db1_component_triangle_isoacuteag_provider_v.provide tag_ldb;;

test_number 2 (
fna_tri_l 
(* : Filename_p.filename list *)
=
  [Filename_p.filename "./triangle_isoacute.db1"; 
   Filename_p.filename "./triangle_isoright.db1"; 
   Filename_p.filename "./triangle_isoobtuse.db1";
   Filename_p.filename "./segment_bc.db1"; 
   Filename_p.filename "./vertex_a.db1"]
);;
