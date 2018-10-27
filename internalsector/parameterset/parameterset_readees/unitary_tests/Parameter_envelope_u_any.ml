open Make_test_v;;

testing "Parameter_envelope_v with
   Parameter_envelope_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Parameter_envelope_u_any.ml";;

*)

open Parameter_envelope_v;;

let nam_dba = "nwchem";;
let nam_dbo = "try_ao";;

let tag_coo_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_coo_rho = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Parameter_symbol_v.string_off s = "A_A") 
        && 
      (Parameter_symbol_v.is_parameter_set_fence_heterogeneous_spherical_rho_constructor s)
    )
    tag_coo_l;;

test_number 1 (
(tag_coo_rho : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol
    (Parameter_set_symbol_t.Parameter_set_fence_symbol
      (Parameter_set_fence_symbol_t.Parameter_set_fence_heterogeneous_symbol
        (Parameter_set_fence_heterogeneous_symbol_t.Parameter_set_fence_heterogeneous_spherical_symbol
          (Parameter_set_fence_heterogeneous_spherical_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_symbol
            (Parameter_set_fence_heterogeneous_spherical_rho_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 5; 5])
);;

(* Argument Parameter_tag *)

let tag_coo = tag_coo_rho;;

(** {6 Envelopee List} *)

let eee_coo_l = parameter_envelopee_list_of_tag tag_coo;;

test_number 2 (
(eee_coo_l :
  (Parameter_set_fence_tag_t.parameter_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Parameter_set_fence_symbol_t.Parameter_set_fence_heterogeneous_symbol
      (Parameter_set_fence_heterogeneous_symbol_t.Parameter_set_fence_heterogeneous_spherical_symbol
        (Parameter_set_fence_heterogeneous_spherical_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_symbol
          (Parameter_set_fence_heterogeneous_spherical_rho_symbol_t.Parameter_set_fence_heterogeneous_spherical_rho_constructor
            "A_A"))),
     [1; 1; 10; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Meter))))]
);;

(** {6 Envelope of Tag} *)

test_number 3 (
eee_coo_l = envelope_of_tag tag_coo
);;
