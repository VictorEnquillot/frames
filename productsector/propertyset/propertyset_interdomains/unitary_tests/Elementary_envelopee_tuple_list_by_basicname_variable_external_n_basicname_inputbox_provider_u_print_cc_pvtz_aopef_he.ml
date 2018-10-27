open Make_test_v;;

testing "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_he.ml";;

(* Deleting Registers *)

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Check_consistency_by_context_name_quatuor_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Figure_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v" "debug";;
*)

(* toplevel 
   #use "Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_he.ml";;

*)

(* #BASIS SET: (6s,2p,1d) -> [3s,2p,1d] *)
(* He    S *)
(*     234.0000000              0.0025870         *)
(*      35.1600000              0.0195330         *)
(*       7.9890000              0.0909980         *)
(*       2.2120000              0.2720500         *)
(* He    S *)
(*       0.6669000              1.0000000         *)
(* He    S *)
(*       0.2089000              1.0000000         *)
(* He    P *)
(*       3.0440000              1.0000000         *)
(* He    P *)
(*       0.7580000              1.0000000         *)
(* He    D *)
(*       1.9650000              1.0000000         *)

open Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_cc_pvtz_aopef_he";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_cc_pvtz_aopef_he"
);;

let nam_var_ext = "Aopef_he";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Aopef_he"
);;

(* Argument (bna_var_ext, bna_ibo) *)

let bna_dom =
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 3 (
(bna_dom : Basicname_t.basicname ) = 
Basicname_t.Domain "skeleton"
);;
      
let tag_ske = 
  Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo)
;;

test_number 4 (
(tag_ske : Skeleton_tag_t.skeleton_tag ) =
  (Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
          (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_symbol
            (Skeleton_set_body_centered_aopefset_onecenter_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_constructor
              "he"))))),
   [2; 1; 16; 5; 19; 5])
);;

let env_ske = Skeleton_envelope_v.envelope_of_tag tag_ske;;

test_number 5 (
( env_ske :
  (Parameter_set_fence_symbol_t.parameter_set_fence_symbol, Readee_t.readee)
  Doublet_t.doublet list ) =
  [(Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he s 1 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (234.,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he s 1 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.002587,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he s 1 2")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (35.16,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he s 1 2")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.019533,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he s 1 3")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (7.989,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he s 1 3")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.090998,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he s 1 4")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (2.212,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he s 1 4")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.27205,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he s 2 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.6669,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he s 2 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he s 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.2089,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he s 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he p 2 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (3.044,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 2 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he p 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.758,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he d 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.965,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he d 3 1")),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_canonical
         (Units_canonical_t.Units_canonical_quantum
           Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

let eee_ele_l = List.map Elementary_envelopee_v.elementary_envelopee_of_parameter_envelopee env_ske;;

let eee_ele_sl = List_v.sublist_of_int_of_length_of_list 0 5 eee_ele_l;;
 
test_number 6 (
(eee_ele_sl : Elementary_envelopee_t.elementary_envelopee list ) =
  [Elementary_envelopee_t.Parameter_envelopee
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he s 1 1")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (234.,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Elementary_envelopee_t.Parameter_envelopee
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he s 1 1")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.002587,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Elementary_envelopee_t.Parameter_envelopee
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he s 1 2")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (35.16,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Elementary_envelopee_t.Parameter_envelopee
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
        (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
          "he s 1 2")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.019533,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))));
   Elementary_envelopee_t.Parameter_envelopee
    (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
        (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
          "he s 1 3")),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (7.989,
         Units_t.Units_canonical
          (Units_canonical_t.Units_canonical_quantum
            Units_canonical_quantum_t.Canonical_quantum_length_bohr))))]
);;

let eee_ele_dl = Duo_list_v.duo_list_of_list eee_ele_l;;
let eee_ele_dsl = List_v.sublist_of_int_of_length_of_list 0 3 eee_ele_dl;;

test_number 7 (
( eee_ele_dsl : Elementary_envelopee_t.elementary_envelopee Duo_t.duo list ) =
  [(Elementary_envelopee_t.Parameter_envelopee
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he s 1 1")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (234.,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
    Elementary_envelopee_t.Parameter_envelopee
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
         (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
           "he s 1 1")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.002587,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))));
   (Elementary_envelopee_t.Parameter_envelopee
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he s 1 2")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (35.16,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
    Elementary_envelopee_t.Parameter_envelopee
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
         (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
           "he s 1 2")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.019533,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))));
   (Elementary_envelopee_t.Parameter_envelopee
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he s 1 3")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (7.989,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))),
    Elementary_envelopee_t.Parameter_envelopee
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
         (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
           "he s 1 3")),
      Readee_t.Readee_measure
       (Readee_measure_t.Readee_measure
         (0.090998,
          Units_t.Units_canonical
           (Units_canonical_t.Units_canonical_quantum
             Units_canonical_quantum_t.Canonical_quantum_length_bohr)))))]
);;

let eee_ele_tl = List.map Tuple_v.tuple_of_duo eee_ele_dl;;
