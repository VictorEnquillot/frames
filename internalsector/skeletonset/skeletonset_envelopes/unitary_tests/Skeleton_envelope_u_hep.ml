open Make_test_v;;

testing "Skeleton_envelope_v with
    Skeleton_envelope_u_hep.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Skeleton_envelope_u_hep.ml";; 

*)

open Skeleton_envelope_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_ske_l = Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

let tag_ske_hep = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor s)
	&& (Skeleton_symbol_v.string_off s = "he p") 
    ) tag_ske_l;;

test_number 1 (
(tag_ske_hep : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
          (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol
            (Skeleton_set_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_constructor
              "he p"))))),
   [2; 1; 1; 26; 5; 19; 5])
);;

(* Argument tag_ske *)

let tag_ske = tag_ske_hep;;

(** {6 Fence} *)

let tag_ssf_l = skeleton_set_fence_tag_list_of_tag tag_ske;;

test_number 2 (
(tag_ssf_l :
  Skeleton_set_fence_symbol_t.skeleton_set_fence_symbol Tag_t.tag list ) =
  [(Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
     (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
       (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "he p 2 1")),
    [1; 1; 2; 1; 1; 26; 5; 19; 5]);
   (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
     (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
       (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "he p 2 2")),
    [2; 1; 2; 1; 1; 26; 5; 19; 5]);
   (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
     (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
       (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "he p 3 1")),
    [1; 2; 2; 1; 1; 26; 5; 19; 5])]
);;

let tag_ske_son_l = skeleton_son_tag_list_of_tag tag_ske;; 

test_number 3 (
(tag_ske_son_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
[(Skeleton_symbol_t.Skeleton_set_symbol
   (Skeleton_set_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
         (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
           (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
             "he p 2"))))),
  [1; 2; 1; 1; 26; 5; 19; 5]);
 (Skeleton_symbol_t.Skeleton_set_symbol
   (Skeleton_set_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
         (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
           (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
             "he p 3"))))),
  [2; 2; 1; 1; 26; 5; 19; 5])]
);;

(** {6 Fence Envelope of Tag i.e. a tuple list list } *)

let env_ssf_l = skeleton_set_fence_envelope_list_of_tag tag_ske;;

test_number 4 (
(env_ssf_l : (Parameter_set_fence_symbol_t.parameter_set_fence_symbol,
	      Readee_t.readee)
   Doublet_t.doublet Uno_t.uno Tuple_t.tuple list list ) =
[[Tuple_t.Duo
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
            Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))];
 [Tuple_t.Duo
   ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he p 2 2")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.465248,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he p 2 2")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.866764,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))];
 [Tuple_t.Duo
   ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he p 3 1")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.124328,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he p 3 1")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))]]
);;

(** {6 Parameter_envelopee_tuple list_list of Tag} *)

let eee_par_tll = parameter_envelopee_tuple_list_list_of_tag tag_ske;;
 
test_number 5 (
(eee_par_tll :
  (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple list list ) =
  [[Tuple_t.Duo
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
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))];
   [Tuple_t.Duo
     ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 2")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.465248,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 2")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.866764,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))];
   [Tuple_t.Duo
     ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 3 1")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.124328,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 3 1")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (1.,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))]]
);;

(** {6 Envelope of Tag} *)

let cou = List.length env_ssf_l;;

test_number 6 (
(cou : int ) = 
3
);;

let env_ske = envelope_of_tag tag_ske;; 

test_number 7 (
( env_ske : (Parameter_set_fence_symbol_t.parameter_set_fence_symbol,
	     Readee_t.readee)
    Doublet_t.doublet Tuple_t.tuple list ) =
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
           Units_canonical_quantum_t.Canonical_quantum_length_bohr)))));
 Tuple_t.Duo
  ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he p 2 2")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.465248,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 2 2")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.866764,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr)))));
 Tuple_t.Duo
  ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he p 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.124328,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))]
);;

(** {6 Making} *)

test_number 8 (
env_ske = make tag_ske
);;

(** {9 Skeleton_son_envelope_list_of_tag } *)

let env_ske_son_l = skeleton_son_envelope_list_of_tag tag_ske;;

test_number 9 (
(env_ske_son_l :
   (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
   Doublet_t.doublet Tuple_t.tuple list list ) =
[[Tuple_t.Duo
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
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))));
    Tuple_t.Duo
     ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 2")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.465248,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 2")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.866764,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))];
   [Tuple_t.Duo
     ((Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 3 1")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (0.124328,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 3 1")),
       Readee_t.Readee_measure
        (Readee_measure_t.Readee_measure
          (1.,
           Units_t.Units_canonical
            (Units_canonical_t.Units_canonical_quantum
              Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))]]
);;

let cou = List.length env_ske_son_l;;

test_number 10 (
(cou : int ) = 
2
);;

(** {6 Extracting off Envelope} *)

let sym_psf_tl = parameter_set_fence_symbol_tuple_list_off_envelope env_ske;;

test_number 11 (
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
          "he p 2 1")));
   Tuple_t.Duo
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he p 2 2")),
     Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he p 2 2")));
   Tuple_t.Duo
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he p 3 1")),
     Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he p 3 1")))]
);;

(** {9 Readee Tuple_list} *)

let rea_tl = readee_tuple_list_off_envelope env_ske;;

test_number 12 (
( rea_tl : Readee_t.readee Tuple_t.tuple list ) =
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
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Tuple_t.Duo
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.465248,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.866764,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Tuple_t.Duo
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.124328,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

(** {9 Closure : Tuple_list of Readee} *)

let clo_ske = closure_off_envelope env_ske;; 

test_number 13 (
(clo_ske : Readee_t.readee Tuple_t.tuple list ) =
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
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Tuple_t.Duo
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.465248,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.866764,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Tuple_t.Duo
    (Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.124328,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

(** {6 Measure Tuple_list of Tag} *)

let mea_tl = measure_tuple_list_off_envelope env_ske;;

test_number 14 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((2.28187,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)),
     (0.231152,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)));
   Tuple_t.Duo
    ((0.465248,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)),
     (0.866764,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)));
   Tuple_t.Duo
    ((0.124328,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)),
     (1.,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)))]
);;

let nam_cal = "quantum";;
let mca_tl = measure_canonical_tuple_list_of_calculation_name_off_envelope nam_cal env_ske;;

test_number 15 (
(mca_tl :
  (float, Units_canonical_t.units_canonical) Doublet_t.doublet Tuple_t.tuple
  list ) =
  [Tuple_t.Duo
    ((2.28187,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     (0.231152,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   Tuple_t.Duo
    ((0.465248,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     (0.866764,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   Tuple_t.Duo
    ((0.124328,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     (1.,
      Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

(** {9 Units List of Tag} *)

let uni_tl = units_tuple_list_off_envelope env_ske;;

test_number 16 (
(uni_tl : Units_t.units Tuple_t.tuple list ) =
  [Tuple_t.Duo
    (Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   Tuple_t.Duo
    (Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   Tuple_t.Duo
    (Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr),
     Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_quantum
        Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

(** {9 Float Tuple_list of Tag} *)

let flo_tl = float_tuple_list_off_envelope env_ske;;

test_number 17 (
(flo_tl : float Tuple_t.tuple list )=
  [Tuple_t.Duo (2.28187, 0.231152); 
   Tuple_t.Duo (0.465248, 0.866764);
   Tuple_t.Duo (0.124328, 1.)]
);;

(** {6 Naming_for_envelope} *)

let nam_ske_env = name env_ske;;

test_number 18 (
(nam_ske_env : string ) =
 " [\n   ((parameter_set_fence_aopef_exponent_constructor, (2.281870, canonical_quantum_length_bohr)),(parameter_set_fence_aopef_coefficient_constructor, (0.231152, canonical_quantum_length_bohr))) ((parameter_set_fence_aopef_exponent_constructor, (0.465248, canonical_quantum_length_bohr)),(parameter_set_fence_aopef_coefficient_constructor, (0.866764, canonical_quantum_length_bohr))) ((parameter_set_fence_aopef_exponent_constructor, (0.124328, canonical_quantum_length_bohr)),(parameter_set_fence_aopef_coefficient_constructor, (1.000000, canonical_quantum_length_bohr)))\n  ]"
);;

let sna_ske_env = shortname env_ske;;

test_number 19 (
(sna_ske_env : string ) =
  " [\n   ((\"he p 2 1\" exponent 2.28187 bohr),(\"he p 2 1\" coefficient 0.231152 bohr)) ((\"he p 2 2\" exponent 0.465248 bohr),(\"he p 2 2\" coefficient 0.866764 bohr)) ((\"he p 3 1\" exponent 0.124328 bohr),(\"he p 3 1\" coefficient 1 bohr))\n  ]"
);;

Format.fprintf Format.std_formatter "%s" sna_ske_env;;

let sof_ske_env = string_off env_ske;;

test_number 20 (
(sof_ske_env : string ) =
  " [\n   (he p 2 1,he p 2 1) (he p 2 2,he p 2 2) (he p 3 1,he p 3 1)\n  ]"
);;

let dim_ske_env = dimension env_ske;;

test_number 21 (
(dim_ske_env : string ) =
" [\n   (bohr,bohr) (bohr,bohr) (bohr,bohr)\n  ]"
);;

