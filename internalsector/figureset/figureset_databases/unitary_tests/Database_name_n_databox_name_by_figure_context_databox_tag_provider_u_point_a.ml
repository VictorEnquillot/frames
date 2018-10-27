open Make_test_v;;

testing "Database_name_n_databox_name_by_figure_context_databox_tag_provider_v with
    Database_name_n_databox_name_by_figure_context_databox_tag_provider_u_point_a_debug.ml";;

(* Deleting Registers *)

(* Tracing *)

Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* Debuging *)


(* toplevel 
   #use "Database_name_n_databox_name_by_figure_context_databox_tag_provider_u_point_a_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument tag_fbo) *)

open Database_name_n_databox_name_by_figure_context_databox_tag_provider_v;;
  
let tag_fbo = 
  Figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo);;

test_number 1 (
( tag_fbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "point_a",
   [1; 1; 8])
);;

let (sym_fbo, soi_fbo) = tag_fbo;;

test_number 2 (
(soi_fbo : Sole_index_t.sole_index ) = 
[1; 1; 8]
);;

let nam_dbo = Figure_context_databox_symbol_v.string_off sym_fbo;;

test_number 3 (
(nam_dbo : string ) = 
"point_a"
);;

let idx_dba = Sole_index_v.father_index_off_sole_index soi_fbo;;

test_number 4 (
(idx_dba : int ) =
 1
);;

let nam_dba = Context_database_name_by_context_database_index_provider_v.provide idx_dba;;

test_number 5 (
(nam_dba : String.t ) = 
"db1figure"
);;

