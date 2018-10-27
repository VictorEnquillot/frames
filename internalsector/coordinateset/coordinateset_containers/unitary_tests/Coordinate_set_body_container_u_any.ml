open Make_test_v;;

testing "Coordinate_set_body_container_v with
    Coordinate_set_body_container_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_set_body_container_u_any.ml";;

*)

open Coordinate_set_body_tuple_container_v;; 
     
let nam_dbo = "try_ao";;
let nam_dba = "db1points";;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let pre_tag_chc_sof sof (s, i) = 
  (Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_constructor sof=s)
;;

let sof_coo_chc = "he p 2 2";;

let tag_coo_chc = List_v.only_element_of_predicate_off_list (pre_tag_chc_sof sof_coo_chc) tag_coo_l;;

test_number 1 (
( tag_coo_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_body_symbol 
    (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
      (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
        (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
          "he p 2 2")))),
   [5; 22; 5; 6; 5])
);;

(* Argument *)

let tag_pbt = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_body_tuple_symbol_off_coordinate_symbol tag_coo_chc;;

test_number 2 (  
(tag_pbt :
 Coordinate_set_body_tuple_symbol_t.coordinate_set_body_tuple_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
    (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
      "he p 2 2"),
   [5; 22; 5; 6; 5])
);;

(** {6 Coercing Up Coordinate_set_body_tuple_coefficient Tag} *)

test_number 3 (
tag_coo_chc = coerce_up_tag tag_pbt
);;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let tag_bui_l = builder_tag_list_of_tag tag_pbt;;

test_number 4 (
(tag_bui_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
           "he p 2 2")))),
    [1; 5; 22; 5; 6; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
           "he p 2 2")))),
    [2; 5; 22; 5; 6; 5])]
);;

(** {9 Builder Tag Tuple} *)

let tag_bui_t = builder_tag_tuple_of_tag tag_pbt;;

test_number 5 (
(tag_bui_t : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
        (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
            (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
              "he p 2 2")))),
     [1; 5; 22; 5; 6; 5]),
    (Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
        (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
            (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
              "he p 2 2")))),
     [2; 5; 22; 5; 6; 5]))
);;

(** {9 Building as Builder Tag duo} *)

let bug_pbt = building_of_tag tag_pbt;;

test_number 6 (
(bug_pbt : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
            "he p 2 2")))),
     [1; 5; 22; 5; 6; 5]),
    (Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
            "he p 2 2")))),
     [2; 5; 22; 5; 6; 5]))
);;

(** {6 Container} *)

(** {9 Coercing Down Builder Tag to Containee Tag} *)

let tag_cnu_l = List.map containee_up_tag_off_builder_tag tag_bui_l;;

test_number 7 (
(tag_cnu_l :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol
  Tag_t.tag list ) =
 [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
         "he p 2 2")),
    [1; 5; 22; 5; 6; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
         "he p 2 2")),
    [2; 5; 22; 5; 6; 5])]
);;

(** {9 Coercing Up Containee_up to Builder} *)

test_number 8 (
tag_bui_l = List.map builder_tag_of_containee_up_tag tag_cnu_l
);;

(** {9 Containee_up Tag list} *)

let tag_cnu_l = containee_up_tag_list tag_pbt;;

test_number 9 (
(tag_cnu_l :
  Coordinate_set_fence_symbol_t.coordinate_set_fence_symbol
  Tag_t.tag list ) =
  [(Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
         "he p 2 2")),
    [1; 5; 22; 5; 6; 5]);
   (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
     (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
         "he p 2 2")),
    [2; 5; 22; 5; 6; 5])]
);;

(** {9 Extracting Containees off Containee_up} *)

(** {9 Container_of_tag : Containee Datastructure} *)

(** {9 Extracting Containees off Tag} *)

(** {6 Fence *)

let fen_pbt_l = fence_as_list_of_tag tag_pbt;;

test_number 10 (
(fen_pbt_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
           "he p 2 2")))),
    [1; 5; 22; 5; 6; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
       (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
           "he p 2 2")))),
    [2; 5; 22; 5; 6; 5])]
);;

let fen_pbt_t = fence_as_tuple_of_tag tag_pbt;;

test_number 11 (
( fen_pbt_t : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
            "he p 2 2")))),
     [1; 5; 22; 5; 6; 5]),
    (Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
            "he p 2 2")))),
     [2; 5; 22; 5; 6; 5]))
);;

let fen_pbt_tl = fence_as_tuple_list_of_tag tag_pbt;;

test_number 12 (
(fen_pbt_tl :
  Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
             "he p 2 2")))),
      [1; 5; 22; 5; 6; 5]),
     (Coordinate_symbol_t.Coordinate_set_symbol ( Coordinate_set_symbol_t.Coordinate_set_fence_symbol 
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
             "he p 2 2")))),
      [2; 5; 22; 5; 6; 5]))]
);;


