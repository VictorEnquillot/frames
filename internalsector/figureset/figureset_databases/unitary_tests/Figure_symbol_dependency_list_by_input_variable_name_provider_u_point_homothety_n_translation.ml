open Make_test_v;;

testing "Figure_symbol_dependency_list_by_input_variable_name_provider_v with
   Figure_symbol_dependency_list_by_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_symbol_dependency_list_by_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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

open Figure_symbol_dependency_list_by_input_variable_name_provider_v;;

(* Poi_t *)

let nam_ivn_tar = "Poi_t";;
let kin_ivn_tar = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn_tar;;

test_number 4 (
(kin_ivn_tar : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

let boo = Input_symbol_v.is_input_keyword_target kin_ivn_tar;;

test_number 5 (
(boo : bool ) = 
true
);;

let sym_fig_dep_l = provide nam_ivn_tar;;

test_number 6 (
(sym_fig_dep_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_field_symbol
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
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]
);;

(* Recursion let figure_symbol_dependency_list_of_triplet_name_list_of_target_input_variable_name nam_tri_l nam_ivn_tar = *)

(* Poi_a step *)

let nam_ivn = "Poi_a";;

test_number 7 (
( nam_ivn : string)  = 
"Poi_a"
);;

let boo = is_target_input_variable_name_of_input_variable_name nam_ivn;;

test_number 8 (
(boo : bool) =
false
);;

let sym_fig_ext = 
	  Figure_symbol_in_inputfile_by_external_input_variable_name_provider_v.provide
	    nam_ivn;;

test_number 9 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))
);;

let sym_fig_l = [sym_fig_ext];;

(* Poi_h step *)

let nam_ivn = "Poi_h";;

test_number 10 (
( nam_ivn : string)  = 
"Poi_h"
);;

let boo = is_target_input_variable_name_of_input_variable_name nam_ivn;;

test_number 11 (
(boo : bool) =
true
);;

let nam_ivn_opr = 
      Operator_name_by_target_input_variable_name_provider_v.provide 
	nam_ivn;;

test_number 12 (
(nam_ivn_opr : string ) =
 "Hom_b_2"
);;

let sym_opr =
      operator_symbol_of_operator_input_variable_name
        nam_ivn_opr    ;;


test_number 13 ( 
(sym_opr : Operator_symbol_t.operator_symbol ) =
  Operator_symbol_t.Operator_body_symbol
   (Operator_body_symbol_t.Operator_creation_symbol
     (Operator_creation_symbol_t.Operator_endomorphism_symbol
       (Operator_endomorphism_symbol_t.Operator_transformation_symbol
         (Operator_transformation_symbol_t.Operator_transformation_homothety
           "Hom_b_2"))))
);;

let nam_ivn_opd = 
      Operand_name_by_target_input_variable_name_provider_v.provide
	nam_ivn;;

test_number 14 (
(nam_ivn_opd : string ) = 
"Poi_a"
);;

let sym_fig_opd = List.hd sym_fig_l;;

test_number 15 (
( sym_fig_opd : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))
);;

let sym_fig_cur =
  figure_symbol_target_of_operator_symbol_of_figure_symbol_operand_of_target_string_off
    sym_opr 
    sym_fig_opd
    nam_ivn;;

test_number 16 (
( sym_fig_cur : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_h")))
);;

let sym_fig_l = sym_fig_cur :: sym_fig_l;;

test_number 17 (
(sym_fig_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_h")));
   Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]
);;

(* Poi_t step *)

let nam_ivn = "Poi_t";;

test_number 18 (
( nam_ivn : string)  = 
"Poi_t"
);;

let boo = is_target_input_variable_name_of_input_variable_name nam_ivn;;

test_number 19 (
(boo : bool) =
true
);;

let nam_ivn_opr = 
      Operator_name_by_target_input_variable_name_provider_v.provide 
	nam_ivn;;

test_number 20 (
(nam_ivn_opr : string ) =
 "Tra_bc"
);;

let sym_opr =
      operator_symbol_of_operator_input_variable_name
        nam_ivn_opr    ;;


test_number 21 ( 
(sym_opr : Operator_symbol_t.operator_symbol ) =
  Operator_symbol_t.Operator_body_symbol
   (Operator_body_symbol_t.Operator_creation_symbol
     (Operator_creation_symbol_t.Operator_endomorphism_symbol
       (Operator_endomorphism_symbol_t.Operator_transformation_symbol
         (Operator_transformation_symbol_t.Operator_transformation_translation
           "Tra_bc"))))
);;

let nam_ivn_opd = 
      Operand_name_by_target_input_variable_name_provider_v.provide
	nam_ivn;;

test_number 22 (
(nam_ivn_opd : string ) = 
"Poi_h"
);;

let sym_fig_opd = List.hd sym_fig_l;;

test_number 23 (
( sym_fig_opd : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_h")))
);;

let sym_fig_cur =
  figure_symbol_target_of_operator_symbol_of_figure_symbol_operand_of_target_string_off
    sym_opr 
    sym_fig_opd
    nam_ivn;;

test_number 24 (
( sym_fig_cur : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_t")))
);;

let sym_fig_l = sym_fig_cur :: sym_fig_l;;

test_number 25 (
(sym_fig_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_field_symbol
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
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]
);;

test_number 26 (
sym_fig_l = figure_symbol_dependency_list_of_triplet_name_list_of_target_input_variable_name nam_tri_l nam_ivn_tar
);;

test_number 27 (
sym_fig_l = Figure_symbol_dependency_list_by_input_variable_name_provider_v.provide nam_ivn_tar
);;

let sym_fig_l = Figure_symbol_dependency_list_by_input_variable_name_provider_v.provide "Poi_h";;

test_number 28 (
(sym_fig_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_h")));
   Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]
);;

let sym_fig_ll = Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 29 (
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
