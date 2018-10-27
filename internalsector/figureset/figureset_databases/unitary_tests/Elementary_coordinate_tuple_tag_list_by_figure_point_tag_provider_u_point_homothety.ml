open Make_test_v;;

testing "Elementary_coordinate_tuple_tag_list_by_figure_point_tag_provider_v with
   Elementary_coordinate_tuple_tag_list_by_figure_point_tag_provider_u_point_homothety_debug.ml";;

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
   #use "Elementary_coordinate_tuple_tag_list_by_figure_point_tag_provider_u_point_homothety_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"
);;

let tag_fig_t = Figure_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_domain_symbol
        (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
     [6]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_createdby_symbol
          (Figure_createdby_symbol_t.Figure_inputfile_symbol
            (Figure_inputfile_symbol_t.Figure_inputfile_constructor
              "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"))),
       [27; 6]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_field_fence_symbol
            (Figure_field_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
         [1; 27; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
          [1; 1; 27; 6])]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "Cen_b"))),
        [2; 27; 6])])])
);;


let tag_fig_l = Tree_v.node_list_off_tree tag_fig_t;;
 
test_number 3 (
(tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
    [6]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_symbol
         (Figure_inputfile_symbol_t.Figure_inputfile_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"))),
    [27; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
    [1; 27; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
    [1; 1; 27; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Cen_b"))),
    [2; 27; 6])]

);;

let tag_fig_poi_l = List.filter (fun (s, i) -> Figure_symbol_v.is_figure_point_symbol_off_figure_symbol s) tag_fig_l;;
let tag_fpo_l = List.map (Tag_v.map_entity Figure_symbol_v.figure_point_symbol_off_figure_symbol) tag_fig_poi_l;;

let tag_fpo_poi_h = List.find (fun t -> Figure_point_tag_v.string_off t = "Poi_h") tag_fpo_l;;

test_number 4 (
( tag_fpo_poi_h : Figure_point_symbol_t.figure_point_symbol Tag_t.tag) =
  (Figure_point_symbol_t.Figure_point_constructor "Poi_h", [1; 27; 6])
);;
 
let tag_fpo_poi_a = List.find (fun t -> Figure_point_tag_v.string_off t = "Poi_a") tag_fpo_l;;

test_number 5 (
( tag_fpo_poi_a : Figure_point_symbol_t.figure_point_symbol Tag_t.tag )=
  (Figure_point_symbol_t.Figure_point_constructor "Poi_a", [1; 1; 27; 6])
);;
 

let tag_fpo_cen_b = List.find (fun t -> Figure_point_tag_v.string_off t = "Cen_b") tag_fpo_l;;

test_number 6 (
( tag_fpo_cen_b : Figure_point_symbol_t.figure_point_symbol Tag_t.tag ) =
  (Figure_point_symbol_t.Figure_point_constructor "Cen_b", [2; 27; 6])
);;
 
let sof_fpo_poi_a = Figure_point_tag_v.string_off tag_fpo_poi_a;;

test_number 7 (
(sof_fpo_poi_a : string ) = 
"Poi_a"
);;

let tag_fpo_dba_a = Figure_tag_in_database_by_external_input_variable_name_provider_v.provide sof_fpo_poi_a;;

test_number 8 (
(tag_fpo_dba_a : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
   [1; 2; 1; 6])
);;

let sof_fpo_poi_h = Figure_point_tag_v.string_off tag_fpo_poi_h;;

test_number 9 (
(sof_fpo_poi_h : string ) = 
"Poi_h"
);;

let tag_fig_dba_a = Figure_tag_in_database_by_external_input_variable_name_provider_v.provide sof_fpo_poi_a;;

let tag_fpo_dba_a = Tag_v.map_entity Figure_symbol_v.figure_point_symbol_off_figure_symbol tag_fig_dba_a;;

test_number 10 (
(tag_fpo_dba_a : Figure_point_symbol_t.figure_point_symbol Tag_t.tag ) =
  (Figure_point_symbol_t.Figure_point_constructor "T_A", [1; 2; 1; 6])
);;

let tag_ect_l = Elementary_coordinate_tuple_tag_list_by_figure_point_tag_provider_v.provide tag_fpo_dba_a;;
 
test_number 11 (
(tag_ect_l :
  Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag list ) =
  [(Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_A")),
    [3; 1; 4])]
);;
