open Make_test_v;;

testing "Coordinate_set_body_tuple_homogeneous_cartesian_container_v with
   Coordinate_set_body_tuple_homogeneous_cartesian_container_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Coordinate_set_body_tuple_homogeneous_cartesian_container_u_any.ml";;

*)

open Coordinate_set_body_tuple_homogeneous_cartesian_container_v;;

let nam_dba = "db1points";;
let nam_dbo = "segment_S";;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let tag_coo_dbo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = nam_dbo)
	&&
      (Coordinate_symbol_v.is_coordinate_context_databox_constructor s)
    ) tag_coo_l;;

test_number 1 (
(tag_coo_dbo : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
        "segment_S")),
   [16; 1; 6; 5])
);;

(* Argument Coordinate_set_body_tuple_homogeneous_cartesian_symbol S_C *)

let pre_tag_chc (s, i) = Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol s;;
let pre_tag_chc_sof sof (s, i) = (Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol s)
    && (Coordinate_symbol_v.string_off s = sof);;

let tag_coo_chc_l = List.filter pre_tag_chc tag_coo_l;;

let sof_chc = "S_C";;

let tag_coo_chc_s_c_l = List.filter (pre_tag_chc_sof sof_chc) tag_coo_chc_l;;

let tag_chc_s_c_l = List.map
    (Tag_v.map_entity Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol) tag_coo_chc_s_c_l;;

test_number 2 (
(tag_coo_chc_s_c_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_body_symbol
       (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
         (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_homogeneous_symbol
           (Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_symbol
             (Coordinate_set_body_tuple_homogeneous_cartesian_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_constructor
               "S_C"))))),
    [2; 16; 1; 6; 5])]
);;

let tag_coo_chc = List_v.only_element_of_predicate_off_list (pre_tag_chc_sof sof_chc) tag_coo_chc_l;;

test_number 3 (
( tag_coo_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) = 
(Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
         (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_homogeneous_symbol
            (Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_symbol
               (Coordinate_set_body_tuple_homogeneous_cartesian_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_constructor
		  "S_C"))))),
 [2; 16; 1; 6; 5])
);;

let tag_chc = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol tag_coo_chc;;

test_number 4 (
(tag_chc :
  Coordinate_set_body_tuple_homogeneous_cartesian_symbol_t.coordinate_set_body_tuple_homogeneous_cartesian_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_homogeneous_cartesian_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_constructor
    "S_C",
   [2; 16; 1; 6; 5])
);;

let con_chc = container_of_tag tag_chc;;

test_number 5 (
(con_chc :
  (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.coordinate_set_fence_homogeneous_cartesian_x_symbol
   Tag_t.tag,
   Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.coordinate_set_fence_homogeneous_cartesian_y_symbol
   Tag_t.tag,
   Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.coordinate_set_fence_homogeneous_cartesian_z_symbol
   Tag_t.tag)
  Triplet_t.triplet ) =
  ((Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
     "S_C",
    [1; 2; 16; 1; 6; 5]),
   (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
     "S_C",
    [2; 2; 16; 1; 6; 5]),
   (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
     "S_C",
    [3; 2; 16; 1; 6; 5]))
);;

let tag_sco = second_containee_tag tag_chc;;

test_number 6 (
(tag_sco :
  Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.coordinate_set_fence_homogeneous_cartesian_y_symbol
  Tag_t.tag ) =
  (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
    "S_C",
   [2; 2; 16; 1; 6; 5])
);;

let fen_chc = fence_as_list_of_tag tag_chc;;

test_number 7 (
(fen_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
         (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
           (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
             (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
               "S_C"))))),
    [1; 2; 16; 1; 6; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
         (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
           (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
             (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
               "S_C"))))),
    [2; 2; 16; 1; 6; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
         (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
           (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
             (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
               "S_C"))))),
    [3; 2; 16; 1; 6; 5])]
);;

let fen_tl = fence_as_tuple_list_of_tag tag_chc;;

test_number 8 (
(fen_tl : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple list ) =
[Tuple_t.Trio
  ((Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
         (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
           (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol
             (Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_constructor
               "S_C"))))),
    [1; 2; 16; 1; 6; 5]),
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
         (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
           (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol
             (Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_constructor
               "S_C"))))),
    [2; 2; 16; 1; 6; 5]),
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol
         (Coordinate_set_fence_homogeneous_symbol_t.Coordinate_set_fence_homogeneous_cartesian_symbol
           (Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol
             (Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_constructor
               "S_C"))))),
    [3; 2; 16; 1; 6; 5]))]
);; 
