open Make_test_v;;

testing "Figure_envelope_v with
    Figure_envelope_u_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_envelope_u_point_a.ml";; 

*)

open Figure_envelope_v;;

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

(* Argument tag_fig *)

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

let tag_fig = tag_fig_point_a;;

(** {6 Coordinate_envelope List of Tag} *)

let env_coo_l = coordinate_envelope_list_of_tag tag_fig;;
 
test_number 2 (
( env_coo_l :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet list list ) =
  [[(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
          (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "A_A"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Meter))));
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
          (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
            "A_A"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.785398163397448279,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))));
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
          (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
            "A_A"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.785398163397448279,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))))]]
);;

(** {6 Coordinate_envelopee List List of Tag} *)

test_number 3 (
env_coo_l = coordinate_envelopee_list_list_of_tag tag_fig
);;

(** {6 Coordinate_envelope_as_tuple List of Tag} *)

let env_coo_tl = coordinate_envelope_as_tuple_list_of_tag tag_fig;;

test_number 4 (
(env_coo_tl :
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
           (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)))),
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

(** {6 Coordinate_envelopee Tuple List of Tag} *)

test_number 5 (
env_coo_tl = coordinate_envelopee_tuple_list_of_tag tag_fig
);;

(** {6 Envelope_as_tuple_list of Tag} *)

test_number 6 ( 
env_coo_tl = envelope_as_tuple_list_of_tag tag_fig
);;

(** {9 Coordinate_set_fence_symbol Tuple List off Envelope} *)

let sym_csf_tl = coordinate_set_fence_symbol_tuple_list_off_envelope env_coo;;

(** {6 Envelope of Tag} *)

let env_fig = envelope_of_tag tag_fig;; 

test_number 7 (
(env_fig :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
          (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "A_A"))),
     [1; 1; 10; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Meter))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
          (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
            "A_A"))),
     [2; 1; 10; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.785398163397448279,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
          (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
            "A_A"))),
     [3; 1; 10; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.785398163397448279,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))))]
);;

(** {6 Making} *)

test_number 8 (
env_fig = make tag_fig
);;

(** {6 Measure List of Tag} *)

let mea_l = measure_list_of_tag tag_fig;;

test_number 9 (
(mea_l : Measure_t.measure list ) =
  [(1.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Meter));
   (0.785398163397448279,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian));
   (0.785398163397448279,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))]
);;

let nam_cal = "quantum";;
let mca_l = measure_canonical_list_of_calculation_name_of_tag nam_cal tag_fig;;

test_number 10 (
(mca_l : (float, Units_canonical_t.units_canonical) Doublet_t.doublet list ) =
  [(18897261245.6506195,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr);
   (0.785398163397448279,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_angle_radian);
   (0.785398163397448279,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_angle_radian)]
);;

(** {9 Units List of Tag} *)

let uni_l = units_list_of_tag tag_fig;;

test_number 11 (
(uni_l : Units_t.units list ) =
  [Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Meter);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)]
);;

(** {9 Float List of Tag} *)

let flo_l = float_list_of_tag tag_fig;; 

test_number 12 (
(flo_l : float list ) = 
[1.; 0.785398163397448279; 0.785398163397448279]
);;

(** {6 Readee List of Tag} *)

let rea_l = readee_list_of_tag tag_fig;;

test_number 13 (
(rea_l : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)));
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

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_fig;; 

test_number 14 (
( clo : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)));
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

(** {9 Coordinate_set_fence_tag List off Envelope} *)

let tag_csf_l = coordinate_set_fence_tag_list_off_envelope env_fig;;

test_number 15 (
(tag_csf_l : Coordinate_set_fence_tag_t.coordinate_set_fence_tag list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
         (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
           "A_A"))),
    [1; 1; 10; 1; 5; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
         (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
           "A_A"))),
    [2; 1; 10; 1; 5; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
         (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
           "A_A"))),
    [3; 1; 10; 1; 5; 5])]
);;

(** {9 Coordinate_tag List off Envelope} *)

let tag_coo_l = coordinate_tag_list_off_envelope env_fig;;

test_number 16 (
(tag_coo_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
             (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
             (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
               "A_A"))))),
    [2; 1; 10; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
             (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
               "A_A"))))),
    [3; 1; 10; 1; 5; 5])]
);;

(** {9 Readee List off Envelope} *)

test_number 17 (
rea_l = readee_list_off_envelope env_fig
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 18 (
clo = closure_off_envelope env_fig
);;

(** {9 Measure List off Envelope} *)

test_number 19 (
mea_l = measure_list_off_envelope env_fig 
);;

(** {9 Units List off Envelope} *)

test_number 20 (
uni_l = units_list_off_envelope env_fig
);;

(** {9 Float List off Envelope} *)

test_number 21 (
flo_l = float_off_envelope env_fig
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_fig;;

test_number 22 (
(nam_env : string ) =
  " [\n   (coordinate_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, meter)) (coordinate_set_fence_heterogeneous_spherical_phi_constructor, (0.785398, radian)) (coordinate_set_fence_heterogeneous_spherical_theta_constructor, (0.785398, radian))\n  ]"
);;
