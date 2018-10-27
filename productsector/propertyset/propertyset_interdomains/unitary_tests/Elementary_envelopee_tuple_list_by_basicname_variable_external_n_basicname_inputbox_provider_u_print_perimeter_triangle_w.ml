open Make_test_v;;

testing "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

Register_v.delete Localinput_symbol_by_sole_index_register_v.register;;

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Check_consistency_by_context_name_quatuor_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Figure_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v" "debug";;
*)

(* toplevel 
   #use "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

*)

open Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_perimeter_triangle_w"
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
let eee_tl =
    Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 4 (
(eee_tl : Elementary_envelopee_t.elementary_envelopee Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
            (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
              "BC_B"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (1.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Angstrom)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
            (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
              "BC_B"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Angstrom)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
            (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
              "BC_B"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Angstrom)))));
   Tuple_t.Trio
    (Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
            (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
              "BC_C"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (6.12303176911188629e-17,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Angstrom)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
            (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
              "BC_C"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (1.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Angstrom)))),
     Elementary_envelopee_t.Coordinate_envelopee
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
        (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
          (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
            (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
              "BC_C"))),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (1.,
           Units_t.Units_actual
            (Units_actual_t.Units_actual_length
              Units_actual_length_t.Angstrom)))))]
);;

let mea_tl = Tuple_list_v.map Elementary_envelopee_v.measure_off_elementary_envelopee eee_tl;;

test_number 5 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Tuple_t.Trio
    ((6.12303176911188629e-17,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
);;

test_number 6 (
mea_tl = provide (bna_var_ext, bna_ibo)
);;
