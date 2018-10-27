open Make_test_v;;

testing "Measure_list_by_coordinate_set_body_tuple_tag_provider_v with
    Measure_list_by_coordinate_set_body_tuple_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Measure_list_by_coordinate_set_body_tuple_tag_provider_u_any.ml";; 

*)

open Measure_list_by_coordinate_set_body_tuple_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Coordinate_set_body_tuple_heterogeneous *) 

let tag_coo = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_constructor s)
	&&
      (Coordinate_symbol_v.string_off s = "A_A")
      )
    tag_coo_l;;

(* Argument *)

let tag_cbt = Coordinate_set_body_tuple_tag_v.coordinate_set_body_tuple_tag_off_coordinate_tag tag_coo;;

test_number 1 (
(tag_cbt :
  Coordinate_set_body_tuple_symbol_t.coordinate_set_body_tuple_symbol
  Tag_t.tag) =
  (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
    (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
      (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
        "A_A")),
   [1; 10; 1; 5; 5])
);;

let soi_cbt = Tag_v.sole_index_off_tag tag_cbt;;

test_number 2 (
nam_dbo = Databox_name_by_any_sole_index_provider_v.provide soi_cbt
);;

test_number 3 (
nam_dba = Database_name_by_any_sole_index_provider_v.provide soi_cbt
);;

let uni_can = Units_v.canonical_classical_length_angstrom;;

test_number 4 (
(uni_can : Units_t.units ) =
 Units_t.Units_canonical
   (Units_canonical_t.Units_canonical_classical
     Units_canonical_classical_t.Canonical_classical_length_angstrom)
);;

let tag_db1_dsf =
 	Db1pointsdata_as_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v.provide
	  tag_cbt;;

test_number 5 (
(tag_db1_dsf : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
(Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
   (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
         (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
            (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
               "A_A")))),
 [3; 1; 2; 10; 1; 7; 2])
);;

let tag_db1_nff_l = 
	Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v.provide 
	  tag_db1_dsf;;

test_number 6 (
(tag_db1_nff_l :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "1."))))),
    [1; 3; 1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "0.785398163397448279"))))),
    [2; 3; 1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "0.785398163397448279"))))),
    [3; 3; 1; 2; 10; 1; 7; 2])]
);;

let str_flo_l = List.map Db1pointsdata_tag_v.string_off tag_db1_nff_l;;

let flo_l = List.map String_v.float_of_string str_flo_l ;;

test_number 7 (
(flo_l : float list ) = 
 [1.; 0.785398163397448279; 0.785398163397448279]
);;

let mea_l = List_v.map (fun f -> Measure_v.make f uni_can) flo_l;;

test_number 8 (
(mea_l : (float, Units_t.units) Doublet_t.doublet list ) =
  [(1.,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_classical
       Units_canonical_classical_t.Canonical_classical_length_angstrom));
   (0.785398163397448279,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_classical
       Units_canonical_classical_t.Canonical_classical_length_angstrom));
   (0.785398163397448279,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_classical
       Units_canonical_classical_t.Canonical_classical_length_angstrom))]
);;

test_number 9 (
mea_l = provide tag_cbt
);;
