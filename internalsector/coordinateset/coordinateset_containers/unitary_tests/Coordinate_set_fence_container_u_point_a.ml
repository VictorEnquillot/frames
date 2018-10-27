open Make_test_v;;

testing "Coordinate_set_fence_container_v with
    Coordinate_set_fence_container_u_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Coordinate_set_fence_container_u_point_a.ml";;

*)

open Coordinate_set_fence_container_v;; 
     
let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba) ;;

let pre_tag_rho_sof sof (s, i) = 
  (Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_constructor sof = s)
;;
 
let sof_coo_rho = "A_A";;

let tag_coo_rho = List_v.only_element_of_predicate_off_list (pre_tag_rho_sof sof_coo_rho) tag_coo_l;;

test_number 1 (
(tag_coo_rho : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 6; 5])
);;

(* Argument *)

let tag_csf = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_fence_symbol_off_coordinate_symbol tag_coo_rho;;

test_number 2 (  
( tag_csf :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol Tag_t.tag ) =
  (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
    (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
      (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
        (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
          "A_A"))),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Coercing Up Coordinate_set_fence_heterogeneous_spherical_rho Tag} *)

test_number 3 (
tag_coo_rho = coerce_up_tag tag_csf
);;

(** {6 Builder Tag list} *)

let tag_bui_l = builder_tag_list_of_tag tag_csf;;

test_number 4 (
(tag_bui_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

(** {6 Builder Tag Datastructure} *)

let tag_bui = builder_tag_uno_of_tag tag_csf;;

test_number 5 (
(tag_bui : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
  (Coordinate_symbol_t.Coordinate_fence_symbol
    (Coordinate_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

(** {6 Building as Builder Tag uno} *)

let bug_csf = building_of_tag tag_csf;;

test_number 6 (
(bug_csf : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
(Coordinate_symbol_t.Coordinate_fence_symbol
   (Coordinate_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
 [1; 2; 3; 6; 5; 6])
);;

(** {6 Builder Tag tuple} *)

let tag_bui_t = builder_tag_tuple_of_tag tag_csf;;

test_number 7 (
(tag_bui_t :
   Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let tag_ful = containee_tag_off_builder_tag tag_bui;;

test_number 8 (
(tag_ful :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag ) =
  (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Up Containee Tag} *)

let tag_bui = builder_tag_of_tag tag_ful;;

test_number 9 (
(tag_bui : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_fence_symbol
    (Coordinate_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let cne_csf = containee_tag_off_builder_tag tag_bui;;

test_number 10 (
( cne_csf :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag ) =
  (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Container_of_tag : Pattern Matching} *)

let con_csf = container_of_tag tag_csf;;

test_number 11 (
(con_csf : Coordinate_set_fence_container_t.coordinate_set_fence_container ) =
  Coordinate_set_fence_container_t.Coordinate_set_fence_heterogeneous_container
   (Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_spherical_container
     (Coordinate_set_fence_heterogeneous_spherical_container_t.Coordinate_set_fence_heterogeneous_spherical_rho_container
       (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
         "A_A",
        [1; 1; 10; 1; 6; 5])))
);;

(** {6 Container_of_tag : Containee Datastructure} *)

test_number 12 (
bug_csf = builder_tag_uno_of_tag tag_csf
);;

(** {6 Containee Tag Datastructures} *)

test_number 13 (
tag_ful = containee_tag_uno_of_tag tag_csf
);;

let tag_ful_t = containee_tag_tuple_of_tag tag_csf;;

test_number 14 (
( tag_ful_t :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Fence *)

let fen_csf_l = fence_as_list_of_tag tag_csf;;

test_number 15 (
(fen_csf_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

let fen_csf_u = fence_as_uno_of_tag tag_csf;;

test_number 16 (
(fen_csf_u : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
  (Coordinate_symbol_t.Coordinate_fence_symbol
    (Coordinate_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

let fen_csf_t = fence_as_tuple_of_tag tag_csf;;

test_number 17 (
( fen_csf_t : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])
);;

let fen_csf_tl = fence_as_tuple_list_of_tag tag_csf;;

test_number 18 (
(fen_csf_tl :
  Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Coordinate_symbol_t.Coordinate_fence_symbol
      (Coordinate_fence_symbol_t.Units_symbol
        (Units_symbol_t.Units_length_symbol
          Units_length_symbol_t.Bohr)),
     [1; 2; 3; 6; 5; 6])]
);;

