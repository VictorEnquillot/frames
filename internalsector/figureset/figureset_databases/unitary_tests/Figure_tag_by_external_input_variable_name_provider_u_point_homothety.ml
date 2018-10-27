open Make_test_v;;

testing "Figure_tag_by_external_input_variable_name_provider_v with
    Figure_tag_by_external_input_variable_name_provider_u_point_homothety_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;









(* Tracing *)

Parameters_general_register_v.store_force  "trace-build" "false";;
Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* toplevel 
   #use "Figure_tag_by_external_input_variable_name_provider_u_point_homothety_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"
);;


let nam_ivn = "Cen_b";;

let con_var = Context_name_by_external_input_variable_name_provider_v.provide nam_ivn;;

test_number 2 (
(con_var : string ) = 
"Con_db1"
);;

let nam_dba = Database_name_by_context_input_variable_name_provider_v.provide con_var;;

test_number 3 (
(nam_dba : string ) = 
"db1"
);;

let tag_ecr = Figure_createdby_tag_by_database_name_provider_v.provide nam_dba;;

test_number 4 (
(tag_ecr : Figure_createdby_symbol_t.figure_createdby_symbol Tag_t.tag ) =
  (Figure_createdby_symbol_t.Figure_database "db1", [1; 6])
);;

let tag_fig_bc_b = Figure_tag_by_external_input_variable_name_provider_v.provide nam_ivn;;

test_number 5 (
(tag_fig_bc_b : Figure_tag_t.figure_tag ) =
  (Figure_symbol_t.Figure_field_fence_symbol
    (Figure_field_fence_symbol_t.Figure_point_symbol
      (Figure_point_symbol_t.Figure_point_constructor "BC_B")),
   [1; 4; 1; 6])
);;

