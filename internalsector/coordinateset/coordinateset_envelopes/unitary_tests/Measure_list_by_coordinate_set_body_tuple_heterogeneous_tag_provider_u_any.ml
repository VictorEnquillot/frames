open Make_test_v;;

testing "Measure_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v with
    Measure_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";;

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
   #use "Measure_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";; 

*)

open Measure_list_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v;;

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

let soi_chs = Tag_v.sole_index_off_tag tag_chs;;

test_number 2 (
nam_dbo = Databox_name_by_any_sole_index_provider_v.provide soi_chs
);;

test_number 3 (
nam_dba = Database_name_by_any_sole_index_provider_v.provide soi_chs
);;

let uni_can = Units_v.canonical_quantum_length_bohr;;

test_number 4 (
(uni_can : Units_t.units ) =
  Units_t.Units_canonical
   (Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

let tag_db1_nan =
	Db1pointsdata_as_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v.provide
	  tag_chs;;

test_number 5 (
(tag_db1_nan : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_node_symbol
        (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_symbol
          (Db1pointsdata_set_body_node_aoset_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues_symbol
            (Db1pointsdata_set_body_node_aoset_numericalvalues_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues_constructor
              "He P 3 GAUSSIAN 1"))))),
   [1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

let tag_db1_nff_l = 
	Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v.provide 
	  tag_db1_nan;;

test_number 6 (
(tag_db1_nff_l : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_float_symbol
         (Db1pointsdata_set_fence_float_symbol_t.Db1pointsdata_set_fence_float_positive_symbol
           (Db1pointsdata_set_fence_float_positive_symbol_t.Db1pointsdata_set_fence_float_positive_constructor
             "2.2818700")))),
    [1; 1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_float_symbol
         (Db1pointsdata_set_fence_float_symbol_t.Db1pointsdata_set_fence_float_positive_symbol
           (Db1pointsdata_set_fence_float_positive_symbol_t.Db1pointsdata_set_fence_float_positive_constructor
             "0.2311520")))),
    [2; 1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;

let str_flo_l = List.map Db1pointsdata_tag_v.string_off tag_db1_nff_l;;

let flo_l = List.map String_v.float_of_string str_flo_l ;;

test_number 7 (
(flo_l : float list ) = 
[2.28187; 0.231152]
);;

let mea_l = List_v.map (fun f -> Measure_v.make f uni_can) flo_l;;

test_number 8 (
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

test_number 9 (
mea_l = provide tag_chs
);;
