open Make_test_v;;

testing "Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_v with
        Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_u_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length  meter *)
(* coordinates_units_angle   radian *)
(* coordinates_kind          spherical  *)
(* figure_kind point *)
(* figure_name A *)
(* vertex A_A       1. 0.785398163397448279 0.785398163397448279 *)

(* toplevel 
   #use "Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_u_point_a.ml";;

*)

open Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_v;;

let nam_dba = "db1points";;
let nam_dbo = "Point_a";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

let tag_coo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = "A_A") 
        && 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_constructor s)
    )
    tag_coo_l;;

test_number 1 (
( tag_coo : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
(Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
         (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
            (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
               (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
		  "A_A"))))),
 [1; 10; 1; 5; 5])
);;

(** {6 Argument : tag_cbt} *)

let tag_cbt = Tag_v.map_entity 
  Coordinate_symbol_v.coordinate_set_body_tuple_symbol_off_coordinate_symbol
  tag_coo;;

test_number 2 (
( tag_cbt :
  Coordinate_set_body_tuple_symbol_t.coordinate_set_body_tuple_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
    (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
      (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
        "A_A")),
   [1; 10; 1; 5; 5])
);;

let sym_cbt = Tag_v.entity_off_tag tag_cbt;;

let mat_het_t = Coordinate_envelope_v.measure_actual_tuple_of_tag tag_coo;;

test_number 3 (
(mat_het_t : (float, Units_actual_t.units_actual) Doublet_t.doublet Tuple_t.tuple ) =
Tuple_t.Trio
  ((1., Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
   (0.785398163397448279,
    Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian),
   (0.785398163397448279,
    Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))
);;

let mat_hom_t = 
  Coordinate_set_body_tuple_measure_actual_conversions_v.measure_actual_tuple_homogeneous_of_measure_actual_tuple_heterogeneous 
    mat_het_t 
;;

test_number 4 (
(mat_hom_t :
  (float, Units_actual_t.units_actual) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((0.5, Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
    (0.499999999999999889,
     Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
    (0.707106781186547573,
     Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

let mea_hom_t = Tuple_v.map Measure_actual_v.measure_of_measure_actual mat_hom_t;;

test_number 5 (
(mea_hom_t : (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((0.5,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
    (0.499999999999999889,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
    (0.707106781186547573,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))
);;

let flo_mt = Measured_float_tuple_v.make_of_measure_tuple mea_hom_t;;

test_number 6 (
(flo_mt : (float Tuple_t.tuple, Units_t.units) Doublet_t.doublet ) =
  (Tuple_t.Trio (0.5, 0.499999999999999889, 0.707106781186547573),
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

test_number 7 (
flo_mt = provide tag_cbt
);
