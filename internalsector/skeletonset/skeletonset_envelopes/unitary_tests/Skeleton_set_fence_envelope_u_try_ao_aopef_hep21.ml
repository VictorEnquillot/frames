open Make_test_v;;

testing "Skeleton_set_fence_envelope_v with
    Skeleton_set_fence_envelope_u_try_ao_aopef_hep21.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Skeleton_set_fence_envelope_u_try_ao_aopef_hep21.ml";; 

*)

open Skeleton_set_fence_envelope_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_ske_l = Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

let tag_ske_hep21 = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_constructor s) 
		    && (Skeleton_symbol_v.string_off s = "he p 2 1") 
    ) tag_ske_l;;

let tag_ssf_hep21 = Skeleton_set_fence_tag_v.skeleton_set_fence_tag_off_skeleton_tag tag_ske_hep21;;

(* Argument tag_ssf *)

let tag_ssf = tag_ssf_hep21;;

test_number 1 (
(tag_ssf :
   Skeleton_set_fence_symbol_t.skeleton_set_fence_symbol Tag_t.tag ) =
(Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
   (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
      (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "he p 2 1")),
 [1; 1; 2; 1; 1; 26; 5; 19; 5])
);;

(** {6 Bridge *)

let tag_par_pbt = bridge_of_tag tag_ssf;;

test_number 2 (
(tag_par_pbt : Parameter_tag_t.parameter_tag ) =
(Parameter_symbol_t.Parameter_set_symbol
   (Parameter_set_symbol_t.Parameter_set_body_symbol
      (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
            (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
               "he p 2 1")))),
 [4; 26; 5; 15; 5])
);;

test_number 3 (
parameter_tag_of_tag tag_ssf = tag_par_pbt
);;

let tag_psb = parameter_set_body_tag_of_tag tag_ssf;;

test_number 4 (
(tag_psb : Parameter_set_body_symbol_t.parameter_set_body_symbol Tag_t.tag ) =
  (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
    (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
      (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
        "he p 2 1")),
   [4; 26; 5; 15; 5])
);;

let tag_pbt = parameter_set_body_tuple_tag_of_tag tag_ssf;;

test_number 5 (
(tag_pbt :
  Parameter_set_body_tuple_symbol_t.parameter_set_body_tuple_symbol Tag_t.tag) =
  (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
    (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
      "he p 2 1"),
   [4; 26; 5; 15; 5])
);;

(** {6 Builder *)

let bui_pbt_t = Parameter_container_v.builder_tag_tuple_of_tag tag_par_pbt;;
 
test_number 6 (
(bui_pbt_t : Parameter_symbol_t.parameter_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Parameter_symbol_t.Parameter_set_symbol
      (Parameter_set_symbol_t.Parameter_set_fence_symbol
        (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
          (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
            (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
              "he p 2 1")))),
     [1; 4; 26; 5; 15; 5]),
    (Parameter_symbol_t.Parameter_set_symbol
      (Parameter_set_symbol_t.Parameter_set_fence_symbol
        (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
          (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
            (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
              "he p 2 1")))),
     [2; 4; 26; 5; 15; 5]))
);;

(** {6 Parameter_envelopee Tuple of Tag} *)

let pee_ssf_t = parameter_envelopee_tuple_of_tag tag_ssf;;

test_number 7 (
( pee_ssf_t :
  (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
  Doublet_t.doublet Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he p 2 1")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (2.28187,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he p 2 1")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.231152,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))
);;

(** {6 Parameter_envelopee Tuple_list of Tag} *)

let pee_ssf_tl = parameter_envelopee_tuple_list_of_tag tag_ssf;;
 
test_number 8 (
 [pee_ssf_t] = pee_ssf_tl
);;

(** {6 Envelope of Tag} *)

let env_ssf = envelope_of_tag tag_ssf;;

test_number 9 (
(env_ssf :
  (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
  Doublet_t.doublet Uno_t.uno Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he p 2 1")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (2.28187,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
         (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
           "he p 2 1")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.231152,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))]
);;

test_number 10 (
 pee_ssf_tl = env_ssf
);;

(** {6 Making} *)

test_number 11 (
env_ssf = make tag_ssf
);;

(** {9 Parameter_set_fence_symbol_tuple of Tag} *)

let sym_par_t = parameter_set_fence_symbol_tuple_of_tag tag_ssf;;

test_number 12 (
(sym_par_t :
  Parameter_set_fence_symbol_t.parameter_set_fence_symbol Tuple_t.tuple ) =
  Tuple_t.Duo
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he p 2 1")),
    Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 2 1")))
);;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol_tuple off Envelope} *)

let sym_psf_tl = parameter_set_fence_symbol_tuple_list_off_envelope env_ssf;;

test_number 13 (
(sym_psf_tl :
  Parameter_set_fence_symbol_t.parameter_set_fence_symbol Tuple_t.tuple list ) =
  [Tuple_t.Duo
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he p 2 1")),
     Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he p 2 1")))]
);;

(** {9 Readee Tuple_list off Envelope} *)

let rea_ssf_tl = readee_tuple_list_off_envelope env_ssf;;

test_number 14 (
(rea_ssf_tl : Readee_t.readee Tuple_t.tuple list ) =
  [Tuple_t.Duo
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (2.28187,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.231152,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

(** {9 Closure off Envelope : list of Readee} *)

let clo_ssf = closure_off_envelope env_ssf;;

test_number 15 ( 
(clo_ssf : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (2.28187,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.231152,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)))]
);;

(** {6 Measure Tuple of Tag} *)

let mea_ssf_tl = measure_tuple_list_of_tag tag_ssf;;

test_number 16 (
(mea_ssf_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((2.28187,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)),
     (0.231152,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)))]
);;

let nam_cal = "quantum";;
let mca_tl = measure_canonical_tuple_list_of_calculation_name_of_tag nam_cal tag_ssf;;

test_number 17 (
( mca_tl :
  (float, Units_canonical_t.units_canonical) Doublet_t.doublet Tuple_t.tuple
  list ) =
  [Tuple_t.Duo
    ((2.28187,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     (0.231152,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

(** {9 Units Tuple_list of Tag} *)

let uni_tl = units_tuple_list_of_tag tag_ssf;;

test_number 18 (
(uni_tl : Units_t.units Tuple_t.tuple list ) =
  [Tuple_t.Duo
    (Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

(** {9 Float Tuple_list of Tag} *)

let flo_tl = float_tuple_list_of_tag tag_ssf;; 

test_number 19 (
(flo_tl : float Tuple_t.tuple list ) = 
[Tuple_t.Duo (2.28187, 0.231152)]
);;

(** {6 Readee Tuple_list of Tag} *)

let rea_ssf_tl = readee_tuple_list_of_tag tag_ssf;;

test_number 20 (
(rea_ssf_tl : Readee_t.readee Tuple_t.tuple list )=
  [Tuple_t.Duo
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (2.28187,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.231152,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

(** {9 Readee Tuple_list off Envelope} *)

test_number 21 (
rea_ssf_tl = readee_tuple_list_off_envelope env_ssf
);;

(** {9 Closure : list of Readee} *)

let clo_ssf = closure_off_envelope env_ssf;;
test_number 22 (
( clo_ssf : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (2.28187,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.231152,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr)))]
);;

test_number 23 (
closure_of_tag tag_ssf = clo_ssf
);;

(** {9 Measure Tuple_list off Envelope} *)

test_number 24 (
mea_ssf_tl = measure_tuple_list_off_envelope env_ssf 
);;

(** {9 Units Tuple_list off Envelope} *)

test_number 25 (
uni_tl = units_tuple_list_off_envelope env_ssf
);;

(** {9 Float Tuple_list off Envelope} *)

test_number 26 (
flo_tl = float_tuple_list_off_envelope env_ssf
);;

(** {6 Naming_for_envelope} *)

let sna_ssf_env = shortname env_ssf;;

test_number 27 (
(sna_ssf_env : string ) =
  " [\n   ((\"he p 2 1\" exponent 2.28187 bohr),(\"he p 2 1\" coefficient 0.231152 bohr))\n  ]"
);;

let sof_ssf_env = string_off env_ssf;;

test_number 28 (
(sof_ssf_env : string ) =
" [\n   (he p 2 1,he p 2 1)\n  ]"
);;

let dim_ssf_env = dimension env_ssf;;

test_number 29 (
(dim_ssf_env : string ) =
" [\n   (bohr,bohr)\n  ]"
);;
