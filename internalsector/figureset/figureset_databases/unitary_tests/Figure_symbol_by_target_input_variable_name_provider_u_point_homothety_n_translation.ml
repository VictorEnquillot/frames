open Make_test_v;;

testing "Figure_symbol_by_target_input_variable_name_provider_v with
    Figure_symbol_by_target_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_symbol_by_target_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

open Figure_symbol_by_target_input_variable_name_provider_v;;

(* Poi_h *) 

let nam_ivn_tar = "Poi_h";;

let nam_tri_l = 
    Target_n_operator_n_operand_triplet_name_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 2 (
(nam_tri_l : (string * string * string) list ) =
  [("Poi_h", "Hom_b_2", "Poi_a"); 
   ("Poi_t", "Tra_bc", "Poi_h")]
);;

let (nam_tar, nam_opr, nam_opd) = Triplet_list_v.find_if_left (fun t -> t = nam_ivn_tar) 
      nam_tri_l;;


let sym_fig_dep_l =  
  Figure_symbol_dependency_list_by_input_variable_name_provider_v.provide
    nam_ivn_tar;;

test_number 3 (
(sym_fig_dep_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_h")));
   Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]
);;

let sym_fig = List_v.only_element_of_predicate_off_list 
    (fun s -> Figure_symbol_v.string_off s = nam_ivn_tar)
    sym_fig_dep_l;;

test_number 4 (
(sym_fig : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_h")))
);;

(* Poi_t *) 

let nam_ivn_tar = "Poi_t";;

let sym_fig_dep_l =  
  Figure_symbol_dependency_list_by_input_variable_name_provider_v.provide
    nam_ivn_tar;;

test_number 5 (
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

let sym_fig = List_v.only_element_of_predicate_off_list 
    (fun s -> Figure_symbol_v.string_off s = nam_ivn_tar)
    sym_fig_dep_l;;

test_number 6 (
(sym_fig : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_t")))
);;
