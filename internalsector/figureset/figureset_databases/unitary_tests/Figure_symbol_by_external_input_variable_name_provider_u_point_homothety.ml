open Make_test_v;;

testing "Figure_symbol_by_external_input_variable_name_provider_v with
    Figure_symbol_by_external_input_variable_name_provider_u_point_homothety_debug.ml";;

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
   #use "Figure_symbol_by_external_input_variable_name_provider_u_point_homothety_debug.ml";;

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

open Figure_symbol_by_external_input_variable_name_provider_v;;

let nam_ivn = "Cen_b";;
 
let sof_fig_ext = Figure_string_off_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 2 (
(sof_fig_ext : string ) = 
"BC_B"
);;

let nam_ivn_ext = External_input_variable_name_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 3 (
(nam_ivn_ext : string ) = 
"Cen_b"
);;

let mak_arg_ext = Make_argument_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 4 (
(mak_arg_ext : string ) = 
"figure_point_constructor"
);;


let sym_fig_ext = Figure_symbol_v.make mak_arg_ext sof_fig_ext;;

test_number 5 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_fence_symbol
   (Figure_field_fence_symbol_t.Figure_point_symbol
     (Figure_point_symbol_t.Figure_point_constructor "BC_B"))
);;

let sym_fig_ext = Figure_symbol_by_external_input_variable_name_provider_v.provide nam_ivn;;

test_number 6 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_fence_symbol
   (Figure_field_fence_symbol_t.Figure_point_symbol
     (Figure_point_symbol_t.Figure_point_constructor "BC_B"))
);;
