open Make_test_v;;

testing "Parameter_envelope_v with
   Parameter_envelope_u_try_ao_coefficient.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Parameter_envelope_u_try_ao_coefficient.ml";;

*)

open Parameter_envelope_v;;

let nam_dba = "nwchem";;
let nam_dbo = "try_ao";;

let tag_par_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_par_coe = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Parameter_symbol_v.string_off s = "he p 2 2") 
        && 
      (Parameter_symbol_v.is_parameter_set_fence_aopef_coefficient_constructor s)
    )
    tag_par_l;;

test_number 1 (
(tag_par_coe : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol
    (Parameter_set_symbol_t.Parameter_set_fence_symbol
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 2")))),
   [2; 5; 22; 5; 16; 5])
);;

(* Argument Parameter_tag *)

let tag_par = tag_par_coe;;

(** {6 Envelopee List} *)

let eee_par_l = parameter_envelopee_list_of_tag tag_par;;

test_number 2 (
(eee_par_l :
  (Parameter_set_fence_tag_t.parameter_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he p 2 2")),
     [2; 5; 22; 5; 16; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.866764,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

(** {6 Envelope of Tag} *)

let env_par = envelope_of_tag tag_par;;
 
test_number 3 (
eee_par_l = env_par
);;

(** {6 Making} *)

test_number 4 (
env_par = make tag_par 
);;

(** {6 Measure List of Tag} *)

let mea_l = measure_list_of_tag tag_par;;

test_number 5 (
( mea_l : Measure_t.measure list ) =
  [(0.866764,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

(** {6 Measure_canonical List of Tag} *)

let nam_cal = "classical";;

let mca_l = measure_canonical_list_of_calculation_name_of_tag nam_cal tag_par;;
 
test_number 6 (
(mca_l : (float, Units_canonical_t.units_canonical) Doublet_t.doublet list ) =
  [(0.866764,
    Units_canonical_t.Units_canonical_classical
     Units_canonical_classical_t.Canonical_classical_length_angstrom)]
);;

(** {9 Units List of Tag} *)

let uni_l = units_list_of_tag tag_par;;

test_number 7 (
( uni_l : Units_t.units list ) =
  [Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)]
);;

(** {9 Float List of Tag} *)

let flo_l = float_list_of_tag tag_par;;

test_number 8 (
(flo_l : float list ) = 
[1.]
);;

(** {6 Readee List of Tag} *)

let rea_l = readee_list_of_tag tag_par;;

test_number 9 (
( rea_l : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)))]
);;

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_par;;

test_number 10 (
clo = rea_l
);;


(** {6 Extracting} *)

(** {9 Parameter_set_fence_tag List off Envelope} *)

let tag_csf_l = parameter_set_fence_tag_list_off_envelope env_par;;

test_number 11 (
(tag_csf_l : Parameter_set_fence_tag_t.parameter_set_fence_tag list ) =
  [(Parameter_set_fence_symbol_t.Parameter_set_fence_heterogeneous_symbol
     (Parameter_set_fence_heterogeneous_symbol_t.Parameter_set_fence_heterogeneous_spherical_symbol
       (Parameter_set_fence_heterogeneous_spherical_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_symbol
         (Parameter_set_fence_heterogeneous_spherical_rho_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_constructor
           "A_A"))),
    [1; 1; 10; 1; 5; 5])]
);;

(** {9 Parameter_tag List off Envelope} *)

let tag_par_l = parameter_tag_list_off_envelope env_par;;

test_number 12 (
( tag_par_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_heterogeneous_symbol
         (Parameter_set_fence_heterogeneous_symbol_t.Parameter_set_fence_heterogeneous_spherical_symbol
           (Parameter_set_fence_heterogeneous_spherical_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_symbol
             (Parameter_set_fence_heterogeneous_spherical_rho_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 5; 5])]
);;

(** {9 Readee List off Envelope} *)

test_number 13 (
rea_l = readee_list_off_envelope env_par
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 14 (
clo = closure_off_envelope env_par 
);;

(** {9 Measure List off Envelope} *)

test_number 15 (
mea_l = measure_list_off_envelope env_par
);;

(** {9 Units List off Envelope} *)

test_number 16 ( 
uni_l = units_list_off_envelope env_par
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_par;;

test_number 17 (
(nam_env : string ) =
  " [\n   (parameter_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, meter))\n  ]"
);;

let sof_env = string_off env_par;;

test_number 18 (
(sof_env : string ) =
  " [\n   (parameter_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, meter))\n  ]"
);;

let fna = fullname env_par;;

test_number 19 (
(fna : string ) =
  " [\n   ((Parameter_set_fence_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_constructor \"A_A\", [1; 1; 10; 1; 5; 5]), Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, meter))\n  ]"
);;

let lna = longname env_par;;

test_number 20 (
(lna : string ) =
  " [\n   (Parameter_set_fence_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_constructor Tag_t.tag, Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, meter))\n  ]"
);;
