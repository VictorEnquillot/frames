open Make_test_v;;

testing "Elementary_units_tag_deepfence_by_figure_tag_provider_v with
    Elementary_units_tag_deepfence_by_figure_tag_provider_u_debug.ml";;

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
   #use "Elementary_units_tag_deepfence_by_figure_tag_provider_u_debug.ml";;

*)

let nam_dba = "db1";;

let tag_fig_l = Figure_tag_all_list_by_database_name_provider_v.provide nam_dba;;

open Elementary_units_tag_deepfence_by_figure_tag_provider_v;;

(* Point T_A *)

let nam_fig = "T_A";;
let tag_fig = List.find (fun (s, i) -> Figure_symbol_v.string_off s = nam_fig) tag_fig_l;; 

test_number 1 ( 
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
   [1; 2; 1; 6])
);;

let tag_fpo_l = Figure_point_tag_fence_by_figure_tag_provider_v.provide tag_fig;;

test_number 2 (
(tag_fpo_l : Figure_point_symbol_t.figure_point_symbol Tag_t.tag list ) =
  [(Figure_point_symbol_t.Figure_point_constructor "T_A", [1; 2; 1; 6])]
);;

let tag_ect_l = List.flatten 
    (List.map 
       Elementary_coordinate_tuple_tag_list_by_figure_point_tag_provider_v.provide
       tag_fpo_l);;
 
test_number 3 (
 (tag_ect_l :
    Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
    Tag_t.tag list ) =
 [(Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
	(Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "T_A")),
   [3; 1; 4])]
);;

let tag_ele_l = List.map 
      (Tag_v.map_entity (* Coerce Up *)
	 Elementary_symbol_v.elementary_symbol_of_elementary_coordinate_tuple_symbol)
	 tag_ect_l;;

let tag_eun_l = List.flatten (List.map Elementary_units_tag_deepfence_by_elementary_tag_provider_v.provide tag_ele_l);;

test_number 4 (
(tag_eun_l :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 3; 1; 4])]
);;

test_number 5 (
tag_eun_l = provide tag_fig
);;

(* Triangle T *)

let nam_fig = "T";;
let tag_fig = List.find (fun (s, i) -> Figure_symbol_v.string_off s = nam_fig) tag_fig_l;; 

test_number 6 ( 
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
 (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_triangle_symbol
        (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
          (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
            "T")))),
   [2; 1; 6])
);;

let dfe_t = provide tag_fig;;

test_number 7 (
( dfe_t : Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 4; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 4; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 4; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 5; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 5; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 5; 1; 4])]
);;
