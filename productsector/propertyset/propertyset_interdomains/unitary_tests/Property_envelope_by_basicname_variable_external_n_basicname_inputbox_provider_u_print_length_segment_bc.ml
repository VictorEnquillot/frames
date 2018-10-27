open Make_test_v;;

testing "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Property_envelope_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Check_consistency_by_context_name_quatuor_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Figure_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v" "debug";;
*)

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Ope_len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Ope_len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_envelope_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_length_segment_bc.ml";; 

*)

open Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_iba = "local";;

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

let bna_dom =
  Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo)
;;

test_number 3 (
(bna_dom : Basicname_t.basicname ) = 
Basicname_t.Domain "figure"
);;

let nam_dom = Basicname_v.string_off bna_dom;;

let tag_fig = 
	Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	    (bna_var_ext, bna_ibo);;

let env_fig = Figure_envelope_v.envelope_of_tag tag_fig;;

test_number 4 (
(env_fig :
   (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
    Readee_t.readee)
   Doublet_t.doublet list ) =
[(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
           "BC_B"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
           "BC_B"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
           "BC_B"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
           "BC_C"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
           "BC_C"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (90.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
           "BC_C"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))]
);;

let tag_fsf_l = 
	Figure_set_fence_tag_list_by_figure_tag_provider_v.provide
	  tag_fig;;

test_number 5 (
(tag_fsf_l :
  Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag list ) =
  [(Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
     (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
       "BC_B"),
    [1; 1; 18; 1; 7; 5]);
   (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
     (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
       "BC_C"),
    [2; 1; 18; 1; 7; 5])]
);;

let bri_fsf_l = List.map 
    Figure_bridge_by_figure_set_fence_tag_provider_v.provide
    tag_fsf_l;;

test_number 6 (
(bri_fsf_l : Coordinate_tag_t.coordinate_tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_body_symbol
       (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
         (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
           (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
             (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
               "BC_B"))))),
    [1; 18; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_body_symbol
       (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
         (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
           (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
             (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
               "BC_C"))))),
    [2; 18; 1; 5; 5])]
);;

let tag_cbt_l = List.map
    Coordinate_set_body_tuple_tag_v.coordinate_set_body_tuple_tag_off_coordinate_tag
    bri_fsf_l
;;

test_number 7 (
(tag_cbt_l :
  Coordinate_set_body_tuple_symbol_t.coordinate_set_body_tuple_symbol
  Tag_t.tag list ) =
  [(Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
     (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
       (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
         "BC_B")),
    [1; 18; 1; 5; 5]);
   (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
     (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
       (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
         "BC_C")),
    [2; 18; 1; 5; 5])]
);;
      
let env_csf_l = List.map 
    Coordinate_set_body_tuple_homogeneous_envelope_tuple_by_coordinate_set_body_tuple_tag_provider_v.provide 
    tag_cbt_l
;;

test_number 8 (
( env_csf_l :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
       (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
         (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
           (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
             "BC_B"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (1.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
       (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
         (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
           (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
             "BC_B"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
       (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
         (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
           (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
             "BC_B"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))));
   Tuple_t.Trio
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
       (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
         (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
           (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
             "BC_C"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (6.12303176911188629e-17,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
       (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
         (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
           (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
             "BC_C"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (1.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
       (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
         (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
           (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
             "BC_C"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (1.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))))]
);;

let pro_env_tl = List.map (Tuple_v.map Elementary_envelopee_v.elementary_envelopee_of_coordinate_envelopee) env_csf_l;;
	
test_number 9 (
( pro_env_tl :
  Elementary_envelopee_t.elementary_envelopee Tuple_t.tuple list  ) =
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

test_number 10 (
pro_env_tl = provide (bna_var_ext, bna_ibo)
);;
