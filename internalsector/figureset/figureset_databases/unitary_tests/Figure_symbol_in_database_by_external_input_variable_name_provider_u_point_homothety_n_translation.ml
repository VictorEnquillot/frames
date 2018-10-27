open Make_test_v;;

testing "Figure_symbol_in_database_by_external_input_variable_name_provider_v with
    Figure_symbol_in_database_by_external_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_symbol_in_database_by_external_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

open Figure_symbol_in_database_by_external_input_variable_name_provider_v;;

(* Point BC_B *)
let nam_ivn = "Cen_b";;
 
let nam_ivn_ext = External_input_variable_name_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 2 (
(nam_ivn_ext : string ) = 
"Cen_b"
);;

let sof_fig_ext = String_off_in_database_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 3 (
(sof_fig_ext : string ) = 
"BC_B"
);;

let mak_arg_ext = Make_argument_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 4 (
(mak_arg_ext : string ) = 
"figure_point_constructor"
);;

let sym_fig_ext = Figure_symbol_v.make mak_arg_ext sof_fig_ext;;

test_number 5 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "BC_B")))
);;

test_number 6 (
sym_fig_ext = Figure_symbol_in_database_by_external_input_variable_name_provider_v.provide nam_ivn
);;

(* Point T_A *)

let nam_ivn = "Poi_a";;
 
let nam_ivn_ext = External_input_variable_name_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 7 (
(nam_ivn_ext : string ) = 
"Poi_a"
);;

let sof_fig_ext = String_off_in_database_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 8 (
(sof_fig_ext : string ) = 
"T_A"
);;

let mak_arg_ext = Make_argument_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 9 (
(mak_arg_ext : string ) = 
"figure_point_constructor"
);;

let sym_fig_ext = Figure_symbol_v.make mak_arg_ext sof_fig_ext;;

test_number 10 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "T_A")))
);;

test_number 11 (
sym_fig_ext = Figure_symbol_in_database_by_external_input_variable_name_provider_v.provide nam_ivn
);;
