open Make_test_v;;

testing "Elementary_body_envelope_v with
   Elementary_body_envelope_u.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Coordinate_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Db1points_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1points_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1points_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;










(* Tracing *)


(* toplevel 
   #use "Elementary_body_envelope_u.ml";;

*)

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

let tag_ele_l = Elementary_tag_all_list_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

open Elementary_body_envelope_v;; 

(* Body as Point T_A *)

let sof_ele = "T_A";;
let tag_ele_bod = List.find (fun t -> Elementary_tag_v.string_off t = sof_ele) tag_ele_l;;
let tag_ebo_t_a = Elementary_body_tag_v.elementary_body_tag_off_elementary_tag tag_ele_bod;;

test_number 2 (
(tag_ebo_t_a : Elementary_body_symbol_t.elementary_body_symbol Tag_t.tag ) =
  (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
    (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
      (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
        (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
          "T_A"))),
   [1; 1; 4])
);;

(* Body as Coordinate cartesian_x *)

let sof_ele = "cartesian_x";;
let tag_ele_bod = List.find (fun t -> Elementary_tag_v.string_off t = sof_ele) tag_ele_l;;
let tag_ebo_c_x = Elementary_body_tag_v.elementary_body_tag_off_elementary_tag tag_ele_bod;;

test_number 3 (
(tag_ebo_c_x : Elementary_body_symbol_t.elementary_body_symbol Tag_t.tag ) =
  (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
    (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
      (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
        (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x"))),
   [1; 1; 1; 4])
);;

let clo_ebo_t_a = closure tag_ebo_t_a;;

test_number 4 (
( clo_ebo_t_a : Boundary_t.boundary list ) =
  [Boundary_t.Boundary_units
    (0.1,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer);
   Boundary_t.Boundary_units
    (0.2,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer);
   Boundary_t.Boundary_units
    (-0.2,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer)]
);;

let clo_ebo_c_x = closure tag_ebo_c_x;;

test_number 5 (
( clo_ebo_c_x : Boundary_t.boundary list ) =
  [Boundary_t.Boundary_units
    (0.1,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer)]
);;

let env_ebo_t_a = build tag_ebo_t_a;;

test_number 6 (
(env_ebo_t_a : Elementary_body_envelope_t.elementary_body_envelope ) =
  Elementary_body_envelope_t.Elementary_body_coordinate_tuple_envelope
   (Elementary_body_coordinate_tuple_envelope_t.Elementary_body_coordinate_tuple_homogeneous_envelope
     (Elementary_body_coordinate_tuple_homogeneous_envelope_t.Elementary_body_coordinate_tuple_cartesian_envelope
       (Tuple_t.Trio
         ([Boundary_t.Boundary_units
            (0.1,
             Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Nanometer)],
          [Boundary_t.Boundary_units
            (0.2,
             Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Nanometer)],
          [Boundary_t.Boundary_units
            (-0.2,
             Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Nanometer)]))))
);;

let env_ebo_c_x = build tag_ebo_c_x;;

test_number 7 (
(env_ebo_c_x : Elementary_body_envelope_t.elementary_body_envelope ) =
  Elementary_body_envelope_t.Elementary_border_coordinate_envelope
   (Elementary_border_coordinate_envelope_t.Elementary_border_coordinate_homogeneous_envelope
     (Elementary_border_coordinate_homogeneous_envelope_t.Elementary_border_coordinate_cartesian_envelope
       (Tuple_t.Uno
         [Boundary_t.Boundary_units
           (0.1,
            Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)])))
);;

let clo_ebo_tlt_a = closure_as_tuple_list tag_ebo_t_a;;

test_number 8 (
( clo_ebo_tlt_a : Boundary_t.boundary Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Boundary_t.Boundary_units
      (0.1,
       Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Nanometer),
     Boundary_t.Boundary_units
      (0.2,
       Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Nanometer),
     Boundary_t.Boundary_units
      (-0.2,
       Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Nanometer))]
);;

let clo_ebo_tlc_x = closure_as_tuple_list tag_ebo_c_x;;

test_number 9 (
(clo_ebo_tlc_x : Boundary_t.boundary Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Boundary_t.Boundary_units
      (0.1,
       Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Nanometer))]
);;

let nam_env_t_a = name env_ebo_t_a;;

test_number 10 (
( nam_env_t_a : string ) =
  "([ (0.100000, nanometer) ], [ (0.200000, nanometer) ], [ (-0.200000, nanometer) ])"
);;

let nam_env_c_x = name env_ebo_c_x;;

test_number 11 (
(nam_env_c_x : string ) = 
"([ (0.100000, nanometer) ])"
);;
