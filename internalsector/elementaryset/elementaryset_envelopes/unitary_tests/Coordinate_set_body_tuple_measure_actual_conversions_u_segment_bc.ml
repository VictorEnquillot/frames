open Make_test_v;;

testing "Coordinate_set_body_tuple_measure_actual_conversions_v with
        Coordinate_set_body_tuple_measure_actual_conversions_u_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_set_body_tuple_measure_actual_conversions_u_segment_bc.ml";;

*)

open Coordinate_set_body_tuple_measure_actual_conversions_v;;

let nam_dba = "db1points";;
let nam_dbo = "segment_BC";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

let tag_coo_sbc = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = "segment_BC") 
        && 
      (Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_constructor s)
    )
    tag_coo_l;;

test_number 1 (
(tag_coo_sbc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 5; 5])
);;

(* Argument Coordinate_tag *)

let tag_coo = tag_coo_sbc;;

(** {6 Envelopee List} *)

let eee_coo_l = coordinate_envelopee_list_of_tag tag_coo;;

test_number 2 (
(eee_coo_l :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
          (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "A_A"))),
     [1; 1; 10; 1; 5; 5]),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Meter))))]
);;

(** {6 Envelope of Tag} *)

let env_coo = envelope_of_tag tag_coo;;
 
test_number 3 (
eee_coo_l = env_coo
);;

(** {6 Making} *)

test_number 4 (
env_coo = make tag_coo 
);;

(** {6 Measure List of Tag} *)

let mea_l = measure_list_of_tag tag_coo;;

test_number 5 (
( mea_l : Measure_t.measure list ) =
  [(1.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Meter))]
);;

(** {6 Measure_canonical List of Tag} *)

let nam_cal = "classical";;

let mca_l = measure_canonical_list_of_calculation_name_of_tag nam_cal tag_coo;;
 
test_number 6 (
(mca_l : (float, Units_canonical_t.units_canonical) Doublet_t.doublet list ) =
  [(18897261245.6506195,
    Units_canonical_t.Units_canonical_classical
     Units_canonical_classical_t.Canonical_classical_length_angstrom)]
);;

(** {9 Units List of Tag} *)

let uni_l = units_list_of_tag tag_coo;;

test_number 7 (
( uni_l : Units_t.units list ) =
  [Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)]
);;

(** {9 Float List of Tag} *)

let flo_l = float_list_of_tag tag_coo;;

test_number 8 (
(flo_l : float list ) = 
[1.]
);;

(** {6 Readee List of Tag} *)

let rea_l = readee_list_of_tag tag_coo;;

test_number 9 (
( rea_l : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)))]
);;

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_coo;;

test_number 10 (
clo = rea_l
);;


(** {6 Extracting} *)

(** {9 Coordinate_set_fence_tag List off Envelope} *)

let tag_csf_l = coordinate_set_fence_tag_list_off_envelope env_coo;;

test_number 11 (
(tag_csf_l : Coordinate_set_fence_tag_t.coordinate_set_fence_tag list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
         (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
           "A_A"))),
    [1; 1; 10; 1; 5; 5])]
);;

(** {9 Coordinate_tag List off Envelope} *)

let tag_coo_l = coordinate_tag_list_off_envelope env_coo;;

test_number 12 (
( tag_coo_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
             (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 5; 5])]
);;

(** {9 Readee List off Envelope} *)

test_number 13 (
rea_l = readee_list_off_envelope env_coo
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 14 (
clo = closure_off_envelope env_coo 
);;

(** {9 Measure List off Envelope} *)

test_number 15 (
mea_l = measure_list_off_envelope env_coo
);;

(** {9 Units List off Envelope} *)

test_number 16 ( 
uni_l = units_list_off_envelope env_coo
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_coo;;

test_number 17 (
(nam_env : string ) =
  " [\n   (coordinate_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, meter))\n  ]"
);;

let sof_env = string_off env_coo;;

test_number 18 (
(sof_env : string ) =
  " [\n   (coordinate_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, meter))\n  ]"
);;

let fna = fullname env_coo;;

test_number 19 (
(fna : string ) =
  " [\n   ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor \"A_A\", [1; 1; 10; 1; 5; 5]), Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, meter))\n  ]"
);;

let lna = longname env_coo;;

test_number 20 (
(lna : string ) =
  " [\n   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor Tag_t.tag, Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, meter))\n  ]"
);;

let mac_car_t = coordinate_set_body_tuple_cartesian_measure_actual_trio_of_cylindrical_measure_actual_trio mea_ccy_tri;;
