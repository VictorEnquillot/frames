open Make_test_v;;

testing "Nameoffile_list_by_database_db1_database_tag_provider_v with
   Nameoffile_list_by_database_db1_database_tag_provider_u_any.ml"
;;

(* toplevel 
   #use "Nameoffile_list_by_database_db1_database_tag_provider_u_any.ml";; 

*)

(* Deleting Registers *)
 
 
(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let ndi_ldb_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
ndi_ldb_l 
(* : String.t list *)
=
  ["/keep/sources/ocaml_top/setup/frames/databaseset/database_db1";
   "/keep/sources/ocaml_top/setup/frames/databaseset/database_db2";
   "/keep/sources/ocaml_top/setup/frames/databaseset/database_pdb"]
);;

let sym_ldb = Database_db1_database_symbol_v.make "database_db1_database_constructor" "db1";;
let tag_ldb = Tag_v.make sym_ldb [1; 3];; (* from ../ *)

test_number 2 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

let nof_l = Nameoffile_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;
let nof_fil_l = List.filter (fun s -> 
  (String.length s > 3) && 
  (
  (String_v.last_n_characters_of_count_of_string 4 s = ".db1") ||
  (String_v.last_n_characters_of_count_of_string 4 s = ".db2") ||
  (String_v.last_n_characters_of_count_of_string 4 s = ".pdb") 
  ) 
			    ) nof_l;;
let nof_sor_l = List.sort String.compare nof_fil_l;;

test_number 3 (
nof_sor_l
(* : string list *)
  =
["segment_bc.db1";
 "segment_s.db1";
 "triangle_isoacute.db1";
 "triangle_isoobtuse.db1";
 "triangle_isoright.db1";
 "vertex_a.db1"
]
);;
   
