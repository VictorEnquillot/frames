open Make_test_v;;

testing "Readee_by_coordinate_set_fence_tag_provider_v with
    Readee_by_coordinate_set_fence_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Readee_by_coordinate_set_fence_tag_provider_u_any.ml";; 

*)

open Readee_by_coordinate_set_fence_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Coordinate_set_fence *) 

let tag_coo_csf = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_constructor s)
	&&
      (Coordinate_symbol_v.string_off s = "A_A")
      )
    tag_coo_l;;

(* Argument *)

let tag_csf = Coordinate_set_fence_tag_v.coordinate_set_fence_tag_off_coordinate_tag tag_coo_csf;;

test_number 1 (
(tag_csf :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol
  Tag_t.tag) =
  (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
    (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
      (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
        (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
          "A_A"))),
   [2; 1; 10; 1; 5; 5])
);;

let mea = Measure_by_coordinate_set_fence_tag_provider_v.provide tag_csf;;

test_number 2 (
(mea : Measure_t.measure ) =
  (0.785398163397448279,
   Units_t.Units_actual
    (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))
);;

let rea = Readee_v.readee_of_measure mea;;

test_number 3 (
(rea : Readee_t.readee) =
  Readee_t.Readee_measure
   (Readee_measure_t.Readee_measure
     (0.785398163397448279,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)))
);;

test_number 4 (
rea = provide tag_csf
);;
