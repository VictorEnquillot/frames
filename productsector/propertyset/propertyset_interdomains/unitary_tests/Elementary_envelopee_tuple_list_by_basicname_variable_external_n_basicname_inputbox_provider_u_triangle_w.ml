open Make_test_v;;

testing "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Check_consistency_by_context_name_quatuor_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Figure_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v" "debug";;
*)

(* coordinates_units_length  nanometer  *)
(* coordinates_kind          cartesian  *)
(* figure_kind               triangle   *)
(* figure_name W                        *)
(* vertex W_A       1    0.   0.        *)
(* vertex W_B       0.   2.   0.        *)
(* vertex W_C       0.   0.   3.        *)

(* toplevel 
   #use "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_triangle_w.ml";;

*)

open Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_triangle_w"
);;

let nam_var_ext = "Tri_w";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Tri_w"
);;

(* Argument (bna_var_ext, bna_ibo) *)

let bna_dom =
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 3 (
(bna_dom : Basicname_t.basicname ) = 
Basicname_t.Domain "figure"
);;

let tag_fig = 
  Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo);;
let env_fig = Figure_envelope_v.envelope_of_tag tag_fig;; 
let eee_ele_l = List.map Elementary_envelopee_v.elementary_envelopee_of_coordinate_envelopee env_fig;;
let eee_tl = Tuple_list_v.tuple_list_of_list eee_ele_l;;

test_number 4 (
(eee_tl : Elementary_envelopee_t.elementary_envelopee Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
            (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
              "W_A"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (1.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
            (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
              "W_A"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
            (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
              "W_A"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))));
   Tuple_t.Trio
    (Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
            (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
              "W_B"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
            (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
              "W_B"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (2.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
            (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
              "W_B"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))));
   Tuple_t.Trio
    (Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
            (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
              "W_C"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
            (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
              "W_C"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
            (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
              "W_C"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (3.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Nanometer)))))]
);;

test_number 5 (
eee_tl = provide (bna_var_ext, bna_ibo)
);;
