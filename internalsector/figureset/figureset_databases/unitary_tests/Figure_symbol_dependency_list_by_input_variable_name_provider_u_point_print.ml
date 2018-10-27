open Make_test_v;;

testing "Figure_symbol_dependency_list_by_input_variable_name_provider_v with
   Figure_symbol_dependency_list_by_input_variable_name_provider_u_point_print_debug.ml";;

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
   #use "Figure_symbol_dependency_list_by_input_variable_name_provider_u_point_print_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_print.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print.inp"
);;

let sym_inp_t = 
  Input_symbol_tree_by_input_fullnameoffile_provider_v.provide 
    fno_inp;;

let nam_n_kin_l = Input_variable_name_n_kind_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(nam_n_kin_l :
  (string, Input_symbol_t.input_symbol) Doublet_t.doublet list ) =
  [("Con_db1",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_context);
   ("Poi_a",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external)]
);;

open Figure_symbol_dependency_list_by_input_variable_name_provider_v;;

(* let figure_symbol_target_dependency_list_list fno_inp = *)

let nam_tri_l = 
    Target_n_operator_n_operand_triplet_name_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 3 (
(nam_tri_l : (string * string * string) list ) =
[]
);;

(* Poi_a *)

let nam_ivn = "Poi_a";;
let kin_ivn = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 4 (
(kin_ivn : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_external
);;

let boo = Input_symbol_v.is_input_keyword_external kin_ivn;;

test_number 5 (
(boo : bool ) = 
true
);;

let sym_fig_ext = 
	  Figure_symbol_in_inputfile_by_external_input_variable_name_provider_v.provide
	    nam_ivn;;

test_number 6 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))
);;

let sym_fig_dep_l = [sym_fig_ext];;

test_number 7 (
(sym_fig_dep_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]
);;

test_number 8 (
sym_fig_dep_l = provide nam_ivn
);;
