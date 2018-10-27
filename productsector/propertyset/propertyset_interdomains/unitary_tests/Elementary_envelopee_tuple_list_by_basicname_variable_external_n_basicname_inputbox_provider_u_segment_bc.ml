open Make_test_v;;

testing "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Check_consistency_by_context_name_quatuor_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Figure_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v" "debug";;
*)

(* coordinates_units_length   angstrom  *)
(* coordinates_units_angle    degree *)
(* coordinates_kind           cylindrical   *)
(* figure_kind segment  *)
(* figure_name BC *)
(* vertex BC_B       1.  0.  0. *)
(* vertex BC_C       1. 90.  1. *)

(* toplevel 
   #use "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_segment_bc.ml";;

*)

open Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_length_segment_bc"
);;

let nam_var_ext = "Seg_bc";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Seg_bc"
);;

(* Argument (bna_var_ext, bna_ibo) *)

let tag_fig = 
	Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	    (bna_var_ext, bna_ibo);;

test_number 3 (
(tag_fig : Figure_tag_t.figure_tag) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
        (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
          "BC"))),
   [1; 18; 1; 7; 5])
);;

let env_fig = Figure_envelope_v.envelope_of_tag tag_fig;;

test_number 4 (
(env_fig :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple list) =
  [Tuple_t.Trio
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
             "BC_B"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (1.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
             "BC_B"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
             "BC_B"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))));
   Tuple_t.Trio
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
             "BC_C"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (1.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
             "BC_C"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (90.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
             "BC_C"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (1.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))))]
);;

let eee_ele_tl = List.map 
    Elementary_envelopee_tuple_v.elementary_envelopee_tuple_of_coordinate_envelopee_tuple 
    env_fig;;

test_number 5 (
(eee_ele_tl : Elementary_envelopee_tuple_t.elementary_envelopee_tuple list ) =
  [Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple
    (Tuple_t.Trio
      ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
               "BC_B"))),
        Readee_t.Readee_measure
         (Readee_measure_t.Readee_measure
           (1.,
            Units_t.Units_actual
             (Units_actual_t.Units_actual_length
               Units_actual_length_t.Angstrom)))),
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
               "BC_B"))),
        Readee_t.Readee_measure
         (Readee_measure_t.Readee_measure
           (0.,
            Units_t.Units_actual
             (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)))),
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
               "BC_B"))),
        Readee_t.Readee_measure
         (Readee_measure_t.Readee_measure
           (0.,
            Units_t.Units_actual
             (Units_actual_t.Units_actual_length
               Units_actual_length_t.Angstrom))))));
   Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple
    (Tuple_t.Trio
      ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
               "BC_C"))),
        Readee_t.Readee_measure
         (Readee_measure_t.Readee_measure
           (1.,
            Units_t.Units_actual
             (Units_actual_t.Units_actual_length
               Units_actual_length_t.Angstrom)))),
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
               "BC_C"))),
        Readee_t.Readee_measure
         (Readee_measure_t.Readee_measure
           (90.,
            Units_t.Units_actual
             (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)))),
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
               "BC_C"))),
        Readee_t.Readee_measure
         (Readee_measure_t.Readee_measure
           (1.,
            Units_t.Units_actual
             (Units_actual_t.Units_actual_length
               Units_actual_length_t.Angstrom))))))]
);;

test_number 6 (
eee_ele_tl = provide (bna_var_ext, bna_ibo)
);;
