open Make_test_v;;

testing "Figure_set_fence_envelope_v with
        Figure_set_fence_envelope_u_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_set_fence_envelope_u_point_a.ml";; 

*)

open Figure_set_fence_envelope_v;;

let nam_dbo = "Point_a";;
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

let sof_point_a = "A";;
let tag_fig_point_a = List_v.only_element_of_predicate_off_list (pre_tag_fig_sof sof_point_a) tag_fig_l;;

test_number 1 (
( tag_fig_point_a : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
        (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
          "A"))),
   [1; 10; 1; 7; 5])
);;

(* Argument tag_fsf *)

let tag_fsf = Figure_set_fence_tag_v.figure_set_fence_tag_off_figure_tag tag_fig_point_a;;
 
test_number 2 (
(tag_fsf : Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag ) =
  (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "A"),
   [1; 10; 1; 7; 5])
);;

(** {6 Bridge *)

let bri_a = bridge_of_tag tag_fsf;; 

test_number 3 (
( bri_a : Coordinate_tag_t.coordinate_tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
        (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
          (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
            (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
              "A_A"))))),
   [1; 10; 1; 5; 5])
);;

let tag_cbt = coordinate_set_body_tag_of_tag tag_fsf;;

test_number 4 (
(tag_cbt :
  Coordinate_set_body_symbol_t.coordinate_set_body_symbol Tag_t.tag ) =
  (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
    (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
      (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
        (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
          "A_A"))),
   [1; 10; 1; 5; 5])
);;

(** {6 Coordinate_envelopee Tuple of Tag} *)

let eee_coo_t = coordinate_envelopee_tuple_of_tag tag_fsf;;
 
test_number 5 (
(eee_coo_t :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
          (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "A_A"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))),
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
          (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
            "A_A"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.785398163397448279,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))),
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
          (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
            "A_A"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.785398163397448279,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))))
);; 


(** {6 Coordinate_envelopee Tuple_list of Tag} *)

let eee_coo_tl = coordinate_envelopee_tuple_list_of_tag tag_fsf;;

test_number 6 (
( eee_coo_tl :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
         (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
           (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
             "A_A"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (1.,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
         (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
           (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
             "A_A"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.785398163397448279,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))),
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
         (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
           (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
             "A_A"))),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.785398163397448279,
          Units_t.Units_actual
           (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))))]
);;

(** {9 Envelope of Tag} *)

let env_fsf = envelope_of_tag tag_fsf;;

test_number 7 (
env_fsf = coordinate_envelopee_tuple_list_of_tag tag_fsf
);;

(** {6 Making} *)

test_number 8 (
env_fsf = make tag_fsf
);;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_symbol_tuple of Tag} *)

let sym_csf_t = coordinate_set_fence_symbol_tuple_of_tag tag_fsf;;

test_number 9 (
(sym_csf_t :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol Tuple_t.tuple ) =
  Tuple_t.Trio
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
         (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
           "A_A"))),
    Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
         (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
           "A_A"))),
    Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
         (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
           "A_A"))))
);;

(** {9 Coordinate_set_fence_symbol_tuple off Envelope} *)

test_number 10 ( 
sym_csf_t = coordinate_set_fence_symbol_tuple_off_envelope env_fsf
);;


(** {9 Coordinate_set_fence_symbol_tuple_list_off Envelope} *)

let sym_csf_tl = coordinate_set_fence_symbol_tuple_list_off_envelope env_fsf;;

test_number 11 ( 
sym_csf_tl = [sym_csf_t]
);;


(** {6 Readee List of Tag} *)

let rea_tl = readee_tuple_list_of_tag tag_fsf;;

test_number 12 (
( rea_tl : Readee_t.readee Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.785398163397448279,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.785398163397448279,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))))]
);;

(** {9 Readee Tuple of Tag} *)

test_number 13 (
rea_tl = readee_tuple_list_of_tag tag_fsf
);;

(** {9 Closure : list of Readee} *)

let clo_fsf = closure_off_envelope env_fsf ;;

test_number 14 (
(clo_fsf : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.785398163397448279,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.785398163397448279,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))]
);;

(** {6 Measure List of Tag} *)

let mea_tl = measure_tuple_list_of_tag tag_fsf;;

test_number 15 (
(mea_tl : Measure_t.measure Tuple_t.tuple list) =
  [Tuple_t.Trio
    ((1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (0.785398163397448279,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)),
     (0.785398163397448279,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))]
);;

let nam_cal = "quantum";;
let mca_t = measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_fsf;;

test_number 16 (
(mca_t :
  (float, Units_canonical_t.units_canonical) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1.,
     Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_length_bohr),
    (0.785398163397448279,
     Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_angle_radian),
    (0.785398163397448279,
     Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_angle_radian))
);;

let mca_tl = measure_canonical_tuple_list_of_calculation_name_of_tag nam_cal tag_fsf ;;

test_number 17 (
(mca_tl :
  (float, Units_canonical_t.units_canonical) Doublet_t.doublet Tuple_t.tuple
  list) =
  [Tuple_t.Trio
    ((1.,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     (0.785398163397448279,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_angle_radian),
     (0.785398163397448279,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_angle_radian))]
);;

(** {9 Units_tuple_list} *)

let uni_tl = units_tuple_list_off_envelope env_fsf;;

test_number 18 (
(uni_tl : Units_t.units Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))]
);;

(** {9 Float_tuple_list} *)

let flo_tl = float_tuple_list_off_envelope env_fsf;;

(** {9 Float List of Tag} *)

test_number 19 (
(flo_tl : float Tuple_t.tuple list ) =
[Tuple_t.Trio (1., 0.785398163397448279, 0.785398163397448279)]
);;

(** {6 Naming} *)

let nam_env = name env_fsf;;

test_number 20 (
(nam_env : string ) =
 " [\n   ((coordinate_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, bohr)), (coordinate_set_fence_heterogeneous_spherical_phi_constructor, (0.785398, radian)), (coordinate_set_fence_heterogeneous_spherical_theta_constructor, (0.785398, radian)))\n  ]"
);;

let sna_env = shortname env_fsf;;

test_number 21 (
(sna_env : string ) =
  " [\n   ((A_A rho 1 length), (A_A phi 0.785398 angle), (A_A theta 0.785398 angle))\n  ]"
);;
