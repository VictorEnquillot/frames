open Make_test_v;;

testing "Parameter_set_body_envelope_v with
    Parameter_set_body_envelope_u_try_ao_aopef_hep21.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Parameter_set_body_envelope_u_try_ao_aopef_hep21.ml";; 

*)

open Parameter_set_body_envelope_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_par_l = Parameter_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

let sof_par_hep21 = "he p 2 1";;
let tag_par_hep21_l = List.filter (fun t -> Parameter_tag_v.string_off t = sof_par_hep21) tag_par_l;;

test_number 1 (
(tag_par_hep21_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list) =
 [(Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he p 2 1")))),
    [4; 26; 5; 15; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
           (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
             "he p 2 1")))),
    [1; 4; 26; 5; 15; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
           (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
             "he p 2 1")))),
    [2; 4; 26; 5; 15; 5])]
);;

let tag_par_hep21 = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor s) 
	&& (Parameter_symbol_v.string_off s = sof_par_hep21) 
    ) tag_par_l;;

test_number 2 (
(tag_par_hep21 : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol
    (Parameter_set_symbol_t.Parameter_set_body_symbol
      (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
        (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
          (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
            "he p 2 1")))),
   [4; 26; 5; 15; 5])
);;

let tag_psb_hep21 = Parameter_set_body_tag_v.parameter_set_body_tag_off_parameter_tag tag_par_hep21;;

(* Argument tag_psb *)

let tag_psb = tag_psb_hep21;;

test_number 3 (
(tag_psb : Parameter_set_body_symbol_t.parameter_set_body_symbol Tag_t.tag ) =
  (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
    (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
      (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
        "he p 2 1")),
   [4; 26; 5; 15; 5])
);;

(** {6 Envelope of Tag} *)

let env_psb = envelope_of_tag tag_psb ;;

test_number 4 (
(env_psb :
  (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple ) =
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

(** {6 Making} *)

test_number 5 (
make tag_psb = env_psb
);;

(** {6 Parameter_envelopee Tuple of Tag} *)

let pee_t = parameter_envelopee_tuple_of_tag tag_psb;;
 
test_number 6 (
pee_t = env_psb
);;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol Tuple} *)

let sym_psf_t = parameter_set_fence_symbol_tuple_off_envelope env_psb;;

test_number 7 (
(sym_psf_t :
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

test_number 8 (
parameter_set_fence_symbol_tuple_of_tag tag_psb = sym_psf_t 
);;

(** {9 Parameter_symbol Tuple} *)

let sym_par_t = parameter_symbol_tuple_off_envelope env_psb;;

test_number 9 (
(sym_par_t : Parameter_symbol_t.parameter_symbol Tuple_t.tuple ) =
  Tuple_t.Duo
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
           (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
             "he p 2 1")))),
    Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
           (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
             "he p 2 1")))))
);;

test_number 10 (
parameter_symbol_tuple_of_tag tag_psb = sym_par_t 
);;

(** {6 Readee Tuple of Tag} *)

let rea_t = readee_tuple_of_tag tag_psb;;

test_number 11 (
(rea_t : Readee_t.readee Tuple_t.tuple ) =
  Tuple_t.Duo
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
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))))
);;

test_number 12 (
readee_tuple_of_tag tag_psb = rea_t
);;

(** {9 Closure off Envelope : tuple of Readee} *)

let clo_psb = closure_off_envelope env_psb;;

test_number 13 (
(clo_psb : Readee_t.readee Tuple_t.tuple ) =
  Tuple_t.Duo
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
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))))
);;

test_number 14 (
closure_of_tag tag_psb = clo_psb
);;

(** {6 Measure Tuple of Tag} *)

let mea_psb_t = measure_tuple_of_tag tag_psb;;

test_number 15 (
(mea_psb_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Duo
   ((2.28187,
     Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr)),
    (0.231152,
     Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr)))
);;

test_number 16 (
 measure_tuple_of_tag tag_psb = mea_psb_t
);;

(** {6 Measure_actual Tuple of Tag} *)

let mac_psb_t =measure_actual_tuple_of_tag tag_psb;;

test_number 17 (
(mac_psb_t :
  (float, Units_actual_t.units_actual) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Duo
   ((2.28187, Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
    (0.231152, Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

(** {6 Measure_canonical Tuple of Tag} *)

let nam_cal = "quantum";;
let mca_psb_t = measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_psb;;

test_number 18 (
(mca_psb_t :
  (float, Units_canonical_t.units_canonical) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Duo
   ((2.28187,
     Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_length_bohr),
    (0.231152,
     Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_length_bohr))
);;

(** {9 Units Tuple of Tag} *)

let uni_psb_t = units_tuple_of_tag tag_psb;;

test_number 19 (
(uni_psb_t : Units_t.units Tuple_t.tuple ) =
  Tuple_t.Duo
   (Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))
);;

test_number 20 ( 
units_tuple_of_tag tag_psb = uni_psb_t
);;

(** {9 Float Tuple of Tag} *)

let flo_psb_t = float_tuple_of_tag tag_psb;; 

test_number 21 (
(flo_psb_t : float Tuple_t.tuple) = 
 Tuple_t.Duo (2.28187, 0.231152)
);;

test_number 22 (
float_tuple_of_tag tag_psb = flo_psb_t
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_psb;;

test_number 23 (
(nam_env : string ) =
  "((parameter_set_fence_aopef_exponent_constructor, (2.281870, canonical_quantum_length_bohr)),(parameter_set_fence_aopef_coefficient_constructor, (0.231152, canonical_quantum_length_bohr)))"
);;

let sof_env = string_off env_psb;;

test_number 24 (
(sof_env : string ) =
"(he p 2 1,he p 2 1)"
);;

let sna_env = shortname env_psb;;

test_number 25 (
(sna_env : string ) =
"((\"he p 2 1\" exponent 2.28187 bohr),(\"he p 2 1\" coefficient 0.231152 bohr))"
);;

let dim_env = dimension env_psb;;

test_number 26 (
(dim_env : string ) =
"(bohr,bohr)"
);;
