open Make_test_v;;

testing "Coordinate_set_body_tuple_heterogeneous_cylindrical_container_v with
    Coordinate_set_body_tuple_heterogeneous_cylindrical_container_u_point_a.ml";;

(* Deleting Registers *)



(* Tracing *)


(* toplevel 
   #use "Coordinate_set_body_tuple_heterogeneous_cylindrical_container_u_point_a.ml";;

*)

(* Database file *)

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba) ;;

let pre_tag_chc_sof sof (s, i) = 
  (Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_constructor sof=s)
;;
 
let sof_coo_chc = "he s 2 1";;

let tag_coo_chc = List_v.only_element_of_predicate_off_list (pre_tag_chc_sof sof_coo_chc) tag_coo_l;;

test_number 1 (
(tag_coo_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_body_symbol
    (Coordinate_body_symbol_t.Coordinate_set_body_tuple_symbol
      (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
        (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
          "he s 2 1"))),
   [3; 6; 5; 6])
);;

open Coordinate_set_body_tuple_heterogeneous_cylindrical_container_v;; 
     
(* Argument *)

let tag_chc = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol tag_coo_chc;;

test_number 2 (  
(tag_chc :
  Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
    "he s 2 1",
   [3; 6; 5; 6])
);;

(** {6 Coercing Up Coordinate_set_body_tuple_heterogeneous_cylindrical_coefficient Tag} *)

test_number 3 (
tag_coo_chc = coerce_up_tag tag_chc
);;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let tag_bui_l = builder_tag_list_of_tag tag_chc;;

test_number 4 (
(tag_bui_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_border_symbol
     (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
             "he s 2 1")))),
    [1; 3; 6; 5; 6]);
   (Coordinate_symbol_t.Coordinate_border_symbol
     (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
             "he s 2 1")))),
    [2; 3; 6; 5; 6])]
);;

(** {9 Builder Tag Datastructures} *)

let tag_bui_d = builder_tag_duo tag_chc;;

test_number 5 (
(tag_bui_d : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Duo_t.duo ) =
  ((Coordinate_symbol_t.Coordinate_border_symbol
     (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
             "he s 2 1")))),
    [1; 3; 6; 5; 6]),
   (Coordinate_symbol_t.Coordinate_border_symbol
     (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
             "he s 2 1")))),
    [2; 3; 6; 5; 6]))
);;

(** {9 Builder Tag Tuple} *)

let tag_bui_t = builder_tag_tuple_of_tag tag_chc;;

test_number 6 (
(tag_bui_t : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Coordinate_symbol_t.Coordinate_border_symbol
      (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
        (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
            (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
              "he s 2 1")))),
     [1; 3; 6; 5; 6]),
    (Coordinate_symbol_t.Coordinate_border_symbol
      (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
        (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
            (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
              "he s 2 1")))),
     [2; 3; 6; 5; 6]))
);;

(** {9 Building as Builder Tag duo} *)

let bug_chc = building_of_tag tag_chc;;

test_number 7 (
( bug_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Duo_t.duo ) =
  ((Coordinate_symbol_t.Coordinate_border_symbol
     (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
             "he s 2 1")))),
    [1; 3; 6; 5; 6]),
   (Coordinate_symbol_t.Coordinate_border_symbol
     (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
             "he s 2 1")))),
    [2; 3; 6; 5; 6]))
);;

(** {6 Container} *)

(** {9 Coercing Down Builder Tag to Containee Tag} *)

let tag_cnu_l = List.map containee_up_tag_off_builder_tag tag_bui_l;;

test_number 8 (
(tag_cnu_l :
  Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.coordinate_set_fence_heterogeneous_cylindrical_symbol
  Tag_t.tag list ) =
  [(Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
       "he s 2 1"),
    [1; 3; 6; 5; 6]);
   (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
       "he s 2 1"),
    [2; 3; 6; 5; 6])]
);;

(** {9 Coercing Up Containee_up to Builder} *)

test_number 9 (
tag_bui_l = List.map builder_tag_of_containee_up_tag tag_cnu_l
);;

(** {9 Containee_up Tag list} *)

let tag_cnu_l = containee_up_tag_list tag_chc;;

test_number 10 (
(tag_cnu_l :
  Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.coordinate_set_fence_heterogeneous_cylindrical_symbol
  Tag_t.tag list ) =
  [(Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
       "he s 2 1"),
    [1; 3; 6; 5; 6]);
   (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
       "he s 2 1"),
    [2; 3; 6; 5; 6])]
);;

(** {9 Containee_up Tag Duo} *)

let tag_cnu_d = containee_up_tag_duo tag_chc;;

test_number 11 (
(tag_cnu_d :
  Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.coordinate_set_fence_heterogeneous_cylindrical_symbol
  Tag_t.tag Duo_t.duo ) =
  ((Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
       "he s 2 1"),
    [1; 3; 6; 5; 6]),
   (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
       "he s 2 1"),
    [2; 3; 6; 5; 6]))
);;

(** {9 Extracting Containees off Containee_up} *)

(** {9 Container_of_tag : Containee Datastructure} *)

let con_chc = container_of_tag tag_chc;;

test_number 12 (
(con_chc :
  (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
   Tag_t.tag,
   Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
   Tag_t.tag)
  Doublet_t.doublet ) =
  ((Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
     "he s 2 1",
    [1; 3; 6; 5; 6]),
   (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
     "he s 2 1",
    [2; 3; 6; 5; 6]))
);;

(** {9 Extracting Containees off Tag} *)

let cnn_1_tag = first_containee_tag tag_chc;;

test_number 13 (
( cnn_1_tag :
  Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
  Tag_t.tag ) =
  (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
    "he s 2 1",
   [1; 3; 6; 5; 6])
);;

let cnn_2_tag = second_containee_tag tag_chc;;

test_number 14 (
( cnn_2_tag :
  Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
  Tag_t.tag ) =
  (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
    "he s 2 1",
   [2; 3; 6; 5; 6])
);;

(** {6 Border *)

let bor_chc_l = border_as_list tag_chc;;

test_number 15 (
( bor_chc_l :
  Coordinate_border_symbol_t.coordinate_border_symbol Tag_t.tag list ) =
  [(Coordinate_border_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
           "he s 2 1"))),
    [1; 3; 6; 5; 6]);
   (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
           "he s 2 1"))),
    [2; 3; 6; 5; 6])]
);;

let bor_chc_d = border_as_duo tag_chc;;

test_number 16 (
(bor_chc_d :  Coordinate_border_symbol_t.coordinate_border_symbol Tag_t.tag Duo_t.duo ) =
  ((Coordinate_border_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
           "he s 2 1"))),
    [1; 3; 6; 5; 6]),
   (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
           "he s 2 1"))),
    [2; 3; 6; 5; 6]))
);;

let bor_chc_t = border_as_tuple tag_chc;;

test_number 17 (
( bor_chc_t :
  Coordinate_border_symbol_t.coordinate_border_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Coordinate_border_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
            "he s 2 1"))),
     [1; 3; 6; 5; 6]),
    (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
            "he s 2 1"))),
     [2; 3; 6; 5; 6]))
);;

let bor_chc_tl = border_as_tuple_list tag_chc;;

test_number 18 (
( bor_chc_tl :
  Coordinate_border_symbol_t.coordinate_border_symbol Tag_t.tag Tuple_t.tuple
  list ) =
  [Tuple_t.Duo
    ((Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
             "he s 2 1"))),
      [1; 3; 6; 5; 6]),
     (Coordinate_border_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
             "he s 2 1"))),
      [2; 3; 6; 5; 6]))]
);;

(** {6 Fence *)

let fen_chc_l = fence_as_list_of_tag tag_chc;;

test_number 19 (
(fen_chc_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 1; 3; 6; 5; 6]);
   (Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

let fen_chc_d = fence_as_duo tag_chc;;

test_number 20 (
(fen_chc_d : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Duo_t.duo ) =
  ((Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 1; 3; 6; 5; 6]),
   (Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6]))
);;

let fen_chc_t = fence_as_tuple_of_tag tag_chc;;

test_number 21 (
( fen_chc_t : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Coordinate_symbol_t.Coordinate_fence_symbol
      (Coordinate_fence_symbol_t.Units_symbol
        (Units_symbol_t.Units_length_symbol
          Units_length_symbol_t.Bohr)),
     [1; 1; 3; 6; 5; 6]),
    (Coordinate_symbol_t.Coordinate_fence_symbol
      (Coordinate_fence_symbol_t.Units_symbol
        (Units_symbol_t.Units_length_symbol
          Units_length_symbol_t.Bohr)),
     [1; 2; 3; 6; 5; 6]))
);;

let fen_chc_tl = fence_as_tuple_list_of_tag tag_chc;;

test_number 22 (
(fen_chc_tl :
  Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple list ) =
 [Tuple_t.Duo
    ((Coordinate_symbol_t.Coordinate_fence_symbol
       (Coordinate_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol
           Units_length_symbol_t.Bohr)),
      [1; 1; 3; 6; 5; 6]),
     (Coordinate_symbol_t.Coordinate_fence_symbol
       (Coordinate_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol
           Units_length_symbol_t.Bohr)),
      [1; 2; 3; 6; 5; 6]))]
);;


