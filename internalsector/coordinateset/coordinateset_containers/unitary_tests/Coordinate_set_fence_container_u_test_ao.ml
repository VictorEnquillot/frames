open Make_test_v;;

testing "Coordinate_set_fence_container_v with
    Coordinate_set_fence_container_u_test_ao.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Coordinate_set_fence_container_u_test_ao.ml";;

*)

(* Database file *)

let nam_dbo = "test_ao";;
let nam_dba = "db1points";;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba) ;;

let pre_tag_eac_sof sof (s, i) = 
  (Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor sof=s)
;;
 
let sof_coo_eac = "he s 2 1";;

let tag_coo_eac = List_v.only_element_of_predicate_off_list (pre_tag_eac_sof sof_coo_eac) tag_coo_l;;
Coordinate_tag_all_list_by_coordinates_genera_provider_v
test_number 1 (
(tag_coo_eac : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_border_symbol
    (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
            "he s 2 1")))),
   [2; 3; 6; 5; 6])
);;

open Coordinate_set_fence_container_v;; 
     
(* Argument *)

let tag_ebp = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_fence_symbol_off_coordinate_symbol tag_coo_eac;;

test_number 2 (  
( tag_ebp :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol
  Tag_t.tag ) =
  (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
    (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
      (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
        "he s 2 1")),
   [2; 3; 6; 5; 6])
);;

(** {6 Coercing Up Coordinate_set_fence_heterogeneous_cylindrical_coefficient Tag} *)

test_number 3 (
tag_coo_eac = coerce_up_tag tag_ebp
);;

(** {6 Builder Tag list} *)

let tag_bui_l = builder_tag_list_of_tag tag_ebp;;

test_number 4 (
(tag_bui_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

(** {6 Builder Tag Datastructure} *)

let tag_bui = builder_tag_uno_of_tag tag_ebp;;

test_number 5 (
(tag_bui : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
  (Coordinate_symbol_t.Coordinate_fence_symbol
    (Coordinate_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

(** {6 Building as Builder Tag uno} *)

let bug_ebp = building_of_tag tag_ebp;;

test_number 6 (
(bug_ebp : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
(Coordinate_symbol_t.Coordinate_fence_symbol
   (Coordinate_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
 [1; 2; 3; 6; 5; 6])
);;

(** {6 Builder Tag tuple} *)

let tag_bui_t = builder_tag_tuple_of_tag tag_ebp;;

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

let cne_ebp = containee_tag_off_builder_tag tag_bui;;

test_number 10 (
( cne_ebp :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag ) =
  (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Container_of_tag : Containee Datastructure} *)

test_number 11 (
bug_ebp = builder_tag_uno_of_tag tag_ebp
);;

(** {6 Containee Tag Datastructures} *)

test_number 12 (
tag_ful = containee_tag_uno_of_tag tag_ebp
);;

let tag_ful_t = containee_tag_tuple_of_tag tag_ebp;;

test_number 13 (
( tag_ful_t :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Fence *)

let fen_ebp_l = fence_as_list_of_tag tag_ebp;;

test_number 14 (
(fen_ebp_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

let fen_ebp_u = fence_as_uno_of_tag tag_ebp;;

test_number 15 (
(fen_ebp_u : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
  (Coordinate_symbol_t.Coordinate_fence_symbol
    (Coordinate_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

let fen_ebp_t = fence_as_tuple_of_tag tag_ebp;;

test_number 16 (
( fen_ebp_t : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])
);;

let fen_ebp_tl = fence_as_tuple_list_of_tag tag_ebp;;

test_number 17 (
(fen_ebp_tl :
  Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Coordinate_symbol_t.Coordinate_fence_symbol
      (Coordinate_fence_symbol_t.Units_symbol
        (Units_symbol_t.Units_length_symbol
          Units_length_symbol_t.Bohr)),
     [1; 2; 3; 6; 5; 6])]
);;

