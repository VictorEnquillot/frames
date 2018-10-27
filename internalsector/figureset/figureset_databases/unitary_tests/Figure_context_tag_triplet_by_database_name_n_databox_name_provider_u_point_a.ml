open Make_test_v;;

testing "Figure_context_tag_triplet_by_database_name_n_databox_name_provider_v with
    Figure_context_tag_triplet_by_database_name_n_databox_name_provider_u_point_a_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* Debugging *)


(* toplevel 
   #use "Figure_context_tag_triplet_by_database_name_n_databox_name_provider_u_point_a_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Figure_context_tag_triplet_by_database_name_n_databox_name_provider_v;;
  
let tag_fcd = Figure_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_fcd : Figure_context_domain_symbol_t.figure_context_domain_symbol Tag_t.tag ) =
  (Figure_context_domain_symbol_t.Figure_context_domain_constructor "figure",
   [8])
);;

let tag_fba = Figure_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fba : Figure_context_database_symbol_t.figure_context_database_symbol Tag_t.tag ) =
  (Figure_context_database_symbol_t.Figure_context_database_constructor
    "db1figure",
   [1; 8])
);;

let tag_fbo = 
  Figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo);;

test_number 3 (
(tag_fbo : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "point_a",
   [1; 1; 8])
);;
  
let tag_fco_t = Triplet_v.make tag_fcd tag_fba tag_fbo;;

test_number 4 (
(tag_fco_t : (Figure_context_domain_symbol_t.figure_context_domain_symbol Tag_t.tag,
	      Figure_context_database_symbol_t.figure_context_database_symbol Tag_t.tag,
	      Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag)
   Triplet_t.triplet ) =
((Figure_context_domain_symbol_t.Figure_context_domain_constructor "figure",
  [8]),
 (Figure_context_database_symbol_t.Figure_context_database_constructor
    "db1figure",
  [1; 8]),
 (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "point_a",
  [1; 1; 8]))
);;

test_number 5 (
tag_fco_t = provide (nam_dba, nam_dbo)
);;
