open Make_test_v;;

testing "Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_v with
   Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_u_point_homothety_n_translation_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
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
   ("Con_hom",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_context);
   ("Hom_b_2",
    Input_symbol_t.Input_keyword_symbol
     (Input_keyword_symbol_t.Input_keyword_operator_symbol
       Input_keyword_operator_symbol_t.Input_keyword_operator_constructor));
   ("Tra_bc",
    Input_symbol_t.Input_keyword_symbol
     (Input_keyword_symbol_t.Input_keyword_operator_symbol
       Input_keyword_operator_symbol_t.Input_keyword_operator_constructor));
   ("Seg_bc",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Cen_b",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Poi_a",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Poi_h",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target);
   ("Poi_t",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target)]
);;

let nam_tri_l = 
    Target_n_operator_n_operand_triplet_name_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 3 (
(nam_tri_l : (string * string * string) list ) =
[("Poi_h", "Hom_b_2", "Poi_a"); 
 ("Poi_t", "Tra_bc", "Poi_h")]
);;

open Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_v;;

(* let figure_symbol_target_dependency_list_list fno_inp = *)

let nam_dep_ll =
  Target_dependency_name_list_list_by_input_fullnameoffile_provider_v.provide 
    fno_inp;;

test_number 4 (
(nam_dep_ll : string list list ) = 
[["Poi_t"; "Poi_h"; "Poi_a"]]
);;

let nam_top_tar_l = List.map List.hd nam_dep_ll;;

test_number 5 (
(nam_top_tar_l : string list ) = ["Poi_t"]
);;

let sym_fig_tar_ll = List.map
    Figure_symbol_dependency_list_by_input_variable_name_provider_v.provide 
    nam_top_tar_l;;

test_number 6 (
(sym_fig_tar_ll : Figure_symbol_t.figure_symbol list list ) =
  [[Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_t")));
    Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h")));
    Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]]
);;

(* let figure_symbol_top_external_dependency_list_list fno_inp = *)

let nam_top_ext_l =
    Top_external_list_by_input_fullnameoffile_provider_v.provide 
      fno_inp;;

test_number 7 (
(nam_top_ext_l : string list ) = 
["Seg_bc"; "Cen_b"]
);;

let sym_fig_ext_l = List.map
      Figure_symbol_in_inputfile_by_external_input_variable_name_provider_v.provide
      nam_top_ext_l;;

test_number 8 (
(sym_fig_ext_l : Figure_symbol_t.figure_symbol list) =
  [Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_segment_symbol
        (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")));
   Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Cen_b")))]
);;

let sym_fig_tar_ll = figure_symbol_target_dependency_list_list fno_inp;;
let sym_fig_ext_ll = figure_symbol_top_external_dependency_list_list fno_inp;;

let sym_fig_ll = sym_fig_tar_ll @ sym_fig_ext_ll;;

test_number 9 (
( sym_fig_ll : Figure_symbol_t.figure_symbol list list ) =
  [[Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_t")));
    Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h")));
    Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))];
   [Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_segment_symbol
         (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")))];
   [Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Cen_b")))]]
);;

let sym_fig_ll = Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 10 (
sym_fig_ll = Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_v.provide fno_inp
);;
