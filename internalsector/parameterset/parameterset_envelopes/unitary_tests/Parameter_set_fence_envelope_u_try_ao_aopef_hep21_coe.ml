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

let sof_par_hep21 = "he p 2 1";;
let tag_par_hep21_coe = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Parameter_symbol_v.is_parameter_set_fence_aopef_coefficient_constructor s) 
		    && (Parameter_symbol_v.string_off s = sof_par_hep21) 
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

test_number 8 (
(mac : (float, Units_actual_t.units_actual) Doublet_t.doublet ) =
(0.231152, 
 Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)
);;

(** {6 Measure_canonical of Tag} *)

let nam_cal = "quantum";;
let mca = measure_canonical_of_calculation_name_of_tag nam_cal tag_psf;;

test_number 9 (
(mca : (float, Units_canonical_t.units_canonical) Doublet_t.doublet) =
  (0.231152,
   Units_canonical_t.Units_canonical_quantum
    Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

(** {6 Measure Tuple of Tag} *)

let mea_t = measure_tuple_of_tag tag_psf;;

test_number 10 (
(mea_t : Measure_t.measure Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (0.231152,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))
);;

(** {6 Measure_actual Tuple of Tag} *)

let mac_t = measure_actual_tuple_of_tag tag_psf;;

test_number 11 (
(mac_t :
  (float, Units_actual_t.units_actual) Doublet_t.doublet Uno_t.uno
  Tuple_t.tuple ) =
  Tuple_t.Uno
   (0.231152, Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)
);; 

(** {6 Measure_canonical Tuple of Tag} *)

let mca_t = measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_psf;;

test_number 12 (
( mca_t :
  (float, Units_canonical_t.units_canonical) Doublet_t.doublet Uno_t.uno
  Tuple_t.tuple ) =
  Tuple_t.Uno
   (0.231152,
    Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

(** {9 Units of Tag} *)

let uni = units_of_tag tag_psf;;

test_number 13 (
( uni : Units_t.units ) =
  Units_t.Units_canonical
   (Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

(** {9 Units Tuple of Tag} *)

let uni_t = units_tuple_of_tag tag_psf;;

test_number 14 (
( uni_t : Units_t.units Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))
);;

(** {9 Float of Tag} *)

let flo = float_of_tag tag_psf;; 

test_number 15 (
(flo : float ) = 
 0.231152
);;

(** {9 Float Tuple of Tag} *)

let flo_t = float_tuple_of_tag tag_psf;; 

test_number 16 (
(flo_t : float Uno_t.uno Tuple_t.tuple ) = 
Tuple_t.Uno 0.231152
);;

(** {6 Readee of Tag} *)

let rea = readee_of_tag tag_psf;;

test_number 17 (
(rea : Readee_t.readee ) =
  Readee_t.Readee_measure
   (Readee_measure_t.Readee_measure
     (0.231152,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)))
);;

(** {6 Readee Tuple of Tag} *)

let rea_t = readee_tuple_of_tag tag_psf;;

test_number 18 (
(rea_t : Readee_t.readee Uno_t.uno Tuple_t.tuple )=
  Tuple_t.Uno
   (Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.231152,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))))
);;

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_psf;;

test_number 19 (
rea = closure_of_tag tag_psf
);; 

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol off Envelope} *)

let sym_psf = parameter_set_fence_symbol_off_envelope env_psf;;

test_number 20 (
(sym_psf : Parameter_set_fence_symbol_t.parameter_set_fence_symbol ) =
  Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
   (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
     (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
       "he p 2 1"))
);;

(** {9 Parameter_set_fence_tag_tuple off Envelope} *)

let sym_psf_t = parameter_set_fence_symbol_tuple_off_envelope env_psf;;

test_number 21 (
(sym_psf_t :
  Parameter_set_fence_symbol_t.parameter_set_fence_symbol Tuple_t.tuple ) =
  Tuple_t.Uno
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 2 1")))
);; 

(** {9 Readee off Envelope} *)

test_number 22 (
rea = readee_off_envelope env_psf
);;

(** {9 Readee Tuple off Envelope} *)

test_number 23 (
rea_t = readee_tuple_off_envelope env_psf
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 24 (
clo = closure_off_envelope env_psf
);;

(** {9 Measure off Envelope} *)

test_number 25 (
mea = measure_off_envelope env_psf 
);;

(** {9 Measure Tuple off Envelope} *)

test_number 26 (
mea_t = measure_tuple_off_envelope env_psf 
);;

(** {9 Float off Envelope} *)

test_number 27 (
flo = float_off_envelope env_psf
);;

(** {9 Float Tuple off Envelope} *)

test_number 28 (
flo_t = float_tuple_off_envelope env_psf
);;

(** {9 Units off Envelope} *)

test_number 29 (
uni = units_off_envelope env_psf
);;

(** {9 Units Tuple off Envelope} *)

test_number 30 (
uni_t = units_tuple_off_envelope env_psf
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_psf;;

test_number 31 (
(nam_env : string ) =
  "(parameter_set_fence_aopef_coefficient_constructor, (0.231152, canonical_quantum_length_bohr))"
);;

let sof_env = string_off env_psf;;

test_number 32 (
(sof_env : string ) = 
"he p 2 1"
);;

let sna_env = shortname env_psf;;

test_number 33 (
(sna_env : string ) = 
"(\"he p 2 1\" coefficient 0.231152 bohr)"
);;
