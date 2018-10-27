open Make_test_v;;

testing "Readee_list_by_parameter_set_body_tuple_aopef_tag_provider_v with
    Readee_list_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Readee_list_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";; 

*)

open Readee_list_by_parameter_set_body_tuple_aopef_tag_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_par_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Parameter_set_body_tuple_aopef *) 

let tag_par = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor s)
	&&
      (Parameter_symbol_v.string_off s = "he p 2 1")
      )
    tag_par_l;;

(* Argument *)

let tag_pta = Parameter_set_body_tuple_aopef_tag_v.parameter_set_body_tuple_aopef_tag_off_parameter_tag tag_par;;

test_number 1 (
(tag_pta :
  Parameter_set_body_tuple_aopef_symbol_t.parameter_set_body_tuple_aopef_symbol
  Tag_t.tag ) =
  (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
    "he p 2 1",
   [4; 22; 5; 16; 5])
);;

let mea_l = Measure_list_by_parameter_set_body_tuple_aopef_tag_provider_v.provide tag_pta;;

test_number 2 (
(mea_l : (float, Units_t.units) Doublet_t.doublet list ) =
  [(2.28187,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (0.231152,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

let rea_l = List.map Readee_v.readee_of_measure mea_l;;

test_number 3 (
(rea_l : Readee_t.readee list) = 
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

test_number 4 (
rea_l = provide tag_pta
);;
