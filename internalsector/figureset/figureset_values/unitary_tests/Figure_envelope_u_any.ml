open Make_test_v;;

testing "Figure_envelope_v with
    Figure_envelope_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_envelope_u_any.ml";; 

*)

open Figure_envelope_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_fig_l = Figure_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let tag_fig_point_a = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Figure_symbol_v.is_figure_set_fence_centered_aopef_constructor s)
	&& (Figure_symbol_v.string_off s = "he p 2 2") 
    ) tag_fig_l;;

test_number 1 (
(tag_fig_point_a : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
        (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
          (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
            "he p 2 2")))),
   [2; 1; 2; 1; 1; 22; 5; 20; 5])
);;

(* Argument *)

let tag_fig = tag_fig_point_a;;

(** {6 Coordinate_envelopee List of Tag} *)

let eee_ll = coordinate_envelopee_list_list_of_tag tag_fig;;
 
test_number 2 (
(eee_ll :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list list ) =
  [[((Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
       (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_exponent_symbol
         (Coordinate_set_fence_aopef_exponent_symbol_t.Coordinate_set_fence_aopef_exponent_constructor
           "he p 2 2")),
      [1; 5; 22; 5; 16; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.465248,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
       (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_coefficient_symbol
         (Coordinate_set_fence_aopef_coefficient_symbol_t.Coordinate_set_fence_aopef_coefficient_constructor
           "he p 2 2")),
      [2; 5; 22; 5; 16; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.866764,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]]
);;

(** {6 Envelope of Tag} *)

let env_fig = envelope_of_tag tag_fig;; 

test_number 3 (
(env_fig :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
      (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_exponent_symbol
        (Coordinate_set_fence_aopef_exponent_symbol_t.Coordinate_set_fence_aopef_exponent_constructor
          "he p 2 2")),
     [1; 5; 22; 5; 16; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.465248,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
      (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_coefficient_symbol
        (Coordinate_set_fence_aopef_coefficient_symbol_t.Coordinate_set_fence_aopef_coefficient_constructor
          "he p 2 2")),
     [2; 5; 22; 5; 16; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.866764,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

(** {6 Making} *)

test_number 4 (
env_fig = make tag_fig
);;

(** {6 Measure List of Tag} *)

let mea_l = measure_list_of_tag tag_fig;;

test_number 5 (
(mea_l : Measure_t.measure list ) =
  [(0.465248,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (0.866764,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

let nam_cal = "quantum";;
let mca_l = measure_canonical_list_of_calculation_name_of_tag nam_cal tag_fig;;

test_number 6 (
(mca_l : (float, Units_canonical_t.units_canonical) Doublet_t.doublet list ) =
  [(0.465248,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr);
   (0.866764,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr)]
);;

(** {9 Units List of Tag} *)

let uni_l = units_list_of_tag tag_fig;;

test_number 7 (
(uni_l : Units_t.units list ) =
  [Units_t.Units_canonical
    (Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_length_bohr);
   Units_t.Units_canonical
    (Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_length_bohr)]
);;

(** {9 Float List of Tag} *)

let flo_l = float_list_of_tag tag_fig;; 

test_number 8 (
(flo_l : float list ) = 
[0.465248; 0.866764]
);;

(** {6 Readee List of Tag} *)

let rea_l = readee_list_of_tag tag_fig;;

test_number 9 (
(rea_l : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.465248,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.866764,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)))]
);;

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_fig;; 

test_number 10 (
( clo : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.465248,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.866764,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)))]
);;

(** {9 Coordinate_set_fence_tag List off Envelope} *)

let tag_csf_l = coordinate_set_fence_tag_list_off_envelope env_fig;;

test_number 11 (
(tag_csf_l : Coordinate_set_fence_tag_t.coordinate_set_fence_tag list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
     (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_exponent_symbol
       (Coordinate_set_fence_aopef_exponent_symbol_t.Coordinate_set_fence_aopef_exponent_constructor
         "he p 2 2")),
    [1; 5; 22; 5; 16; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
     (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_coefficient_symbol
       (Coordinate_set_fence_aopef_coefficient_symbol_t.Coordinate_set_fence_aopef_coefficient_constructor
         "he p 2 2")),
    [2; 5; 22; 5; 16; 5])]
);;

(** {9 Coordinate_tag List off Envelope} *)

let tag_coo_l = coordinate_tag_list_off_envelope env_fig;;

test_number 12 (
(tag_coo_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
         (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_exponent_symbol
           (Coordinate_set_fence_aopef_exponent_symbol_t.Coordinate_set_fence_aopef_exponent_constructor
             "he p 2 2")))),
    [1; 5; 22; 5; 16; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_aopef_symbol
         (Coordinate_set_fence_aopef_symbol_t.Coordinate_set_fence_aopef_coefficient_symbol
           (Coordinate_set_fence_aopef_coefficient_symbol_t.Coordinate_set_fence_aopef_coefficient_constructor
             "he p 2 2")))),
    [2; 5; 22; 5; 16; 5])]
);;

(** {9 Readee List off Envelope} *)

test_number 13 (
rea_l = readee_list_off_envelope env_fig
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 14 (
clo = closure_off_envelope env_fig
);;

(** {9 Measure List off Envelope} *)

test_number 15 (
mea_l = measure_list_off_envelope env_fig 
);;

(** {9 Units List off Envelope} *)

test_number 16 (
uni_l = units_list_off_envelope env_fig
);;

(** {9 Float List off Envelope} *)

test_number 17 (
flo_l = float_off_envelope env_fig
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_fig;;

test_number 18 (
(nam_env : string ) =
  " [\n   (coordinate_set_fence_aopef_exponent_constructor, (0.465248, canonical_quantum_length_bohr)) (coordinate_set_fence_aopef_coefficient_constructor, (0.866764, canonical_quantum_length_bohr))\n  ]"
);;
