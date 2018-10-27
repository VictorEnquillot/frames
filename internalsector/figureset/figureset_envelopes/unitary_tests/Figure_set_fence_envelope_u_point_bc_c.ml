open Make_test_v;;

testing "Figure_set_fence_envelope_v with
        Figure_set_fence_envelope_u_point_bc_c.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_set_fence_envelope_u_point_bc_c.ml";; 

*)

open Figure_set_fence_envelope_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_fig_l = 
    Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba);;

let pre_tag_fig_sof sof (s, i) = 
    (Figure_symbol_v.is_figure_set_fence_symbol_off_figure_symbol s)
      && 
    (Figure_symbol_v.string_off s = sof)
;;

let sof_point_bc_c = "BC_C";;
let tag_fig_point_bc_c = List_v.only_element_of_predicate_off_list (pre_tag_fig_sof sof_point_bc_c) tag_fig_l;;

test_number 1 (
( tag_fig_point_bc_c : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
        (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
          "BC_C"))),
   [2; 1; 18; 1; 7; 5])
);;

(* Argument tag_fsf *)

let tag_fsf = Figure_set_fence_tag_v.figure_set_fence_tag_off_figure_tag tag_fig_point_bc_c;;
 
test_number 2 (
(tag_fsf : Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag ) =
  (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
      "BC_C"),
   [2; 1; 18; 1; 7; 5])
);;

(** {6 Bridge *)

let bri_bc_c = bridge_of_tag tag_fsf;; 

test_number 3 (
( bri_bc_c : Coordinate_tag_t.coordinate_tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
        (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
          (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
            (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
              "BC_C"))))),
   [2; 18; 1; 5; 5])
);;

let tag_cbt = coordinate_set_body_tuple_tag_of_tag tag_fsf;;

test_number 4 (
(tag_cbt :
  Coordinate_set_body_tuple_symbol_t.coordinate_set_body_tuple_symbol
   Tag_t.tag ) =
  (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
    (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
      (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
        "BC_C")),
   [2; 18; 1; 5; 5])
);;

(** {9 Envelope of Tag} *)

let cen_fsf = coordinate_envelope_of_tag tag_fsf;;

test_number 5 (
(cen_fsf :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
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

let env_fsf = envelope_of_tag tag_fsf;;

test_number 6 (
env_fsf = cen_fsf
);;

(** {6 Coordinate_envelopee List of Tag} *)

let eee_fsf_l = coordinate_envelopee_list_of_tag tag_fsf;;
 
test_number 7 (
eee_fsf_l = env_fsf
);;

(** {6 Coordinate_envelopee Tuple of Tag} *)

let env_coo_t = coordinate_envelopee_tuple_of_tag tag_fsf;;

test_number 8 (
(env_coo_t :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple ) =
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
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))))
);;

(** {9 Envelope_as Tuple of Tag} *)

let env_fsf_t = envelope_as_tuple_of_tag tag_fsf;;

test_number 9 (
env_fsf_t = env_coo_t
);;

(** {6 Making} *)

test_number 10 (
env_fsf = make tag_fsf
);;

(** {6 Readee List of Tag} *)

let rea_l = readee_list_of_tag tag_fsf;;

test_number 11 (
(rea_l : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (90.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
);;

(** {9 Readee Tuple of Tag} *)

let rea_t = readee_tuple_of_tag tag_fsf;;

test_number 12 (
(rea_t : Readee_t.readee Tuple_t.tuple ) =
  Tuple_t.Trio
   (Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (90.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))
);;

(** {6 Measure List of Tag} *)

let mea_l = measure_list_of_tag tag_fsf;;

test_number 13 (
(mea_l : Measure_t.measure list ) =
  [(1.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom));
   (90.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree));
   (1.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))]
);;

let nam_cal = "quantum";;
let mca_l = measure_canonical_list_of_calculation_name_of_tag nam_cal tag_fsf;;

test_number 14 (
(mca_l : (float, Units_canonical_t.units_canonical) Doublet_t.doublet list ) =
  [(1.88972612456506206,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr);
   (1.57079632679489656,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_angle_radian);
   (1.88972612456506206,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr)]
);;

(** {9 Units List of Tag} *)

let uni_l = units_list_of_tag tag_fsf;;

test_number 15 (
(uni_l : Units_t.units list ) =
[Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)]
);;

(** {9 Float List of Tag} *)

let flo_l = float_list_of_tag tag_fsf;; 

test_number 16 (
(flo_l : float list ) = 
[1.; 90.; 1.]
);;

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_fsf;; 

test_number 17 (
( clo : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (90.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
);;

(** {9 Coordinate_set_fence_symbol_list off Envelope} *)

let sym_csf_l = coordinate_set_fence_symbol_list_off_envelope env_fsf;;

test_number 18 (
(sym_csf_l : Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol list ) =
[Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
    (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
      (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
          "BC_C")));
   Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
    (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
      (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
          "BC_C")));
   Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
    (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
      (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
          "BC_C")))]
);;

(** {9 Coordinate_symbol List off Envelope} *)

let sym_coo_l = coordinate_symbol_list_off_envelope env_fsf;;

test_number 19 (
(sym_coo_l : Coordinate_symbol_t.coordinate_symbol list ) =
  [Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
            (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
              "BC_C")))));
   Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
            (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
              "BC_C")))));
   Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
            (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
              "BC_C")))))]
);;

(** {9 Readee List off Envelope} *)

test_number 20 (
rea_l = readee_list_off_envelope env_fsf
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 21 (
clo = closure_off_envelope env_fsf
);;

(** {9 Measure List off Envelope} *)

test_number 22 (
mea_l = measure_list_off_envelope env_fsf 
);;

(** {9 Units List off Envelope} *)

test_number 23 (
uni_l = units_list_off_envelope env_fsf
);;

(** {9 Float List off Envelope} *)

test_number 24 (
flo_l = float_list_off_envelope env_fsf
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_fsf;;

test_number 25 (
(nam_env : string ) =
  " [\n   (coordinate_set_fence_heterogeneous_cylindrical_rho_constructor, (1.000000, angstrom)) (coordinate_set_fence_heterogeneous_cylindrical_phi_constructor, (90.000000, degree)) (coordinate_set_fence_heterogeneous_cylindrical_zed_constructor, (1.000000, angstrom))\n  ]"
);;
