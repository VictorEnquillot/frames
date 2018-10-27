open Make_test_v;;

testing "Figure_symbol_subtree_by_target_input_variable_name_provider_v with
   Figure_symbol_subtree_by_target_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_symbol_subtree_by_target_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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

open Figure_symbol_subtree_by_target_input_variable_name_provider_v;;

let nam_n_kin_ivn_l =
    Input_variable_name_n_kind_list_by_input_fullnameoffile_provider_v.provide 
      fno_inp ;;

let nam_n_kin_ivn_tar_l = Doublet_list_v.filter_if_right Input_symbol_v.is_input_keyword_target nam_n_kin_ivn_l;;
 
test_number 3 (
(nam_n_kin_ivn_tar_l :
   (string, Input_symbol_t.input_symbol) Doublet_list_t.doublet_list ) =
 [("Poi_h",
   Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target);
  ("Poi_t",
   Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target)]
);;

let nam_ivn_tar_l = List.map Doublet_v.left_off_doublet nam_n_kin_ivn_tar_l;;

test_number 4 ( 
(nam_ivn_tar_l : string list ) = 
["Poi_h"; "Poi_t"]
);;

let sym_fig_dep_ll = List.map
      Figure_symbol_dependency_list_by_input_variable_name_provider_v.provide 
      nam_ivn_tar_l;;

test_number 5 (
(sym_fig_dep_ll : Figure_symbol_t.figure_symbol list list ) =
 [[Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h")));
    Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))];
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
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))]]
);;

let sym_fig_tar_stl = List.map provide nam_ivn_tar_l;;

test_number 6 (
(sym_fig_tar_stl : Figure_symbol_t.figure_symbol Tree_t.tree list ) =
[Tree_t.Inner
    (Figure_symbol_t.Figure_field_symbol
      (Figure_field_symbol_t.Figure_field_fence_symbol
        (Figure_field_fence_symbol_t.Figure_point_symbol
          (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
    [Tree_t.Leaf
      (Figure_symbol_t.Figure_field_symbol
        (Figure_field_symbol_t.Figure_field_fence_symbol
          (Figure_field_fence_symbol_t.Figure_point_symbol
            (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))))]);
   Tree_t.Inner
    (Figure_symbol_t.Figure_field_symbol
      (Figure_field_symbol_t.Figure_field_fence_symbol
        (Figure_field_fence_symbol_t.Figure_point_symbol
          (Figure_point_symbol_t.Figure_point_constructor "Poi_t"))),
    [Tree_t.Inner
      (Figure_symbol_t.Figure_field_symbol
        (Figure_field_symbol_t.Figure_field_fence_symbol
          (Figure_field_fence_symbol_t.Figure_point_symbol
            (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
      [Tree_t.Leaf
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_field_fence_symbol
            (Figure_field_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))))])])]
);;
