open Make_test_v;;

testing "Coordinate_envelope_v with
   Coordinate_envelope_u_point_a_rho.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_envelope_u_point_a_rho.ml";;

*)

open Coordinate_envelope_v;;

let nam_dba = "db1points";;
let nam_dbo = "Point_a";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

let tag_coo_rho = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = "A_A") 
        && 
      (Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_constructor s)
    )
    tag_coo_l;;

test_number 1 (
(tag_coo_rho : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
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

let tag_coo = tag_coo_rho;;

(** {6 Envelopee List} *)

let eee_coo_l = coordinate_envelopee_list_of_tag tag_coo;;

test_number 2 (
(eee_coo_l :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
         (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
           "A_A"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))))]
);;

(** {9 Envelopee Tuple of Tag} *)

let eee_coo_t = coordinate_envelopee_tuple_of_tag tag_coo;; 

test_number 3 (
(eee_coo_t :
  (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
   Readee_t.readee)
  Doublet_t.doublet Tuple_t.tuple) =
  Tuple_t.Uno
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
         (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
           "A_A"))),
    Readee_t.Readee_measure
     (Readee_measure_t.Readee_measure
       (1.,
        Units_t.Units_actual
         (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))))
);;

(** {9 Envelope_as Tuple of Tag} *)

test_number 4 (
eee_coo_t = envelope_as_tuple_of_tag tag_coo
);;

(** {9 Envelope_as Uno of Tag} *)

let env_coo_u = envelope_as_uno_of_tag tag_coo;;

test_number 5 (
(env_coo_u : (Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol,
	      Readee_t.readee)
   Doublet_t.doublet Uno_t.uno
) =
(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
   (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
      (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
	 (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "A_A"))),
 Readee_t.Readee_measure
   (Readee_measure_t.Readee_measure
    (1.,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))))
);;

(** {6 Envelope of Tag} *)

let env_coo = envelope_of_tag tag_coo;;
 
test_number 6 (
eee_coo_l = env_coo
);;

(** {6 Making} *)

test_number 7 (
env_coo = make tag_coo 
);;

(** {6 Measure List of Tag} *)

let mea_l = measure_list_of_tag tag_coo;;

test_number 8 (
( mea_l : Measure_t.measure list ) =
  [(1.,
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))]
);;

(** {6 Measure_canonical List of Tag} *)

let nam_cal = "classical";;

let mca_l = measure_canonical_list_of_calculation_name_of_tag nam_cal tag_coo;;
 
test_number 9 (
(mca_l : (float, Units_canonical_t.units_canonical) Doublet_t.doublet list ) =
  [(1.,
    Units_canonical_t.Units_canonical_classical
     Units_canonical_classical_t.Canonical_classical_length_angstrom)]
);;

(** {9 Units List of Tag} *)

let uni_l = units_list_of_tag tag_coo;;

test_number 10 (
( uni_l : Units_t.units list ) =
  [Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)]
);;

(** {9 Float List of Tag} *)

let flo_l = float_list_of_tag tag_coo;;

test_number 11 (
(flo_l : float list ) = 
[1.]
);;

(** {6 Readee List of Tag} *)

let rea_l = readee_list_of_tag tag_coo;;

test_number 12 (
( rea_l : Readee_t.readee list ) =
  [Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;

(** {9 Closure of Tag : list of Readee} *)

let clo = closure_of_tag tag_coo;;

test_number 13 (
clo = rea_l
);;


(** {6 Extracting} *)

(** {9 Coordinate_set_fence_symbol List off Envelope} *)

let sym_csf_l = coordinate_set_fence_symbol_list_off_envelope env_coo;;

test_number 14 (
(sym_csf_l : Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol list ) =
[Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
   (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
      (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
         (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "A_A")))]
);;

(** {9 Coordinate_tag List off Envelope} *)

let sym_coo_l = coordinate_symbol_list_off_envelope env_coo;;

test_number 15 (
(sym_coo_l : Coordinate_symbol_t.coordinate_symbol list ) =
[Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
            (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
               (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
		  "A_A")))))]
);;

(** {9 Readee List off Envelope} *)

test_number 16 (
rea_l = readee_list_off_envelope env_coo
);;

(** {9 Closure off Envelope : list of Readee} *)

test_number 17 (
clo = closure_off_envelope env_coo 
);;

(** {9 Measure List off Envelope} *)

test_number 18 (
mea_l = measure_list_off_envelope env_coo
);;

(** {9 Units List off Envelope} *)

test_number 19 ( 
uni_l = units_list_off_envelope env_coo
);;

(** {6 Naming_for_envelope} *)

let nam_env = name env_coo;;

test_number 20 (
(nam_env : string ) =
  " [\n   (coordinate_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, bohr))\n  ]"
);;

let sof_env = string_off env_coo;;

test_number 21 (
(sof_env : string ) =
  " [\n   (coordinate_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, bohr))\n  ]"
);;

let fna = fullname env_coo;;

test_number 22 (
(fna : string ) =
 " [\n   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor \"A_A\", Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, bohr))\n  ]"
);;

let lna = longname env_coo;;

test_number 23 (
(lna : string ) =
  " [\n   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor, Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, bohr))\n  ]"
);;
