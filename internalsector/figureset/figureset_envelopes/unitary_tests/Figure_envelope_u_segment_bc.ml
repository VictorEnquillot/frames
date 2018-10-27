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

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_fig_l = Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

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
   [1; 18; 1; 7; 5])
);;

(* Argument tag_fig *)

let tag_fig = tag_fig_segment_bc;;

test_number 2 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
(Figure_symbol_t.Figure_set_symbol
   (Figure_set_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
         (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
            "BC"))),
 [1; 18; 1; 7; 5])
);;

(** {6 Fence} *)

let tag_fsf_l = figure_set_fence_tag_list_of_tag tag_fig;;

test_number 3 (
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

(** {6 Son Tag List} *)

let tag_fig_son_l = figure_son_tag_list_of_tag tag_fig;;

test_number 4 (
(tag_fig_son_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_set_symbol
     (Figure_set_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
         (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
           "BC_B"))),
    [1; 1; 18; 1; 7; 5]);
   (Figure_symbol_t.Figure_set_symbol
     (Figure_set_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
         (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
           "BC_C"))),
    [2; 1; 18; 1; 7; 5])]
);;

(** {6 Fence Envelope of Tag i.e. a tuple list list } *)

let env_fsf_l = figure_set_fence_envelope_list_of_tag tag_fig;;

test_number 5 (
(env_fsf_l :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple list list ) =
  [[Tuple_t.Trio
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
              Units_actual_length_t.Angstrom)))))];
   [Tuple_t.Trio
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
              Units_actual_length_t.Angstrom)))))]]
);;

(** {6 Coordinate_envelopee_tuple_list list of Tag from Fence} *)

let eee_coo_tll = coordinate_envelopee_tuple_list_list_of_tag tag_fig;;

test_number 6 (
eee_coo_tll = env_fsf_l
);;

(** {6 Envelope of Tag} *)

let env_fig = envelope_of_tag tag_fig;; 

test_number 7 (
(env_fig :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple list ) =
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

(** {6 Making} *)

test_number 8 (
env_fig = make tag_fig
);;

(** {9 Figure_son_envelope_list_of_tag } *)

let env_fig_son_l = figure_son_envelope_list_of_tag tag_fig;;

test_number 9 (
(env_fig_son_l :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple list list ) =
  [[Tuple_t.Trio
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
              Units_actual_length_t.Angstrom)))))];
   [Tuple_t.Trio
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
              Units_actual_length_t.Angstrom)))))]]
);;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_symbol Tuple_list} *)

let sym_csf_tl = coordinate_set_fence_symbol_tuple_list_off_envelope env_fig;;

test_number 10 (
(sym_csf_tl :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol Tuple_t.tuple
  list ) =
  [Tuple_t.Trio
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
            "BC_B"))),
     Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
            "BC_B"))),
     Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
            "BC_B"))));
   Tuple_t.Trio
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
            "BC_C"))),
     Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
            "BC_C"))),
     Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
            "BC_C"))))]
);;

(** {9 Readee Tuple_list} *)

let rea_tl = readee_tuple_list_off_envelope env_fig;;

test_number 11 (
(rea_tl : Readee_t.readee Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
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
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))]
);;

(** {9 Closure : tuple_list of Readee} *)

let clo_fig = closure_off_envelope env_fig;;

test_number 12 (
clo_fig = rea_tl
);;

(** {6 Measure Tuple_list of Tag} *)

let mea_tl = measure_tuple_list_off_envelope env_fig;;

test_number 13 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Tuple_t.Trio
    ((1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (90.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)),
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
);;

(** {6 Measure_canonical Tuple_list of Tag} *)

let nam_cal = "quantum";;
let mca_tl = measure_canonical_tuple_list_of_calculation_name_off_envelope nam_cal env_fig;;

test_number 14 (
(mca_tl :
  (float, Units_canonical_t.units_canonical) Doublet_t.doublet Tuple_t.tuple
  list ) =
  [Tuple_t.Trio
    ((1.88972612456506206,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     (0.,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_angle_radian),
     (0.,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   Tuple_t.Trio
    ((1.88972612456506206,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     (1.57079632679489656,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_angle_radian),
     (1.88972612456506206,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

(** {9 Units Tuple_list} *)

let uni_tl = units_tuple_list_off_envelope env_fig;;

test_number 15 (
(uni_tl : Units_t.units Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom));
   Tuple_t.Trio
    (Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))]
);;

(** {9 Float Tuple_list} *)

let flo_tl = float_tuple_list_off_envelope env_fig;;

test_number 16 (
(flo_tl : float Tuple_t.tuple list ) =
 [Tuple_t.Trio (1., 0., 0.); Tuple_t.Trio (1., 90., 1.)]
);;

(** {6 Naming} *)

let nam_env = name env_fig;;

test_number 17 (
(nam_env : string ) =
  " [\n   ((coordinate_set_fence_heterogeneous_cylindrical_rho_constructor, (1.000000, angstrom)), (coordinate_set_fence_heterogeneous_cylindrical_phi_constructor, (0.000000, degree)), (coordinate_set_fence_heterogeneous_cylindrical_zed_constructor, (0.000000, angstrom))) ((coordinate_set_fence_heterogeneous_cylindrical_rho_constructor, (1.000000, angstrom)), (coordinate_set_fence_heterogeneous_cylindrical_phi_constructor, (90.000000, degree)), (coordinate_set_fence_heterogeneous_cylindrical_zed_constructor, (1.000000, angstrom)))\n  ]"
);;

let sna_env = shortname env_fig;;

test_number 18 (
(sna_env : string ) =
  " [\n   ((BC_B rho 1 length), (BC_B phi 0 angle), (BC_B zed 0 length)) ((BC_C rho 1 length), (BC_C phi 90 angle), (BC_C zed 1 length))\n  ]"
);;

