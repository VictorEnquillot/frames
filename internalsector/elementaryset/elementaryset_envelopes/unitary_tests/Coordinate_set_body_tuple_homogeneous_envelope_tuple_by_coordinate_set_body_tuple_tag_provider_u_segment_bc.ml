open Make_test_v;;

testing "Coordinate_set_body_tuple_homogeneous_envelope_tuple_by_coordinate_set_body_tuple_tag_provider_v with
        Coordinate_set_body_tuple_homogeneous_envelope_tuple_by_coordinate_set_body_tuple_tag_provider_u_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length   angstrom  *)
(* coordinates_units_angle    degree *)
(* coordinates_kind           cylindrical   *)
(* figure_kind segment  *)
(* figure_name BC *)
(* vertex BC_B       1.  0.  0. *)
(* vertex BC_C       1. 90.  1. *)

(* toplevel 
   #use "Coordinate_set_body_tuple_homogeneous_envelope_tuple_by_coordinate_set_body_tuple_tag_provider_u_segment_bc.ml";;

*)

open Coordinate_set_body_tuple_homogeneous_envelope_tuple_by_coordinate_set_body_tuple_tag_provider_v;;

let nam_dba = "db1points";;
let nam_dbo = "segment_BC";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

let tag_coo_cbt_l = List.filter 
    (fun (s,i) -> Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol s)
    tag_coo_l;;

let tag_cbt_l = List.map
    Coordinate_set_body_tuple_tag_v.coordinate_set_body_tuple_tag_off_coordinate_tag
    tag_coo_cbt_l
;;

test_number 1 (
(tag_cbt_l :
  Coordinate_set_body_tuple_symbol_t.coordinate_set_body_tuple_symbol
  Tag_t.tag list ) =
  [(Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
     (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
       (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
         "BC_B")),
    [1; 18; 1; 5; 5]);
   (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
     (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
       (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
         "BC_C")),
    [2; 18; 1; 5; 5])]
);;

let env_csf_l = List.map 
    Coordinate_set_body_tuple_homogeneous_envelope_tuple_by_coordinate_set_body_tuple_tag_provider_v.provide 
    tag_cbt_l
;;

(** {6 Argument : tag_cbt BC_B} *)

let tag_cbt = List.nth tag_cbt_l 0;;

let sym_cbt = Tag_v.entity_off_tag tag_cbt;;

test_number 2 (
(sym_cbt :
  Coordinate_set_body_tuple_symbol_t.coordinate_set_body_tuple_symbol ) =
  Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
   (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
     (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
	"BC_B"))
);;

let tag_coo = Tag_v.map_entity 
	  Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_body_tuple_symbol 
	  tag_cbt;;

let mat_het_tu = Coordinate_envelope_v.measure_actual_tuple_of_tag tag_coo;;

test_number 3 (
( mat_het_tu :
  (float, Units_actual_t.units_actual) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1., Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
    (0., Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree),
    (0., Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

let mat_hom_tu = 
  Coordinate_set_body_tuple_measure_actual_conversions_v.measure_actual_tuple_homogeneous_of_measure_actual_tuple_heterogeneous 
    mat_het_tu 
;;

test_number 4 (
(mat_hom_tu :
  (float, Units_actual_t.units_actual) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1., Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
    (0., Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
    (0., Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

let mea_hom_tu = Tuple_v.map Measure_actual_v.measure_of_measure_actual mat_hom_tu;;

test_number 5 (
(mea_hom_tu : (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1.,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (0.,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (0.,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))
);;

let rea_hom_tu = Tuple_v.map Readee_v.readee_of_measure mea_hom_tu;;

test_number 6 (
(rea_hom_tu : Readee_t.readee Tuple_t.tuple ) =
  Tuple_t.Trio
   (Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))
);;

let env_coo = Coordinate_envelope_v.envelope_of_tag tag_coo;;

test_number 7 (
(env_coo :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
           "BC_B"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
           "BC_B"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
           "BC_B"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (0.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))]
);;

let sym_csf_het_tu = Coordinate_envelope_v.coordinate_set_fence_symbol_tuple_off_envelope env_coo;;

let sym_csf_hom_tu =
  Coordinate_set_fence_symbol_tuple_conversions_v.coordinate_set_fence_symbol_tuple_homogeneous_of_coordinate_set_fence_symbol_tuple 
    sym_csf_het_tu
;;

test_number 8 (
(sym_csf_hom_tu :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol Tuple_t.tuple ) =
  Tuple_t.Trio
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
     (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
       (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
         (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
           "BC_B"))),
    Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
     (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
       (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
         (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
           "BC_B"))),
    Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
     (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
       (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
         (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
           "BC_B"))))
);;

let env_hom_tu = Tuple_v.map2 Doublet_v.make sym_csf_hom_tu rea_hom_tu;;

test_number 9 (
(env_hom_tu :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
      (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
        (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
          (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
            "BC_B"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
      (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
        (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
          (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
            "BC_B"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))),
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
      (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
        (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
          (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
            "BC_B"))),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))))
);;

test_number 10 (
env_hom_tu = provide tag_cbt
);
