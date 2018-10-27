open Make_test_v;;

testing "Parameter_set_fence_envelope_v with
    Parameter_set_fence_envelope_u_try_ao_aopef_hep21_coe.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Parameter_set_fence_envelope_u_try_ao_aopef_hep21_coe.ml";; 

*)

open Parameter_set_fence_envelope_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_par_l = Parameter_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

let tag_par_hep21_coe = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Parameter_symbol_v.is_parameter_set_fence_aopef_coefficient_constructor s) 
		    && (Parameter_symbol_v.string_off s = "he p 2 1") 
    ) tag_par_l;;

let tag_psf_hep21_coe = Parameter_set_fence_tag_v.parameter_set_fence_tag_off_parameter_tag tag_par_hep21_coe;;

(* Argument tag_psf *)

let tag_psf = tag_psf_hep21_coe;;

test_number 1 (
(tag_psf :
   Parameter_set_fence_symbol_t.parameter_set_fence_symbol Tag_t.tag ) =
  (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
    (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
      (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
        "he p 2 1")),
   [2; 4; 26; 5; 15; 5])
);;

(** {6 Parameter_envelopee of Tag} *)

let pee = parameter_envelopee_of_tag tag_psf ;;

test_number 2 (
( pee :
  (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
  Doublet_t.doublet ) =
  (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
    (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
      (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
        "he p 2 1")),
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.231152,
       Units_t.Units_canonical
        (Units_canonical_t.Units_canonical_quantum
          Units_canonical_quantum_t.Canonical_quantum_length_bohr))))
);;

(** {6 Envelope of Tag} *)

let env_psf = envelope_of_tag tag_psf;;

test_number 3 (
pee = env_psf
);;

(** {6 Parameter_envelopee Tuple of Tag} *)

let pee_t = parameter_envelopee_tuple_of_tag tag_psf;;
 
test_number 4 (
(pee_t :
  (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
  Doublet_t.doublet Uno_t.uno Tuple_t.tuple) =
  Tuple_t.Uno
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 2 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.231152,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))))
);;

(** {9 Envelope_as Tuple of Tag} *)

test_number 5 (
pee_t = envelope_as_tuple_of_tag tag_psf
);;

(** {6 Making} *)

test_number 6 (
env_psf = make tag_psf
);;

(** {6 Measure of Tag} *)

let mea = measure_of_tag tag_psf;;

test_number 7 (
( mea : Measure_t.measure ) =
  (0.231152,
   Units_t.Units_canonical
    (Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_length_bohr))
);;

(** {6 Measure_actual of Tag} *)

let mac = measure_actual_of_tag tag_psf;;

