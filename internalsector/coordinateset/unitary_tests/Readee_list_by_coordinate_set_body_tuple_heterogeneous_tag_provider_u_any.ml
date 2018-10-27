open Make_test_v;;

testing "Readee_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v with
    Readee_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_coordinate_context_databox_tag_register_v.register;;
Register_v.delete Coordinate_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Coordinate_fence_by_coordinate_tag_register_v.register;;
Register_v.delete Coordinate_son_tag_list_by_coordinate_father_tag_register_v.register;;
Register_v.delete Coordinate_symbol_by_sole_index_register_v.register;;
Register_v.delete Coordinate_tag_all_list_by_basicname_databox_n_basicname_databaseregister_v.register;;
Register_v.delete Coordinate_tag_all_list_by_coordinate_context_databox_tag_register_v.register;;
Register_v.delete Coordinate_tag_subtree_by_coordinate_tag_register_v.register;;
Register_v.delete Coordinate_tag_tree_by_basicname_databox_n_basicname_databaseregister_v.register;;
Register_v.delete Coordinate_tag_tree_by_coordinate_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Readee_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";; 

*)

open Readee_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Coordinate_set_body_tuple_heterogeneous *) 

let tag_coo = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_constructor s)
	&&
      (Coordinate_symbol_v.string_off s = "A_A")
      )
    tag_coo_l;;

(* Argument *)

let tag_chs = Coordinate_set_body_tuple_heterogeneous_tag_v.coordinate_set_body_tuple_heterogeneous_tag_off_coordinate_tag tag_coo;;

test_number 1 (
(tag_chs :
  Coordinate_set_body_tuple_heterogeneous_symbol_t.coordinate_set_body_tuple_heterogeneous_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_constructor
    "A_A",
   [4; 22; 5; 16; 5])
);;

let mea_l = Measure_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v.provide tag_chs;;

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
rea_l = provide tag_chs
);;
