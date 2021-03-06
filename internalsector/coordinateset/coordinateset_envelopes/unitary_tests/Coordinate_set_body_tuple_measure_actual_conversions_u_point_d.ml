open Make_test_v;;

testing "Coordinate_set_body_tuple_measure_actual_conversions_v with
        Coordinate_set_body_tuple_measure_actual_conversions_u_point_d.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length  meter *)
(* coordinates_units_angle   degree *)
(* coordinates_kind          polar  *)
(* figure_kind               point *)
(* figure_name               D *)
(* vertex D_D                1.  30. *)

(* toplevel 
   #use "Coordinate_set_body_tuple_measure_actual_conversions_u_point_d.ml";;

*)

open Coordinate_set_body_tuple_measure_actual_conversions_v;;

let nam_dba = "db1points";;
let nam_dbo = "Point_d";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

let tag_coo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = "D_D") 
        && 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_polar_constructor s)
    )
    tag_coo_l;;

test_number 1 (
( tag_coo : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
(Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
         (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
            (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_polar_symbol
               (Coordinate_set_body_tuple_heterogeneous_polar_symbol_t.Coordinate_set_body_tuple_heterogeneous_polar_constructor
		  "D_D"))))),
 [1; 13; 1; 5; 5])
);;

(** {6 Argument : Envelope as Duo} *)

let env_coo_d = Coordinate_envelope_v.envelope_as_duo_of_tag tag_coo;;

test_number 2 (
(env_coo_d :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet Duo_t.duo ) =
  (((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_polar_symbol
        (Coordinate_set_fence_heterogeneous_polar_symbol_t.Coordinate_set_fence_heterogeneous_polar_rho_symbol
          (Coordinate_set_fence_heterogeneous_polar_rho_symbol_t.Coordinate_set_fence_heterogeneous_polar_rho_constructor
            "D_D"))),
     [1; 1; 13; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))),
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_polar_symbol
        (Coordinate_set_fence_heterogeneous_polar_symbol_t.Coordinate_set_fence_heterogeneous_polar_theta_symbol
          (Coordinate_set_fence_heterogeneous_polar_theta_symbol_t.Coordinate_set_fence_heterogeneous_polar_theta_constructor
            "D_D"))),
     [2; 1; 13; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (30.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree)))))
);;

let mac_pol_d = Coordinate_envelope_v.measure_actual_duo_of_tag tag_coo;; 

test_number 3 (
(mac_pol_d : (float, Units_actual_t.units_actual) Doublet_t.doublet Duo_t.duo ) =
  ((1., Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
   (30., Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))
);;

let mac_pla_d = coordinate_set_body_tuple_planar_measure_actual_duo_of_polar_measure_actual_duo mac_pol_d;;

test_number 4 (
( mac_pla_d :
  (float, Units_actual_t.units_actual) Doublet_t.doublet Duo_t.duo ) =
  ((0.866025403784438708,
    Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
   (0.499999999999999944,
    Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

let rho = 1.0;;
let phi =  Constants_v.radian_of_degree *. 30.;;

let x = rho *. (cos phi);;
let y = rho *. (sin phi);;

let pla_d = (x, y);;  

test_number 5 (
(pla_d : float * float) = 
 (0.866025403784438708, 0.499999999999999944)
);;
