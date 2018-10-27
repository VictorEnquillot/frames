open Make_test_v;;

testing "Readee_list_by_coordinate_set_body_tuple_tag_provider_v with
    Readee_list_by_coordinate_set_body_tuple_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Readee_list_by_coordinate_set_body_tuple_tag_provider_u_any.ml";; 

*)

open Readee_list_by_coordinate_set_body_tuple_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

(* Argument Coordinate_set_body_tuple *) 

let tag_coo_chs = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_constructor s)
	&&
      (Coordinate_symbol_v.string_off s = "A_A")
      )
    tag_coo_l;;

(* Argument *)

let tag_cbt = Coordinate_set_body_tuple_tag_v.coordinate_set_body_tuple_tag_off_coordinate_tag tag_coo_chs;;

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

let mea_l = Measure_list_by_coordinate_set_body_tuple_tag_provider_v.provide tag_cbt;;

test_number 2 (
(mea_l : (float, Units_t.units) Doublet_t.doublet list ) =
  [(1.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Meter));
   (0.785398163397448279,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian));
   (0.785398163397448279,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))]
);;

let rea_l = List.map Readee_v.readee_of_measure mea_l;;

test_number 3 (
(rea_l : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.785398163397448279,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)));
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (0.785398163397448279,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))]
);;

test_number 4 (
rea_l = provide tag_cbt
);;
