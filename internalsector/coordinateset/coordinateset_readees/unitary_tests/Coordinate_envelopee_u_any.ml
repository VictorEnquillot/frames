open Make_test_v;;

testing "Coordinate_envelopee_v with
        Coordinate_envelopee_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_envelopee_u_any.ml";;

*)

open Coordinate_envelopee_v;;

let nam_dba = "db1points";;
let nam_dbo = "Point_a";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

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

let tag_coo = tag_coo_rho;;

(* Argument Coordinate_set_fence  *)

let tag_csf_rho = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_fence_symbol_off_coordinate_symbol tag_coo_rho;;

test_number 2 (
(tag_csf_rho :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol Tag_t.tag ) =
  (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
    (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
      (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
        (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
          "A_A"))),
   [1; 1; 10; 1; 5; 5])
);;

let tag_csf = tag_csf_rho;;

(** {6 Making} *)

let eee_csf_rho = coordinate_envelopee_of_coordinate_set_fence_tag tag_csf;;

test_number 3 (
( eee_csf_rho :
  (Coordinate_set_fence_tag_t.coordinate_set_fence_tag, Readee_t.readee)
  Doublet_t.doublet ) =
  ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
     (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
       (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
         (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
           "A_A"))),
    [1; 1; 10; 1; 5; 5]),
   Readee_t.Readee_measure
    (Readee_measure_t.Readee_measure
      (1.,
       Units_t.Units_actual
        (Units_actual_t.Units_actual_length Units_actual_length_t.Meter))))
);;

test_number 4 (
eee_csf_rho = make tag_csf
);;

let eee_coo = eee_csf_rho;;

(** {6 Extracting} *)

test_number 5 (
tag_csf = coordinate_set_fence_tag_off_coordinate_envelopee eee_coo
);;

test_number 6 (
tag_coo = coordinate_tag_off_coordinate_envelopee eee_coo
);;

let rea_coo = readee_off_coordinate_envelopee eee_coo;;

test_number 7 (
(rea_coo : Readee_t.readee) =
  Readee_t.Readee_measure
   (Readee_measure_t.Readee_measure
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)))
);;

let mea_coo = measure_off_coordinate_envelopee eee_coo;;

test_number 8 (
( mea_coo : Measure_t.measure ) =
  (1.,
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Meter))
);;

(** {6 Float} *)

let flo_coo = float_off_coordinate_envelopee eee_coo;;

test_number 9 (
(flo_coo : float ) = 
1.
);;

(** {6 Units} *)

let uni_coo = units_off_coordinate_envelopee eee_coo;;

test_number 10 (
( uni_coo : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)
);;

(** {6 Naming} *)

let nam_coo = name eee_coo;;

test_number 11 (
(nam_coo : string ) =
  "(coordinate_set_fence_heterogeneous_spherical_rho_constructor, (1.000000, meter))"
);;

let sof_coo = string_off eee_coo;;

test_number 12 (
(sof_coo : string ) = 
"length 1 meter\n"
);;

let lna_coo = longname eee_coo;;

test_number 13 (
( lna_coo : string ) =
  "(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor Tag_t.tag, Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, meter))"
);;

let fna_coo = fullname eee_coo;;

test_number 14 (
(fna_coo : string ) =
  "((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor \"A_A\", [1; 1; 10; 1; 5; 5]), Readee_measure_t.Readee_measure of Measure_actual_t.(1.000000, meter))"
);;
