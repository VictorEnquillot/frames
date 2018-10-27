open Make_test_v;;

testing "Figure_tag_tree_by_input_variable_name_provider_v with
    Figure_tag_by_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_tag_by_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

let tag_fig_t = 
    Figure_tag_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp ;;

let tag_fig_l = Tree_v.node_list_off_tree tag_fig_t;;

test_number 2 (
(tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
 [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
    [6]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_symbol
         (Figure_inputfile_symbol_t.Figure_inputfile_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"))),
    [28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_t"))),
    [1; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
    [1; 1; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
    [1; 1; 1; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_segment_symbol
         (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc"))),
    [2; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Cen_b"))),
    [3; 28; 6])]
);;

open Figure_tag_by_input_variable_name_provider_v;; 
  
(* Target Poi_t *)

let nam_ivn = "Poi_t";;
let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn ;;

test_number 3 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 4 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

(* let figure_tag_of_target_input_variable_name nam_ivn = *)

let sym_fig_tar = 
    Figure_symbol_by_target_input_variable_name_provider_v.provide
      nam_ivn;;

test_number 5 (
(sym_fig_tar : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_t")))
);;

let tag_fig = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> s = sym_fig_tar)
    tag_fig_l;;

test_number 6 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_t"))),
   [1; 28; 6])
);;

let tag_fig_tar = figure_tag_of_target_input_variable_name nam_ivn;;

test_number 7 (
(tag_fig_tar : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_t"))),
   [1; 28; 6])
);;

let tag_fig_tar = provide nam_ivn;;

test_number 8 (
(tag_fig_tar : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_t"))),
   [1; 28; 6])
);;

(* Target Poi_h *)

let nam_ivn = "Poi_h";;
let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn ;;

test_number 9 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 10 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

(* let figure_tag_of_input_variable_name_target nam_ivn = *)

let sym_fig_tar = Figure_symbol_by_target_input_variable_name_provider_v.provide nam_ivn;;

test_number 11 (
(sym_fig_tar : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_h")))
);;

let tag_fig = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> s = sym_fig_tar)
    tag_fig_l;;

test_number 12 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
   [1; 1; 28; 6])
);;

let tag_fig_tar = figure_tag_of_target_input_variable_name nam_ivn;;

test_number 13 (
(tag_fig_tar : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
   [1; 1; 28; 6])
);;

let tag_fig_tar = provide nam_ivn;;

test_number 14 (
(tag_fig_tar : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
   [1; 1; 28; 6])
);;

(* let figure_tag_of_external_input_variable_name nam_ivn = *)

(* External Poi_a *)

let nam_ivn = "Poi_a";;
let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn ;;

test_number 15 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_external
);;

let sym_fig_ext = 
  Figure_symbol_in_inputfile_by_external_input_variable_name_provider_v.provide
    nam_ivn;;

test_number 16 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))
);;

let tag_fig_ext = figure_tag_of_external_input_variable_name nam_ivn;;

test_number 17 (
(tag_fig_ext : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
   [1; 1; 1; 28; 6])
);;

let tag_fig_tar = provide "Poi_a";;

test_number 18 (
(tag_fig_tar : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
   [1; 1; 1; 28; 6])
);;

let tag_fig_tar = provide "Seg_bc";;

test_number 19 (
(tag_fig_tar : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_segment_symbol
        (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc"))),
   [2; 28; 6])
);;
