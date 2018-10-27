open Make_test_v;;

testing "Figure_envelope_v with
    Figure_envelope_u_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_envelope_u_segment_bc.ml";; 

*)

open Figure_envelope_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;

let tag_fig_l = Figure_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let tag_fig_segment_bc = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Figure_symbol_v.is_figure_set_body_segment_constructor s)
	&& (Figure_symbol_v.string_off s = "BC") 
    ) tag_fig_l;;

test_number 1 (
(tag_fig_segment_bc : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
        (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
          "BC"))),
   [1; 15; 1; 7; 5])
);;

(* Argument *)

let tag_fig = tag_fig_segment_bc;;

test_number 2 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
(Figure_symbol_t.Figure_set_symbol
   (Figure_set_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
         (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
            "BC"))),
 [1; 15; 1; 7; 5])
);;

(** {6 Coordinate_envelopee List of Tag} *)

let fen = 
    Figure_container_v.fence_as_list_of_tag 
      tag_fig 
  ;;

let tag_fsf_l = 
  List.map
    Figure_set_fence_tag_v.figure_set_fence_tag_off_figure_tag 
    fen
;;

test_number 3 (
(tag_fsf_l :
   Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag list ) =
[(Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
       "BC_B"),
  [1; 1; 15; 1; 7; 5]);
 (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
       "BC_C"),
  [2; 1; 15; 1; 7; 5])]
);;

let x = List.map
Figure_set_fence_envelope_v.envelope_of_tag
tag_fsf_l;;

let eee_ll = coordinate_envelopee_list_list_of_tag tag_fig;;
 
test_number 4 (
(eee_ll :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list list ) =
  [[((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
             "BC_B"))),
      [1; 1; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
             "BC_B"))),
      [2; 1; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
             "BC_B"))),
      [3; 1; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))];
   [((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
             "BC_C"))),
      [1; 2; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
             "BC_C"))),
      [2; 2; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (90.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
             "BC_C"))),
      [3; 2; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))]]
);;

(** {6 Envelope of Tag} *)

let env_fig = envelope_of_tag tag_fig;; 

test_number 5 (
(env_fig :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
            "BC_B"))),
     [1; 1; 15; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
            "BC_B"))),
     [2; 1; 15; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
            "BC_B"))),
     [3; 1; 15; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
            "BC_C"))),
     [1; 2; 15; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
            "BC_C"))),
     [2; 2; 15; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (90.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
            "BC_C"))),
     [3; 2; 15; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))]
);;

(** {6 Making} *)

test_number 6 (
env_fig = make tag_fig
);;

(** {6 Measure List of Tag} *)

let mea_l = measure_list_of_tag tag_fig;;

test_number 7 (
(mea_l : Measure_t.measure list ) =
  [(1.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom));
   (0.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree));
   (0.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom));
   (1.,
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
let mca_l = measure_canonical_list_of_calculation_name_of_tag nam_cal tag_fig;;

test_number 8 (
(mca_l : (float, Units_canonical_t.units_canonical) Doublet_t.doublet list ) =
 [(1.88972612456506206,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr);
   (0.,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_angle_radian);
   (0.,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr);
   (1.88972612456506206,
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

let uni_l = units_list_of_tag tag_fig;;

test_number 9 (
(uni_l : Units_t.units list ) =
  [Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree);
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)]
);;

(** {9 Float List of Tag} *)

let flo_l = float_list_of_tag tag_fig;; 

test_number 10 (
(flo_l : float list ) = 
[1.; 0.; 0.; 1.; 90.; 1.]
);;

(** {6 Readee List of Tag} *)

let rea_l = readee_list_of_tag tag_fig;;

test_number 11 (
(rea_l : Readee_t.readee list ) =
 [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Readee_t.Readee_measure
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

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_fig;; 

test_number 12 (
clo = rea_l
);;

(** {9 Coordinate_set_fence_tag List off Envelope} *)

let tag_csf_l = coordinate_set_fence_tag_list_off_envelope env_fig;;

test_number 13 (
(tag_csf_l : Coordinate_set_fence_tag_t.coordinate_set_fence_tag list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
           "BC_B"))),
    [1; 1; 15; 1; 5; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
           "BC_B"))),
    [2; 1; 15; 1; 5; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
           "BC_B"))),
    [3; 1; 15; 1; 5; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
           "BC_C"))),
    [1; 2; 15; 1; 5; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
           "BC_C"))),
    [2; 2; 15; 1; 5; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
           "BC_C"))),
    [3; 2; 15; 1; 5; 5])]
);;

(** {9 Coordinate_tag List off Envelope} *)

let tag_coo_l = coordinate_tag_list_off_envelope env_fig;;

test_number 14 (
(tag_coo_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
               "BC_B"))))),
    [1; 1; 15; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
               "BC_B"))))),
    [2; 1; 15; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
               "BC_B"))))),
    [3; 1; 15; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
               "BC_C"))))),
    [1; 2; 15; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
               "BC_C"))))),
    [2; 2; 15; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
             (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
               "BC_C"))))),
    [3; 2; 15; 1; 5; 5])]
);;

(** {9 Readee List off Envelope} *)

test_number 15 (
rea_l = readee_list_off_envelope env_fig
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 16 (
clo = closure_off_envelope env_fig
);;

(** {9 Measure List off Envelope} *)

test_number 17 (
mea_l = measure_list_off_envelope env_fig 
);;

(** {9 Units List off Envelope} *)

test_number 18 (
uni_l = units_list_off_envelope env_fig
);;

(** {9 Float List off Envelope} *)

test_number 19 (
flo_l = float_off_envelope env_fig
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_fig;;

test_number 20 (
(nam_env : string ) =
 " [\n   (coordinate_set_fence_heterogeneous_cylindrical_rho_constructor, (1.000000, angstrom)) (coordinate_set_fence_heterogeneous_cylindrical_phi_constructor, (0.000000, degree)) (coordinate_set_fence_heterogeneous_cylindrical_zed_constructor, (0.000000, angstrom)) (coordinate_set_fence_heterogeneous_cylindrical_rho_constructor, (1.000000, angstrom)) (coordinate_set_fence_heterogeneous_cylindrical_phi_constructor, (90.000000, degree)) (coordinate_set_fence_heterogeneous_cylindrical_zed_constructor, (1.000000, angstrom))\n  ]"
);;
